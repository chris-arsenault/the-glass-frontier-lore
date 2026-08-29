# frozen_string_literal: true

require "set"

module Lorecraft
  # Projects the structural effect of deleting Atlas entities and every graph
  # edge incident to them. It does not mutate the world. Migration tooling uses
  # the projection before an edit and verifies the loaded world against it
  # afterward.
  class AtlasRemovalImpact
    def initialize(world, ids:)
      @world = world
      @ids = Array(ids).map(&:to_sym).uniq.sort
      missing = @ids.reject { |id| @world.entity(id) }
      raise DefinitionError, "unknown Atlas entities: #{missing.join(', ')}" unless missing.empty?
    end

    attr_reader :ids

    def data
      @data ||= begin
        removed_relations = incident_relation_instances
        baseline = current_snapshot
        projected_entities = @world.game_world_entities.reject { |entity| ids.include?(entity.id) }
        projected_edges = @world.game_world_relationships.reject do |source, _verb, target|
          ids.include?(source) || ids.include?(target)
        end
        projected_focus = project_focus
        projected = snapshot(
          atlas_entities: @world.entities.size - ids.size,
          named_relations: @world.relation_instances.size - removed_relations.size,
          game_entities: projected_entities,
          game_edges: projected_edges,
          focus: projected_focus,
        )

        {
          schema_version: 1,
          target_ids: ids,
          target_entries: target_entries,
          baseline: baseline,
          projected: projected,
          delta: numeric_delta(baseline, projected),
          removed_named_relations: removed_relations.map { |relation| relation_record(relation) },
          removed_graph_edges: removed_graph_edges,
          affected_neighbors: affected_neighbors,
          newly_thin_entries: projected[:thin_entries] - baseline[:thin_entries],
          newly_isolated_entries: projected.dig(:components, :isolated_ids) -
                                  baseline.dig(:components, :isolated_ids),
          references_to_repair: references_to_repair(removed_relations),
          fact_references_to_repair: fact_references_to_repair,
          moment_effects_to_repair: moment_effects_to_repair,
          owned_moments: owned_moments,
        }
      end
    end

    def current_snapshot
      snapshot(
        atlas_entities: @world.entities.size,
        named_relations: @world.relation_instances.size,
        game_entities: @world.game_world_entities,
        game_edges: @world.game_world_relationships,
        focus: current_focus,
      )
    end

    def report
      result = data
      before = result[:baseline]
      after = result[:projected]
      lines = [
        "=== Atlas removal impact ===",
        "  targets: #{ids.join(', ')}",
        "",
        "  measure                         before  projected  delta",
      ]
      metric_rows.each do |label, path|
        left = dig(before, path)
        right = dig(after, path)
        lines << format("    %-29s %7d %10d %+6d", label, left, right, right - left)
      end

      lines << ""
      lines << "  newly below degree #{Topology::FLOOR}: #{list_or_none(result[:newly_thin_entries])}"
      lines << "  newly isolated: #{list_or_none(result[:newly_isolated_entries])}"
      lines << ""
      lines << "  affected neighbors"
      result[:affected_neighbors].each do |row|
        flag = row[:becomes_thin] ? "  BECOMES THIN" : ""
        lines << format(
          "    %-28s %-18s %2d -> %-2d%s",
          row[:id], row[:kind], row[:degree_before], row[:degree_after], flag
        )
      end

      lines << ""
      lines << "  removed named relations (#{result[:removed_named_relations].size})"
      result[:removed_named_relations].each do |relation|
        lines << "    #{relation[:id]}: #{relation[:source]} --#{relation[:verb]}--> #{relation[:target]}"
      end

      lines << ""
      lines << "  retained prose references requiring namespace repair " \
               "(#{result[:references_to_repair].size})"
      result[:references_to_repair].each do |reference|
        lines << "    #{reference[:source_file]}: #{reference[:owner]} " \
                 "#{reference[:marker]} #{reference[:target]}"
      end

      unless result[:fact_references_to_repair].empty?
        lines << ""
        lines << "  retained Atlas facts targeting removed ids " \
                 "(#{result[:fact_references_to_repair].size})"
        result[:fact_references_to_repair].each do |reference|
          lines << "    #{reference[:source_file]}: #{reference[:owner]}.#{reference[:field]} " \
                   "-> #{reference[:target]}"
        end
      end

      unless result[:moment_effects_to_repair].empty?
        lines << ""
        lines << "  retained moment effects touching removed ids " \
                 "(#{result[:moment_effects_to_repair].size})"
        result[:moment_effects_to_repair].each do |reference|
          effect = reference[:effect]
          detail = if effect[:relation]
                     "#{effect[:subject]} --#{effect[:relation]}--> #{effect[:target]}"
                   elsif effect[:attr]
                     "#{effect[:subject]}.#{effect[:attr]} = #{effect[:value].inspect}"
                   else
                     effect[:subject].to_s
                   end
          lines << "    #{reference[:source_file]}: #{reference[:moment]} " \
                   "#{effect[:verb]} #{detail}"
        end
      end

      unless result[:owned_moments].empty?
        lines << ""
        lines << "  moments owned by removed ids (#{result[:owned_moments].size})"
        result[:owned_moments].each do |reference|
          lines << "    #{reference[:source_file]}: #{reference[:id]} of #{reference[:home]}"
        end
      end
      lines.join("\n")
    end

    private

    def current_focus
      focus = FocusCoverage.new(@world).data
      {
        playable_locations: focus[:playable_locations],
        satisfied_locations: focus[:satisfied_locations],
        missing_choices: focus[:missing_choices],
        below_minimum: focus[:locations].select { |row| row[:deficit].positive? }.map { |row| row[:id] },
      }
    end

    def project_focus
      focus = FocusCoverage.new(@world).data
      rows = focus[:locations].reject { |row| ids.include?(row[:id]) }.map do |row|
        candidates = row[:candidate_ids] - ids
        total = candidates.size
        { id: row[:id], total: total, deficit: [focus[:minimum] - total, 0].max }
      end
      {
        playable_locations: rows.size,
        satisfied_locations: rows.count { |row| row[:deficit].zero? },
        missing_choices: rows.sum { |row| row[:deficit] },
        below_minimum: rows.select { |row| row[:deficit].positive? }.map { |row| row[:id] },
      }
    end

    def snapshot(atlas_entities:, named_relations:, game_entities:, game_edges:, focus:)
      non_bookkeeping = game_edges.reject do |_source, verb, _target|
        Edges::BOOKKEEPING_RELATIONS.include?(verb)
      end
      degrees = degree_for(non_bookkeeping)
      developed = game_entities.reject { |entity| entity.structural? || entity.veiled? }
      thin = developed.select { |entity| degrees[entity.id] < Topology::FLOOR }.map(&:id).sort
      {
        atlas_entities: atlas_entities,
        named_relations: named_relations,
        game_world_entities: game_entities.size,
        game_world_edges: game_edges.size,
        non_bookkeeping_edges: non_bookkeeping.size,
        established_entries: developed.size,
        thin_entries: thin,
        components: component_summary(game_entities.map(&:id), non_bookkeeping),
        focus: focus,
      }
    end

    def target_entries
      ids.map do |id|
        entity = @world.entity(id)
        {
          id: id,
          title: entity.title,
          kind: entity.kind,
          subkind: entity.subkind,
          prominence: entity.prominence,
          article: entity.article?,
          veiled: entity.veiled?,
          source_file: entity.source_file,
        }
      end
    end

    def incident_relation_instances
      @world.relation_instances.values.select do |relation|
        ids.include?(relation.source) || ids.include?(relation.target)
      end.sort_by(&:id)
    end

    def relation_record(relation)
      {
        id: relation.id,
        verb: relation.verb,
        source: relation.source,
        target: relation.target,
        from: relation.from_year,
        to: relation.to_year,
        dm: relation.dm?,
        source_file: relation.source_file,
        source_line: relation.source_line,
      }
    end

    def removed_graph_edges
      @world.game_world_relationships.select do |source, _verb, target|
        ids.include?(source) || ids.include?(target)
      end.map { |source, verb, target| { source: source, verb: verb, target: target } }
    end

    def affected_neighbors
      edges = @world.game_world_relationships.reject do |_source, verb, _target|
        Edges::BOOKKEEPING_RELATIONS.include?(verb)
      end
      before = degree_for(edges)
      after_edges = edges.reject do |source, _verb, target|
        ids.include?(source) || ids.include?(target)
      end
      after = degree_for(after_edges)
      neighbor_ids = edges.filter_map do |source, _verb, target|
        if ids.include?(source) && !ids.include?(target)
          target
        elsif ids.include?(target) && !ids.include?(source)
          source
        end
      end.uniq
      neighbor_ids.filter_map do |id|
        entity = @world.entity(id)
        next unless entity

        {
          id: id,
          title: entity.title,
          kind: entity.kind,
          degree_before: before[id],
          degree_after: after[id],
          becomes_thin: !entity.veiled? && !entity.structural? &&
                        before[id] >= Topology::FLOOR && after[id] < Topology::FLOOR,
        }
      end.sort_by { |row| [row[:degree_after], row[:id].to_s] }
    end

    def references_to_repair(removed_relations)
      removed_relation_ids = removed_relations.map(&:id).to_set
      @world.authored_owners.flat_map do |owner|
        next [] unless retained_owner?(owner, removed_relation_ids)
        next [] unless owner.respond_to?(:prose_blocks)

        owner.prose_blocks.flat_map do |block|
          Markers.scan(block.text).filter_map do |_match, marker|
            next unless %i[ref embed].include?(marker.kind) && ids.include?(marker.id)

            {
              owner: owner.id,
              owner_type: owner.class.name.split("::").last,
              namespace: owner.is_a?(EncyclopediaEntry) ? :encyclopedia : :atlas,
              marker: marker.kind,
              target: marker.id,
              section: block.section,
              source_file: owner.source_file,
              source_line: owner.source_line,
            }
          end
        end
      end.sort_by { |row| [row[:source_file].to_s, row[:owner].to_s, row[:target].to_s] }
    end

    def retained_owner?(owner, removed_relation_ids)
      return false if owner.is_a?(Entity) && ids.include?(owner.id)
      return false if owner.is_a?(RelationInstance) && removed_relation_ids.include?(owner.id)
      return false if owner.is_a?(Moment) && ids.include?(owner.home)

      true
    end

    def fact_references_to_repair
      @world.entities.values.reject { |entity| ids.include?(entity.id) }.flat_map do |entity|
        entity.fact_values.flat_map do |field, value|
          definition = @world.schema.fact_def(
            entity.kind, field, subkind: entity.subkind, custom: entity.custom_fact_defs
          )
          next [] unless definition && %i[entity entities].include?(definition.type)

          Array(value).filter_map do |target|
            next unless target.respond_to?(:to_sym) && ids.include?(target.to_sym)

            {
              owner: entity.id,
              field: field,
              target: target.to_sym,
              source_file: entity.source_file,
              source_line: entity.source_line,
            }
          end
        end
      end.sort_by { |row| [row[:source_file].to_s, row[:owner].to_s, row[:field].to_s] }
    end

    def moment_effects_to_repair
      @world.moments.values.flat_map do |moment|
        moment.effects.filter_map do |effect|
          next unless ids.include?(effect.subject) || ids.include?(effect.target)

          {
            moment: moment.id,
            home: moment.home,
            source_file: moment.source_file,
            source_line: moment.source_line,
            effect: {
              verb: effect.verb,
              subject: effect.subject,
              relation: effect.relation,
              target: effect.target,
              attr: effect.attr,
              value: effect.value,
              props: effect.props,
            },
          }
        end
      end.sort_by { |row| [row[:source_file].to_s, row[:moment].to_s] }
    end

    def owned_moments
      @world.moments.values.filter_map do |moment|
        next unless ids.include?(moment.home)

        {
          id: moment.id,
          home: moment.home,
          year: moment.year,
          source_file: moment.source_file,
          source_line: moment.source_line,
        }
      end.sort_by { |row| [row[:source_file].to_s, row[:id].to_s] }
    end

    def degree_for(edges)
      edges.each_with_object(Hash.new(0)) do |(source, _verb, target), degrees|
        degrees[source] += 1
        degrees[target] += 1
      end
    end

    def component_summary(entity_ids, edges)
      ids_set = entity_ids.to_set
      adjacency = entity_ids.each_with_object({}) { |id, hash| hash[id] = Set.new }
      edges.each do |source, _verb, target|
        next unless ids_set.include?(source) && ids_set.include?(target)

        adjacency[source] << target
        adjacency[target] << source
      end
      components = []
      remaining = ids_set.dup
      until remaining.empty?
        start = remaining.first
        component = Set.new([start])
        queue = [start]
        remaining.delete(start)
        until queue.empty?
          current = queue.shift
          adjacency.fetch(current).each do |neighbor|
            next unless remaining.delete?(neighbor)

            component << neighbor
            queue << neighbor
          end
        end
        components << component.to_a.sort
      end
      {
        count: components.size,
        largest_size: components.map(&:size).max || 0,
        isolated_ids: components.select { |component| component.size == 1 }.flatten.sort,
      }
    end

    def numeric_delta(before, after)
      metric_rows.to_h do |label, path|
        [label, dig(after, path) - dig(before, path)]
      end
    end

    def metric_rows
      [
        ["Atlas entities", [:atlas_entities]],
        ["named Atlas relations", [:named_relations]],
        ["game-world entities", [:game_world_entities]],
        ["game-world edges", [:game_world_edges]],
        ["non-bookkeeping edges", [:non_bookkeeping_edges]],
        ["connected components", [:components, :count]],
        ["isolated entities", [:components, :isolated_ids, :length]],
        ["thin established entries", [:thin_entries, :length]],
        ["focus locations satisfied", [:focus, :satisfied_locations]],
        ["missing focus choices", [:focus, :missing_choices]],
      ]
    end

    def dig(value, path)
      path.reduce(value) do |memo, key|
        key == :length ? memo.length : memo.fetch(key)
      end
    end

    def list_or_none(values) = values.empty? ? "none" : values.join(", ")
  end
end
