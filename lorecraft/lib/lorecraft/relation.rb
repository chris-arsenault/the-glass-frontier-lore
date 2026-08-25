# frozen_string_literal: true

module Lorecraft
  # A relation edge promoted to a named, addressable node because it owns prose
  # or is referenced directly (spec §7). Anonymous edges live only as moment
  # effects; a RelationInstance is the same edge given an id, an interval, and
  # its own prose. The world lowers it to ordinary set/clear effects so the
  # temporal fold treats every edge uniformly.
  class RelationInstance
    include IdentityOwner

    attr_reader :id, :verb, :source, :target, :from_year, :to_year, :prose_blocks,
                :source_file, :source_line, :source_metadata, :props
    attr_accessor :dm, :source_id

    def initialize(id:, verb:, source:, target:, timeline:, since: nil, till: nil,
                   dm: false, props: {}, source_file: nil, source_line: nil)
      @id = id.to_sym
      @verb = verb.to_sym
      @source = source.to_sym
      @target = target.to_sym
      @dm = dm
      @source_file = source_file
      @source_line = source_line
      @source_id = @id.to_s
      @source_metadata = {}
      @props = props.to_h.transform_keys(&:to_sym).freeze
      @from_year = since ? timeline.year_for(since) : timeline.total_span.first
      @to_year = till ? timeline.year_for(till) : nil
      @prose_blocks = []
      @prose_order = 0
      initialize_identity
    end

    def dm? = @dm == true
    def authored_blocks = @prose_blocks

    def build(world, &block)
      Builder.new(self, world).instance_eval(&block) if block
      self
    end

    class Builder
      include Markers
      include IdentityBuilder

      def initialize(instance, world)
        @instance = instance
        @world = world
      end

      private def identity_owner = @instance

      def source_id(value) = @instance.source_id = value.to_s
      def source_metadata(value) = @instance.source_metadata.merge!(value.to_h)

      def prose(text, section: :main, heading: nil, at: nil, dm: false,
                origin: nil, drafted_by: nil, reviewed: nil)
        @instance.prose_blocks << ProseBlock.new(
          text: text, section: section.to_sym, heading: heading,
          at_year: at && @world.timeline.year_for(at), dm: dm,
          origin: origin&.to_sym, drafted_by: drafted_by&.to_sym, reviewed: reviewed,
          order: (@instance.instance_variable_get(:@prose_order) + 1).tap do |n|
            @instance.instance_variable_set(:@prose_order, n)
          end
        )
      end
    end
  end
end
