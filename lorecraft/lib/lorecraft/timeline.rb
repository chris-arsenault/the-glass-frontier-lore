# frozen_string_literal: true

module Lorecraft
  # The ordered list of eras with FIXED boundaries. Every (era, year) pair maps
  # to a single absolute integer tick, so the whole world shares one comparable
  # clock. Era boundaries are locked by design (the spec chose fixed over fuzzy).
  #
  #   timeline do
  #     era :the_drift,        starts: 0, length: 100   # ticks 0..99
  #     era :the_long_quiet,   length: 60               # ticks 100..159
  #     era :the_reconnection, length: 40               # ticks 160..199
  #     now era: :the_reconnection, year: 14            # tick 174
  #   end
  class Timeline
    Era = Struct.new(:name, :start_tick, :length, keyword_init: true) do
      # Half-open interval [start_tick, end_tick).
      def end_tick = start_tick + length
      def covers?(tick) = tick >= start_tick && tick < end_tick
    end

    attr_reader :eras, :now_tick

    def initialize
      @eras = []
      @by_name = {}
      @now_tick = nil
    end

    # Declare the next era. `starts:` is optional — if omitted, the era begins
    # where the previous one ended (the common case). The first era must have a
    # known start (defaults to 0).
    def era(name, length:, starts: nil)
      name = name.to_sym
      raise DefinitionError, "duplicate era #{name}" if @by_name.key?(name)
      raise DefinitionError, "era #{name} length must be positive" unless length.positive?

      start_tick = starts || (@eras.empty? ? 0 : @eras.last.end_tick)
      if !@eras.empty? && starts && starts < @eras.last.end_tick
        raise DefinitionError, "era #{name} starts (#{starts}) before previous era ends (#{@eras.last.end_tick})"
      end

      e = Era.new(name: name, start_tick: start_tick, length: length)
      @eras << e
      @by_name[name] = e
      e
    end

    # Set the default query time for the world. Accepts the same shape as any
    # other point: `now era: :x, year: n` or `now tick: n`.
    def now(era: nil, year: 0, tick: nil)
      @now_tick = tick || resolve(era: era, year: year)
    end

    # Convert a point to an absolute tick. A point is either an Integer (already
    # a tick), `{era:, year:}`, `{tick:}`, or `:now`.
    def tick_for(point)
      case point
      when Integer then point
      when :now
        raise DefinitionError, "`now` was never set in the timeline" if @now_tick.nil?
        @now_tick
      when Hash
        return point[:tick] if point[:tick]
        resolve(era: point[:era], year: point.fetch(:year, 0))
      else
        raise DefinitionError, "cannot interpret time point: #{point.inspect}"
      end
    end

    # The era covering a given absolute tick (or nil if out of range).
    def era_at(tick)
      @eras.find { |e| e.covers?(tick) }
    end

    def known_era?(name) = @by_name.key?(name&.to_sym)

    def total_span = @eras.empty? ? (0...0) : (@eras.first.start_tick...@eras.last.end_tick)

    private

    def resolve(era:, year:)
      e = @by_name[era&.to_sym] or
        raise DefinitionError, "unknown era #{era.inspect} (known: #{@by_name.keys.join(', ')})"
      tick = e.start_tick + year
      unless e.covers?(tick)
        raise DefinitionError,
              "#{era.inspect} year #{year} → tick #{tick} falls outside era [#{e.start_tick}, #{e.end_tick})"
      end
      tick
    end
  end
end
