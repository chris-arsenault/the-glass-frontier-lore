# frozen_string_literal: true

module Lorecraft
  # The ordered list of eras with FIXED boundaries. Every (era, year) pair maps
  # to a single absolute integer year, so the whole world shares one comparable
  # clock. Era boundaries are locked by design (the spec chose fixed over fuzzy).
  #
  #   timeline do
  #     era :the_drift,        starts: 0, length: 100   # years 0..99
  #     era :the_long_quiet,   length: 60               # years 100..159
  #     era :the_reconnection, length: 40               # years 160..199
  #     now era: :the_reconnection, year: 14            # year 174
  #   end
  class Timeline
    Era = Struct.new(:name, :start_year, :length, :title, :description, keyword_init: true) do
      # Half-open interval [start_year, end_year).
      def end_year = start_year + length
      def covers?(year) = year >= start_year && year < end_year
    end

    attr_reader :eras, :now_year

    def initialize
      @eras = []
      @by_name = {}
      @now_year = nil
    end

    # Declare the next era. `starts:` is optional — if omitted, the era begins
    # where the previous one ended (the common case). The first era must have a
    # known start (defaults to 0).
    def era(name, length:, starts: nil, title: nil, description: nil)
      name = name.to_sym
      raise DefinitionError, "duplicate era #{name}" if @by_name.key?(name)
      raise DefinitionError, "era #{name} length must be positive" unless length.positive?

      start_year = starts || (@eras.empty? ? 0 : @eras.last.end_year)
      if !@eras.empty? && starts && starts < @eras.last.end_year
        raise DefinitionError, "era #{name} starts (#{starts}) before previous era ends (#{@eras.last.end_year})"
      end

      e = Era.new(name: name, start_year: start_year, length: length, title: title, description: description)
      @eras << e
      @by_name[name] = e
      e
    end

    # Set the default query time for the world. Accepts the same shape as any
    # other point: `now era: :x, year: n` or `now year: n`.
    def now(era: nil, year: nil)
      @now_year = era ? resolve(era: era, offset: year || 0) : year
    end

    # Convert a point to an absolute year. A point is either an Integer (already
    # a year), `{era:, year:}`, `{year:}`, or `:now`.
    def year_for(point)
      case point
      when Integer then point
      when :now
        raise DefinitionError, "`now` was never set in the timeline" if @now_year.nil?
        @now_year
      when Hash
        return resolve(era: point[:era], offset: point.fetch(:year, 0)) if point[:era]
        return point[:year] if point[:year]
        raise DefinitionError, "cannot interpret time point: #{point.inspect}"
      else
        raise DefinitionError, "cannot interpret time point: #{point.inspect}"
      end
    end

    # The era covering a given absolute year (or nil if out of range).
    def era_at(year)
      @eras.find { |e| e.covers?(year) }
    end

    def known_era?(name) = @by_name.key?(name&.to_sym)

    def era_named(name) = @by_name[name&.to_sym]

    def era_start(name) = @by_name[name&.to_sym]&.start_year

    def previous_era(name)
      index = @eras.index { |era| era.name == name&.to_sym }
      index&.positive? ? @eras[index - 1] : nil
    end

    def next_era(name)
      index = @eras.index { |era| era.name == name&.to_sym }
      index && index < @eras.length - 1 ? @eras[index + 1] : nil
    end

    def total_span = @eras.empty? ? (0...0) : (@eras.first.start_year...@eras.last.end_year)

    private

    def resolve(era:, offset:)
      e = @by_name[era&.to_sym] or
        raise DefinitionError, "unknown era #{era.inspect} (known: #{@by_name.keys.join(', ')})"
      year = e.start_year + offset
      unless e.covers?(year)
        raise DefinitionError,
              "#{era.inspect}+#{offset} → year #{year} falls outside era [#{e.start_year}, #{e.end_year})"
      end
      year
    end
  end
end
