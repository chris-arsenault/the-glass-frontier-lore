# frozen_string_literal: true

module Lorecraft
  # A relation edge promoted to a named, addressable node because it owns prose
  # or is referenced directly (spec §7). Anonymous edges live only as event
  # effects; a RelationInstance is the same edge given an id, an interval, and
  # its own prose. The world lowers it to ordinary set/clear effects so the
  # temporal fold treats every edge uniformly.
  class RelationInstance
    attr_reader :id, :verb, :source, :target, :from_tick, :to_tick, :prose_blocks
    attr_accessor :dm

    def initialize(id:, verb:, source:, target:, timeline:, since: nil, till: nil, dm: false)
      @id = id.to_sym
      @verb = verb.to_sym
      @source = source.to_sym
      @target = target.to_sym
      @dm = dm
      @from_tick = since ? timeline.tick_for(since) : timeline.total_span.first
      @to_tick = till ? timeline.tick_for(till) : nil
      @prose_blocks = []
      @prose_order = 0
    end

    def dm? = @dm == true

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

      def prose(text, section: :main, heading: nil, at: nil, dm: false)
        @instance.prose_blocks << ProseBlock.new(
          text: text, section: section.to_sym, heading: heading,
          at_tick: at && @world.timeline.tick_for(at), dm: dm,
          order: (@instance.instance_variable_get(:@prose_order) + 1).tap do |n|
            @instance.instance_variable_set(:@prose_order, n)
          end
        )
      end
    end
  end
end
