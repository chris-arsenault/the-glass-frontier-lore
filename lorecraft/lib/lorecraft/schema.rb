# frozen_string_literal: true

module Lorecraft
  # The compiler authority. Declares what kinds of entity exist, what relation
  # types are legal (and their rules), which effect verbs moments may use, and
  # the controlled vocabularies the repository enforces (tags, section headings,
  # prominence levels). Every declaration and every effect is validated against
  # this.
  class Schema
    KindDef = Struct.new(:name, :wiki, :facts, :subkinds, keyword_init: true)
    SubkindDef = Struct.new(:name, :label, :facts, keyword_init: true)
    FactDef = Struct.new(
      :name, :label, :source, :type, :expected, :relation, :direction,
      :cardinality, :from, :calculate, :order,
      keyword_init: true
    ) do
      def expected? = expected == true
    end

    RelationDef = Struct.new(
      :name, :category, :temporal, :symmetric, :inverse,
      :domain, :range, :cardinality, :exclusive_with, :description,
      keyword_init: true
    )

    # Static attributes are declared on an entity and never touched by moment
    # effects. Dynamic state is the opposite: only ever changed by effects.
    # These are the known static attribute names; an effect targeting one is a
    # compile error (spec §8.3). Everything else an effect sets is dynamic.
    # `structural` marks an entity everything points at for bookkeeping rather
    # than because of a world fact — an era, a period every entry is stamped
    # with. It is orthogonal to prominence: the Holding is a household name and
    # a temporal bin at once, and mixing its fan-in into the prominence tiers
    # makes the whole distribution unreadable. Topology reports these separately
    # and `web` drops them at every cut.
    DEFAULT_STATIC_ATTRS = %i[
      title tags prominence alias region narrative_role status reviewed
      species culture era date founded registry prominence_xrefs structural subkind
    ].freeze

    PROMINENCE_LEVELS = %i[forgotten marginal recognized renowned mythic].freeze
    FACT_TYPES = %i[text integer year entity entities].freeze
    FACT_DIRECTIONS = %i[outgoing incoming].freeze
    FACT_CARDINALITIES = %i[one many].freeze
    FACT_CALCULATIONS = %i[elapsed_years first_moment_year].freeze

    attr_reader :kinds, :relations, :effects, :tags, :section_headings,
                :static_attrs, :prominence_levels

    def initialize
      @kinds = {}            # kind(sym) => KindDef; wiki=false means DM-structural
      @relations = {}        # name(sym) => RelationDef
      @effects = {}          # verb(sym) => description
      @tags = {}             # tag(sym) => description
      @section_headings = {} # heading(sym) => description (canonical prose sections)
      @banned_phrases = {}   # phrase(downcased) => why this world refuses it
      @static_attrs = DEFAULT_STATIC_ATTRS.dup
      @prominence_levels = PROMINENCE_LEVELS.dup
      @require_explicit_subkinds = false
    end

    # Declare one or more entity kinds. `wiki: false` marks a kind as structural
    # / DM-only (themes, threads, loops, the dm kind) — excluded from the player
    # wiki render.
    def entity_type(*names, wiki: true, &block)
      if block && names.size != 1
        raise DefinitionError, "an entity_type block must name exactly one kind"
      end

      names.each do |name|
        name = name.to_sym
        raise DefinitionError, "duplicate entity kind #{name}" if @kinds.key?(name)

        default_subkind = SubkindDef.new(name: name, label: humanize(name), facts: [])
        @kinds[name] = KindDef.new(
          name: name, wiki: wiki, facts: [], subkinds: { name => default_subkind }
        )
      end
      KindBuilder.new(self, names.first).instance_eval(&block) if block
    end
    alias entity_types entity_type

    def kind?(name) = @kinds.key?(name&.to_sym)
    def wiki_kind?(name) = @kinds[name&.to_sym]&.wiki == true
    def require_explicit_subkinds! = @require_explicit_subkinds = true
    def explicit_subkinds_required? = @require_explicit_subkinds

    def extend_kind(name, &block)
      name = name.to_sym
      raise DefinitionError, "cannot extend unknown entity kind #{name}" unless kind?(name)

      KindBuilder.new(self, name).instance_eval(&block) if block
    end

    def subkind?(kind, name) = @kinds[kind&.to_sym]&.subkinds&.key?(name&.to_sym) == true
    def subkind_def(kind, name) = @kinds[kind&.to_sym]&.subkinds&.[](name&.to_sym)
    def subkinds_for(kind) = @kinds[kind&.to_sym]&.subkinds || {}

    def add_subkind(kind, name, label: nil)
      kind = kind.to_sym
      name = name.to_sym
      definition = @kinds.fetch(kind)
      if definition.subkinds.key?(name) && name != kind
        raise DefinitionError, "duplicate subkind #{name} on entity kind #{kind}"
      end

      definition.subkinds[name] ||= SubkindDef.new(
        name: name, label: label || humanize(name), facts: []
      )
    end

    def facts_for(kind, subkind: nil, custom: [])
      definition = @kinds[kind&.to_sym]
      return [] unless definition

      subkind ||= kind
      inherited = definition.facts + Array(definition.subkinds[subkind&.to_sym]&.facts)
      compose_facts(inherited + Array(custom))
    end

    def fact_def(kind, name, subkind: nil, custom: [])
      facts_for(kind, subkind: subkind, custom: custom)
        .find { |definition| definition.name == name&.to_sym }
    end

    def add_fact(kind, definition, subkind: nil)
      kind_definition = @kinds.fetch(kind.to_sym)
      facts = subkind ? kind_definition.subkinds.fetch(subkind.to_sym).facts : kind_definition.facts
      if facts.any? { |existing| existing.name == definition.name }
        scope = subkind ? "subkind #{subkind}" : "entity kind #{kind}"
        raise DefinitionError, "duplicate fact #{definition.name} on #{scope}"
      end

      definition.order = facts.size + 1
      facts << definition
    end

    # Declare a relation type. Mirrors the repository taxonomy (category +
    # temporal) and adds the optional structural rules the spec asks for
    # (symmetric/inverse/domain/range/cardinality/exclusivity), validated only
    # when present so the repo's looser taxonomy still loads.
    def relation(name, category: :general, temporal: false, symmetric: false,
                 inverse: nil, domain: nil, range: nil, cardinality: :many,
                 exclusive_with: nil, description: nil)
      name = name.to_sym
      raise DefinitionError, "duplicate relation #{name}" if @relations.key?(name)

      @relations[name] = RelationDef.new(
        name: name, category: category, temporal: temporal, symmetric: symmetric,
        inverse: inverse&.to_sym, domain: arr(domain), range: arr(range),
        cardinality: cardinality, exclusive_with: arr(exclusive_with),
        description: description
      )
    end

    def relation?(name) = @relations.key?(name&.to_sym)
    def relation_def(name) = @relations[name&.to_sym]

    def effect(verb, description = nil) = @effects[verb.to_sym] = description
    def effect?(verb) = @effects.key?(verb&.to_sym)

    def tag(name, description = nil) = @tags[name.to_sym] = description
    def tag?(name) = @tags.key?(name&.to_sym)

    def section_heading(name, description = nil) = @section_headings[name.to_sym] = description

    # Prose this world will not contain, with the reason it will not. A world
    # acquires these by catching itself: a phrase that turned up four times in a
    # first draft is a habit, and a habit that survives review becomes the house
    # style whether anyone chose it or not.
    #
    #   ban_phrase "which is the point", "narrator verdict — state the fact and stop"
    def ban_phrase(text, reason) = @banned_phrases[text.to_s.downcase] = reason

    attr_reader :banned_phrases

    # Who drafted a block that does not say. A statement about the corpus as a
    # whole — declaring `:ai` says "unless a block claims otherwise, a machine
    # wrote it", which is true of a world drafted in assisted sessions and saves
    # asserting it on every block. Provenance applies it; the block's own field
    # stays literal, so `declared?` still means the author said so.
    def drafted_by_default(who) = @default_drafter = who&.to_sym

    attr_reader :default_drafter
    def section_heading?(name) = @section_headings.empty? || @section_headings.key?(name&.to_sym)

    def static_attr?(name) = @static_attrs.include?(name&.to_sym)
    def declare_static_attr(*names) = names.each { |n| @static_attrs << n.to_sym }

    def prominence?(level) = @prominence_levels.include?(level&.to_sym)

    private

    def compose_facts(definitions)
      definitions.each_with_object([]) do |definition, composed|
        existing = composed.index { |item| item.name == definition.name }
        existing ? composed[existing] = definition : composed << definition
      end
    end

    def humanize(value)
      value.to_s.split("_").map(&:capitalize).join(" ")
    end

    def arr(v)
      return nil if v.nil?
      Array(v).map(&:to_sym)
    end

    class KindBuilder
      def initialize(schema, kind, subkind: nil)
        @schema = schema
        @kind = kind.to_sym
        @subkind = subkind&.to_sym
      end


      def subkind(name, label: nil, &block)
        definition = @schema.add_subkind(@kind, name, label: label)
        KindBuilder.new(@schema, @kind, subkind: definition.name).instance_eval(&block) if block
      end

      def field(name, type: :text, label: nil, expected: true)
        type = type.to_sym
        unless FACT_TYPES.include?(type)
          raise DefinitionError, "fact #{name} on #{@kind} has unknown type #{type}"
        end

        add(name, label: label, source: :attribute, type: type, expected: expected)
      end

      def relation_field(name, relation:, direction: :outgoing, cardinality: :many,
                         label: nil, expected: true)
        relation = relation.to_sym
        direction = direction.to_sym
        cardinality = cardinality.to_sym
        raise DefinitionError, "fact #{name} on #{@kind} uses unknown relation #{relation}" \
          unless @schema.relation?(relation)
        raise DefinitionError, "fact #{name} on #{@kind} has unknown direction #{direction}" \
          unless FACT_DIRECTIONS.include?(direction)
        raise DefinitionError, "fact #{name} on #{@kind} has unknown cardinality #{cardinality}" \
          unless FACT_CARDINALITIES.include?(cardinality)

        add(
          name, label: label, source: :relation, type: cardinality == :one ? :entity : :entities,
          expected: expected, relation: relation, direction: direction, cardinality: cardinality
        )
      end

      def calculated(name, from: nil, calculate:, type: :integer, label: nil, expected: false)
        calculate = calculate.to_sym
        type = type.to_sym
        unless FACT_CALCULATIONS.include?(calculate)
          raise DefinitionError, "fact #{name} on #{@kind} has unknown calculation #{calculate}"
        end
        unless FACT_TYPES.include?(type)
          raise DefinitionError, "fact #{name} on #{@kind} has unknown type #{type}"
        end
        if calculate == :elapsed_years && from.nil?
          raise DefinitionError, "fact #{name} on #{@kind} needs a source fact"
        end
        if from && !@schema.fact_def(@kind, from, subkind: @subkind)
          raise DefinitionError, "fact #{name} on #{@kind} uses unknown source fact #{from}"
        end

        add(
          name, label: label, source: :calculated, type: type, expected: expected,
          from: from&.to_sym, calculate: calculate
        )
      end

      private

      def add(name, **attributes)
        name = name.to_sym
        label = attributes.delete(:label) || name.to_s.split("_").map(&:capitalize).join(" ")
        @schema.add_fact(
          @kind,
          FactDef.new(name: name, label: label, **attributes),
          subkind: @subkind
        )
      end
    end
  end
end
