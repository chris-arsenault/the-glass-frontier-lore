# frozen_string_literal: true

module Lorecraft
  # Canonical relationship intervals derived from moment effects, named
  # relations, and prose composition. Every graph-facing query uses these rows
  # so historical state and audience filtering stay consistent.
  class Edges
    Row = Struct.new(
      :subject, :relation, :target, :from, :to, :dm, :origin, :live,
      keyword_init: true
    )

    def initialize(world, at: :now, audience: :all)
      @world = world
      @year = world.timeline.year_for(at)
      @audience = audience.to_sym
    end

    attr_reader :year

    def rows
      @rows ||= (effect_intervals + embed_intervals)
                .select { |row| visible?(row) }
                .sort_by { |row| [row.subject.to_s, row.relation.to_s, row.target.to_s, row.from] }
    end

    def touching(id)
      id = id.to_sym
      rows.select { |row| row.subject == id || row.target == id }
    end

    private

    def effect_intervals
      open = {}
      result = []
      @world.all_effects.each do |entry|
        effect = entry[:effect]
        next unless effect.relation
        next if @audience == :player && entry[:dm]

        key = [effect.subject, effect.relation, effect.target]
        case effect.verb
        when :set
          open[key] ||= { year: entry[:year], dm: entry[:dm], origin: entry[:source] }
        when :clear
          if effect.target
            opened = open.delete(key)
            result << close(key, opened, entry[:year]) if opened
          else
            open.keys.select { |item| item[0] == effect.subject && item[1] == effect.relation }.each do |item|
              result << close(item, open.delete(item), entry[:year])
            end
          end
        end
      end
      open.each { |key, opened| result << close(key, opened, nil) }
      result
    end

    def embed_intervals
      @world.embed_edges(audience: @audience).map do |subject, relation, target|
        row(subject, relation, target, @world.timeline.total_span.begin, nil, false, subject)
      end
    end

    def close(key, opened, to_year)
      row(key[0], key[1], key[2], opened[:year], to_year, opened[:dm], opened[:origin])
    end

    def row(subject, relation, target, from, to, dm, origin)
      Row.new(
        subject: subject,
        relation: relation,
        target: target,
        from: from,
        to: to,
        dm: dm == true,
        origin: origin,
        live: from <= @year && (to.nil? || @year < to),
      )
    end

    def visible?(row)
      return true unless @audience == :player

      [row.subject, row.target].none? do |id|
        node = @world[id]
        node.respond_to?(:dm?) && node.dm?
      end
    end
  end
end
