# frozen_string_literal: true

require "set"

module Lorecraft
  # Typed-edge coverage for the article-free game-world graph. Veiled entries
  # remain in raw totals but do not fail the established-entry degree floor.
  class Topology
    FLOOR = 3
    TIERS = %i[mythic renowned recognized marginal forgotten].freeze

    def initialize(world)
      @world = world
    end

    def data
      @data ||= begin
        entities = @world.game_world_entities
        relationships = @world.game_world_relationships
        world_degree = degree_for(relationships.reject { |_s, verb, _t| bookkeeping?(verb) })
        pending = pending_counts(entities)
        structural, ranked = entities.partition(&:structural?)
        developed = ranked.reject(&:veiled?)
        thin = developed.select { |entity| world_degree[entity.id] < FLOOR }

        {
          scope: "game_world",
          articles_excluded: @world.entities.values.count(&:article?),
          entities: entities.size,
          veiled_entities: ranked.count(&:veiled?),
          typed_edges: relationships.size,
          bookkeeping_edges: relationships.count { |_s, verb, _t| bookkeeping?(verb) },
          pending_edges: pending.values.sum,
          degree_by_prominence: degree_rows(ranked, world_degree),
          structural: degree_summary(structural, world_degree),
          established_degree_floor: FLOOR,
          established_entries: developed.size,
          thin_entries: thin.sort_by { |entity| [world_degree[entity.id], entity.id.to_s] }.map do |entity|
            {
              id: entity.id,
              title: entity.title,
              kind: entity.kind,
              prominence: entity.prominence,
              degree: world_degree[entity.id],
              pending: pending[entity.id],
            }
          end,
        }
      end
    end

    def report
      result = data
      out = [
        "=== Topology: game world ===",
        "  entities: #{result[:entities]} (#{result[:veiled_entities]} veiled; " \
          "#{result[:articles_excluded]} articles excluded)",
        "  typed edges: #{result[:typed_edges]} (#{result[:bookkeeping_edges]} bookkeeping)",
        "  pending on futures: #{result[:pending_edges]}",
        "",
        "  established world degree by prominence   n    min   median    max",
      ]
      result[:degree_by_prominence].each { |row| out << format_row(row) }
      out << format_row(result[:structural].merge(label: "structural")) if result[:structural][:count].positive?
      out << ""
      out << "  established entries under #{result[:established_degree_floor]} world edges: " \
             "#{result[:thin_entries].size}/#{result[:established_entries]}"
      result[:thin_entries].each do |entry|
        wait = entry[:pending].positive? ? " +#{entry[:pending]} future" : ""
        out << format(
          "    %d%s  %-11s %-20s %s",
          entry[:degree], wait, entry[:prominence] || "-", entry[:kind], entry[:id]
        )
      end
      out.join("\n")
    end

    private

    def degree_for(relationships)
      relationships.each_with_object(Hash.new(0)) do |(subject, _verb, target), degree|
        degree[subject] += 1
        degree[target] += 1
      end
    end

    def pending_counts(entities)
      ids = entities.map(&:id).to_set
      @world.pending_edges.each_with_object(Hash.new(0)) do |(id, _name), counts|
        counts[id] += 1 if ids.include?(id)
      end
    end

    def degree_rows(entities, degree)
      grouped = entities.reject(&:veiled?).group_by { |entity| entity.prominence&.to_sym }
      (TIERS + [nil]).filter_map do |tier|
        members = grouped[tier]
        degree_summary(members, degree).merge(label: tier ? tier.to_s : "(undeclared)") if members
      end
    end

    def degree_summary(entities, degree)
      values = Array(entities).map { |entity| degree[entity.id] }.sort
      {
        count: values.size,
        minimum: values.first,
        median: values.empty? ? nil : values[values.size / 2],
        maximum: values.last,
      }
    end

    def format_row(row)
      format(
        "    %-22s %4d   %4s   %6s   %4s",
        row[:label], row[:count], row[:minimum] || "-", row[:median] || "-", row[:maximum] || "-"
      )
    end

    def bookkeeping?(verb) = Edges::BOOKKEEPING_RELATIONS.include?(verb)
  end
end
