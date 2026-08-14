# frozen_string_literal: true

require_relative "markers"

module Lorecraft
  # One unresolved judgment about an entry. `on:` optionally names the passage it
  # concerns, for a question about one part of a long entry.
  Question = Struct.new(:text, :raised, :on, :order, keyword_init: true)

  # A node in the world: a stable symbol id, a kind, static attributes, owned
  # prose, and (resolved on demand) dynamic state. Dynamic state is never stored
  # here — it is the fold of moments, computed by the Resolver. The entity only
  # holds what is constant: who it is, not what has happened to it.
  class Entity
    attr_reader :id, :kind, :static_attrs, :fact_values, :custom_fact_defs,
                :content_blocks, :derives, :source_file, :source_line, :log_entries, :questions
    attr_accessor :visibility, :public_entry, :index_note

    def initialize(id:, kind:, source_file: nil, source_line: nil)
      @id = id.to_sym
      @kind = kind.to_sym
      @source_file = source_file
      @source_line = source_line
      @static_attrs = {}
      @fact_values = {}
      @custom_fact_defs = []
      @content_blocks = []
      @log_entries = []
      @questions = []
      @derives = {}
      @visibility = :public
      @public_entry = nil
      @index_note = nil
    end

    def dm? = @visibility == :dm

    def title = @static_attrs[:title] || @id.to_s.split("_").map(&:capitalize).join(" ")
    def tags = Array(@static_attrs[:tags]).map(&:to_sym)
    def prominence = @static_attrs[:prominence]
    def subkind = (@static_attrs[:subkind] || @kind).to_sym
    def authored_blocks = @content_blocks
    def prose_blocks = @content_blocks.select(&:prose?)
    def card_blocks = @content_blocks.select(&:cards?)

    # Referenced for bookkeeping rather than for a world fact — see
    # Schema::DEFAULT_STATIC_ATTRS. Orthogonal to prominence.
    def structural? = @static_attrs[:structural] == true

    def [](key) = @static_attrs[key.to_sym]

    # Build via a block evaluated against an EntityBuilder, which provides the
    # authoring surface (name, tags, prominence, prose, derive, dm!, ...).
    def build(world, &block)
      Builder.new(self, world).instance_eval(&block) if block
      self
    end

    # The authoring DSL for an entity body. Unknown bare calls become static
    # attributes, so `name "X"`, `region :y`, `status :complete` all just work
    # without per-field methods.
    class Builder
      include Markers

      def initialize(entity, world)
        @entity = entity
        @world = world
        @content_order = 0
      end

      # --- common static attributes (explicit for clarity / validation) -----

      # When a human last read this entry, for all of its blocks — a block that
      # was read separately overrides with its own `reviewed:`. Entry-level
      # because that is the unit a person actually reads, and one line beats
      # repeating the same date on a dozen blocks.
      def reviewed(date) = set(:reviewed, date)

      def name(value)      = set(:title, value)
      def title(value)     = set(:title, value)
      def tags(*values)    = set(:tags, values.flatten.map(&:to_sym))
      def prominence(value) = set(:prominence, value.to_sym)
      def aka(*values)
        v = values.flatten
        set(:alias, v.size == 1 ? v.first : v)
      end
      def status(value)    = set(:status, value.to_sym)
      def region(value)    = set(:region, value)
      def narrative_role(value) = set(:narrative_role, value.to_sym)
      def subkind(value) = set(:subkind, value.to_sym)

      # Mark this entity DM-only. `public_entry:` names the player-facing entity
      # this hidden truth extends.
      def dm!(public_entry: nil)
        @entity.visibility = :dm
        @entity.public_entry = public_entry&.to_sym
      end

      # Optional freeform note for the per-type index "Notes" column.
      def index_note(text) = @entity.index_note = text

      # A derived, entity-oriented value recomputed at query time (never stored).
      def derive(name, &block) = @entity.derives[name.to_sym] = block

      # Owned prose. The text comes first (so heredocs read naturally), with
      # optional section/era/dm scoping:
      #   prose <<~MD ... MD
      #   prose(<<~MD, section: :history, at: { era: :reconnection, year: 2 })
      def prose(text, section: :main, heading: nil, at: nil, dm: false,
                origin: nil, drafted_by: nil, reviewed: nil)
        @entity.content_blocks << ProseBlock.new(
          text: text, section: section.to_sym, heading: heading,
          at_year: at && @world.timeline.year_for(at),
          dm: dm, order: (@content_order += 1),
          origin: origin&.to_sym, drafted_by: drafted_by&.to_sym, reviewed: reviewed
        )
      end

      # An authored set of onward links. Unlike typed relationships, these are
      # editorial choices: their heading, order and descriptions appear exactly
      # as written.
      def cards(heading, section: :relationships, at: nil, dm: false,
                origin: nil, drafted_by: nil, reviewed: nil, &block)
        list = CardListBuilder.new
        list.instance_eval(&block) if block
        @entity.content_blocks << CardBlock.new(
          cards: list.items, section: section.to_sym, heading: heading,
          at_year: at && @world.timeline.year_for(at),
          dm: dm, order: (@content_order += 1),
          origin: origin&.to_sym, drafted_by: drafted_by&.to_sym, reviewed: reviewed
        )
      end

      # Set one attribute-backed fact declared for this entity's kind. The
      # explicit form is available when a fact name collides with another DSL
      # method; ordinary facts can use their name directly (`born 2012`).
      def fact(name, value)
        definition = @world.schema.fact_def(
          @entity.kind, name, subkind: @entity.subkind, custom: @entity.custom_fact_defs
        )
        raise DefinitionError, "unknown fact #{name} on entity kind #{@entity.kind}" unless definition
        unless definition.source == :attribute
          raise DefinitionError, "fact #{name} on #{@entity.kind} is derived and cannot be set"
        end

        @entity.fact_values[definition.name] = value
      end

      # One reader fact that applies only to this entry. Repeated facts belong
      # on the kind or subkind instead, where other entries can inherit them.
      def custom_fact(name, value, type: nil, label: nil)
        name = name.to_sym
        if @world.schema.fact_def(
          @entity.kind, name, subkind: @entity.subkind, custom: @entity.custom_fact_defs
        )
          raise DefinitionError, "custom fact #{name} duplicates an inherited fact on #{@entity.id}"
        end

        type = (type || infer_fact_type(value)).to_sym
        unless Schema::FACT_TYPES.include?(type)
          raise DefinitionError, "custom fact #{name} on #{@entity.id} has unknown type #{type}"
        end

        definition = Schema::FactDef.new(
          name: name,
          label: label || name.to_s.split("_").map(&:capitalize).join(" "),
          source: :attribute,
          type: type,
          expected: false,
          order: @entity.custom_fact_defs.size + 1
        )
        @entity.custom_fact_defs << definition
        @entity.fact_values[name] = value
      end

      # A note about the ENTRY, not about the world: why a fact changed, what a
      # correction was based on, which decision settled a name. Compiled and
      # queryable, rendered on no page a reader sees — the alternative is process
      # metadata in prose ("this was corrected in August"), which is out-of-world
      # and the most common register failure in this corpus.
      #
      #   log "2026-08-08 — was 2438; predates the timeline extension"
      def log(entry)
        @entity.log_entries << entry.to_s
      end

      # What is unresolved about this entry. The counterpart to `log`: history is
      # settled, a question is not.
      #
      #   question "Coremark is the only named operator here; the Shear needs
      #             several", raised: "2026-03-20"
      #
      # Placement is the anchor — write it next to the prose it concerns and it
      # cannot come unstuck, which is what happens to a comment stored elsewhere
      # and matched back by quoting the text. Resolve one by deleting it, and
      # `log` the decision if the reasoning is worth keeping.
      def question(text, raised: nil, on: nil)
        @entity.questions << Question.new(text: text.to_s, raised: raised, on: on,
                                          order: (@question_order = (@question_order || 0) + 1))
      end

      # Any other bare call sets a static attribute of that name.
      def method_missing(name, *args)
        return super if args.empty?
        definition = @world.schema.fact_def(
          @entity.kind, name, subkind: @entity.subkind, custom: @entity.custom_fact_defs
        )
        return fact(name, args.size == 1 ? args.first : args) if definition

        set(name, args.size == 1 ? args.first : args)
      end

      def respond_to_missing?(*) = true

      private

      def infer_fact_type(value)
        case value
        when Integer then :integer
        when Symbol then :entity
        when Array then :entities
        else :text
        end
      end

      def set(key, value)
        @entity.static_attrs[key.to_sym] = value
      end
    end
  end
end
