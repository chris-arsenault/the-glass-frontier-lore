# frozen_string_literal: true

require_relative "markers"

module Lorecraft
  # A node in the world: a stable symbol id, a kind, static attributes, owned
  # prose, and (resolved on demand) dynamic state. Dynamic state is never stored
  # here — it is the fold of moments, computed by the Resolver. The entity only
  # holds what is constant: who it is, not what has happened to it.
  class Entity
    attr_reader :id, :kind, :static_attrs, :prose_blocks, :derives, :source_file
    attr_accessor :visibility, :public_entry, :index_note

    def initialize(id:, kind:, source_file: nil)
      @id = id.to_sym
      @kind = kind.to_sym
      @source_file = source_file
      @static_attrs = {}
      @prose_blocks = []
      @derives = {}
      @visibility = :public
      @public_entry = nil
      @index_note = nil
    end

    def dm? = @visibility == :dm

    def title = @static_attrs[:title] || @id.to_s.split("_").map(&:capitalize).join(" ")
    def tags = Array(@static_attrs[:tags]).map(&:to_sym)
    def prominence = @static_attrs[:prominence]

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
        @prose_order = 0
      end

      # --- common static attributes (explicit for clarity / validation) -----

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
      def prose(text, section: :main, heading: nil, at: nil, dm: false)
        @entity.prose_blocks << ProseBlock.new(
          text: text, section: section.to_sym, heading: heading,
          at_year: at && @world.timeline.year_for(at),
          dm: dm, order: (@prose_order += 1)
        )
      end

      # Any other bare call sets a static attribute of that name.
      def method_missing(name, *args)
        return super if args.empty?
        set(name, args.size == 1 ? args.first : args)
      end

      def respond_to_missing?(*) = true

      private

      def set(key, value)
        @entity.static_attrs[key.to_sym] = value
      end
    end
  end
end
