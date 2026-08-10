# frozen_string_literal: true

module Lorecraft
  # A relation edge promoted to a named, addressable node because it owns prose
  # or is referenced directly (spec §7). Anonymous edges live only as moment
  # effects; a RelationInstance is the same edge given an id, an interval, and
  # its own prose. The world lowers it to ordinary set/clear effects so the
  # temporal fold treats every edge uniformly.
  class RelationInstance
    attr_reader :id, :verb, :source, :target, :from_year, :to_year, :prose_blocks
    attr_accessor :dm

    def initialize(id:, verb:, source:, target:, timeline:, since: nil, till: nil, dm: false)
      @id = id.to_sym
      @verb = verb.to_sym
      @source = source.to_sym
      @target = target.to_sym
      @dm = dm
      @from_year = since ? timeline.year_for(since) : timeline.total_span.first
      @to_year = till ? timeline.year_for(till) : nil
      @prose_blocks = []
      @prose_order = 0
    end

    def dm? = @dm == true
    def authored_blocks = @prose_blocks

    def build(world, &block)
      Builder.new(self, world).instance_eval(&block) if block
      self
    end

    class Builder
      include Markers

      def initialize(instance, world)
        @instance = instance
        @world = world
      end

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
