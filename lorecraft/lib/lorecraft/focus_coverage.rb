# frozen_string_literal: true

require "set"
require_relative "edges"

module Lorecraft
  # Direct focus choices for each canon-approved chronicle location. The query
  # matches the picker boundary: one live, public, non-bookkeeping graph hop.
  class FocusCoverage
    DEFAULT_MINIMUM = 10

    def initialize(world, at: :now, minimum: DEFAULT_MINIMUM, role: :chronicle_location)
      @world = world
      @year = world.timeline.year_for(at)
      @minimum = minimum
      @role = role.to_sym
    end

    attr_reader :year, :minimum, :role

    def data
      @data ||= begin
        rows = active_rows
        locations = playable_locations
        coverage = locations.map { |location| location_row(location, rows) }
        memberships = veiled_memberships(coverage)
        {
          generated_at_year: @year,
          role: @role,
          minimum: @minimum,
          playable_locations: coverage.size,
          satisfied_locations: coverage.count { |row| row[:total] >= @minimum },
          missing_choices: coverage.sum { |row| row[:deficit] },
          locations: coverage,
          veiled_membership_distribution: memberships.group_by { |row| row[:location_count] }
                                                    .transform_values(&:size).sort.to_h,
          veiled_kind_distribution: memberships.group_by { |row| row[:kind] }
                                               .transform_values(&:size).sort.to_h,
          veiled_subkind_distribution: memberships.group_by { |row| row[:kind] }.sort.to_h.transform_values do |rows|
            rows.group_by { |row| row[:subkind] }.transform_values(&:size).sort.to_h
          end,
          veiled_memberships: memberships,
          cross_location_veiled_entries: memberships.count { |row| row[:spans_unlinked_locations] },
          shared_location_pairs: shared_location_pairs(memberships),
        }
      end
    end

    def report
      result = data
      out = [
        "=== Chronicle focus: one live hop ===",
        "  playable locations: #{result[:playable_locations]}",
        "  at least #{result[:minimum]} choices: #{result[:satisfied_locations]}/#{result[:playable_locations]}",
        "  missing choices: #{result[:missing_choices]}",
        "",
        "  location                    established  veiled  total  deficit",
      ]
      result[:locations].each do |row|
        out << format(
          "    %-27s %7d %7d %6d %8d",
          row[:id], row[:established], row[:veiled], row[:total], row[:deficit]
        )
      end
      out << ""
      distribution = result[:veiled_membership_distribution]
      out << "  veiled links to playable locations: " +
             (distribution.empty? ? "none" : distribution.map { |count, entries| "#{count}=#{entries}" }.join(", "))
      kinds = result[:veiled_kind_distribution]
      out << "  veiled kinds: " +
             (kinds.empty? ? "none" : kinds.map { |kind, entries| "#{kind}=#{entries}" }.join(", "))
      result[:veiled_subkind_distribution].each do |kind, subkinds|
        out << "    #{kind} subkinds: #{subkinds.map { |subkind, entries| "#{subkind}=#{entries}" }.join(', ')}"
      end
      overshared = result[:veiled_memberships].select { |row| row[:location_count] > 4 }
      unless overshared.empty?
        out << "  veiled entries above four locations: #{overshared.map { |row| row[:id] }.join(', ')}"
      end
      out << "  veiled entries spanning locations with no direct location edge: " \
             "#{result[:cross_location_veiled_entries]}"
      out.join("\n")
    end

    private

    def playable_locations
      @world.game_world_entities.select do |entity|
        entity.playable_as?(@role)
      end.sort_by(&:id)
    end

    def active_rows
      Edges.new(@world, at: @year, audience: :player).rows.select do |row|
        row.live && !Edges::BOOKKEEPING_RELATIONS.include?(row.relation)
      end
    end

    def location_row(location, rows)
      candidate_ids = rows.filter_map do |row|
        if row.subject == location.id
          row.target
        elsif row.target == location.id
          row.subject
        end
      end.uniq
      candidates = candidate_ids.filter_map { |id| @world[id] }.select { |node| eligible?(node) }
                                .sort_by(&:id)
      established, veiled = candidates.partition { |node| !node.respond_to?(:veiled?) || !node.veiled? }
      total = candidates.size
      {
        id: location.id,
        title: location.title,
        established: established.size,
        veiled: veiled.size,
        total: total,
        deficit: [@minimum - total, 0].max,
        candidate_ids: candidates.map(&:id),
        veiled_ids: veiled.map(&:id),
      }
    end

    def eligible?(node)
      return false unless node.respond_to?(:kind) && @world.schema.wiki_kind?(node.kind)
      return false if node.respond_to?(:dm?) && node.dm?
      return false if node.respond_to?(:article?) && node.article?
      return false if node.respond_to?(:[]) && node[:status].to_s == "shell"
      return false if node.respond_to?(:structural?) && node.structural?
      return false if node.is_a?(Entity) && @world.schema.location_kind?(node.kind)

      true
    end

    def veiled_memberships(coverage)
      by_id = Hash.new { |hash, id| hash[id] = [] }
      @world.game_world_entities.each do |entity|
        by_id[entity.id] if entity.veiled? && eligible?(entity)
      end
      coverage.each do |location|
        location[:veiled_ids].each { |id| by_id[id] << location[:id] }
      end
      by_id.sort_by { |id, _locations| id }.map do |id, locations|
        {
          id: id,
          title: @world[id].title,
          kind: @world[id].kind,
          subkind: @world[id].subkind || @world[id].kind,
          location_count: locations.size,
          location_ids: locations.sort,
          spans_unlinked_locations: spans_unlinked_locations?(locations),
        }
      end
    end

    def spans_unlinked_locations?(locations)
      locations.combination(2).any? { |left, right| !direct_location_pair?(left, right) }
    end

    def direct_location_pair?(left, right)
      active_rows.any? do |row|
        (row.subject == left && row.target == right) || (row.subject == right && row.target == left)
      end
    end

    def shared_location_pairs(memberships)
      pairs = Hash.new { |hash, pair| hash[pair] = [] }
      memberships.each do |entry|
        entry[:location_ids].combination(2).each { |pair| pairs[pair] << entry[:id] }
      end
      pairs.sort_by { |pair, _ids| pair }.map do |pair, ids|
        { location_ids: pair, veiled_ids: ids.sort }
      end
    end
  end
end
