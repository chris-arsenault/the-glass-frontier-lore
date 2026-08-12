# frozen_string_literal: true

module Lorecraft
  # Inventory of expected kind facts that have or have not been established.
  # Missing values are authoring work, not world content, so this report and the
  # private editorial bundle are the only places that name them.
  class FactAudit
    def initialize(world, at: :now, entity: nil)
      @world = world
      @at = at
      @facts = Facts.new(world)
      @entity = entity && (world.entity(entity.to_sym) || raise(Error, "unknown entity: #{entity}"))
    end

    def report
      return entry_report if @entity

      out = ["=== Entity Facts ===", ""]
      groups.each do |(kind, subkind), entities|
        definitions = @world.schema.facts_for(kind, subkind: subkind).select(&:expected?)
        next if definitions.empty?

        total = definitions.size * entities.size
        missing_by_entity = entities.to_h do |entity|
          missing = @facts.missing(entity, at: @at).map { |row| row.definition.name }
          [entity, missing]
        end
        missing_count = missing_by_entity.values.sum(&:size)
        out << "#{kind}/#{subkind}: #{total - missing_count}/#{total} expected facts established"
        definitions.each do |definition|
          established = entities.count do |entity|
            @facts.present(entity, at: @at).any? { |row| row.definition == definition }
          end
          out << "  #{definition.name}: #{established}/#{entities.size}"
        end
        missing_by_entity.each do |entity, missing|
          out << "    #{entity.id}: #{missing.join(', ')}" unless missing.empty?
        end
        out << ""
      end
      out << "No expected kind facts declared." if out.size == 2
      append_prominent_cards(out)
      out.join("\n")
    end

    def data
      return entry_data if @entity

      {
        generated_at_year: @world.timeline.year_for(@at),
        scope: "world",
        groups: groups.filter_map do |(kind, subkind), entities|
          definitions = @world.schema.facts_for(kind, subkind: subkind).select(&:expected?)
          next if definitions.empty?

          missing = entities.to_h do |entity|
            names = @facts.missing(entity, at: @at).map { |row| row.definition.name }
            [entity.id, names]
          end
          {
            kind: kind,
            subkind: subkind,
            entity_count: entities.size,
            expected_fact_count: definitions.size,
            established: definitions.to_h do |definition|
              count = entities.count do |entity|
                @facts.present(entity, at: @at).any? { |row| row.definition == definition }
              end
              [definition.name, count]
            end,
            missing_by_entity: missing.reject { |_id, names| names.empty? },
          }
        end,
        prominent_cards: prominent_card_data,
      }
    end

    private

    def entry_data
      rows = @facts.rows(@entity, at: @at)
      {
        generated_at_year: @world.timeline.year_for(@at),
        scope: "entity",
        entity: {
          id: @entity.id,
          title: @entity.title,
          kind: @entity.kind,
          subkind: @entity.subkind,
        },
        facts: rows.map do |row|
          definition = row.definition
          {
            name: definition.name,
            label: definition.label,
            source: definition.source,
            type: definition.type,
            expected: definition.expected?,
            missing: row.missing?,
            value: row.value,
          }
        end,
        missing_expected: rows.filter_map do |row|
          row.definition.name if row.definition.expected? && row.missing?
        end,
      }
    end

    def entry_report
      year = @world.timeline.year_for(@at)
      rows = @facts.rows(@entity, at: @at)
      out = ["=== Entity Facts — #{@entity.title} (#{@entity.id}) ===",
             "  kind: #{@entity.kind}/#{@entity.subkind}",
             "  at: #{year}",]
      if rows.empty?
        out << "  No facts declared for this kind, subkind, or entry."
        return out.join("\n")
      end

      rows.each do |row|
        definition = row.definition
        state = definition.expected? ? "expected" : "optional"
        value = row.missing? ? "missing" : format_value(row.value)
        out << "  #{definition.name} (#{definition.label}): #{value} [#{state}]"
      end
      missing = rows.select { |row| row.definition.expected? && row.missing? }
      out << "  missing expected: #{missing.empty? ? 'none' : missing.map { |row| row.definition.name }.join(', ')}"
      out.join("\n")
    end

    def format_value(value)
      values = Array(value).map do |item|
        node = item.is_a?(Symbol) && @world[item]
        node&.respond_to?(:title) ? "#{item} (#{node.title})" : item.to_s
      end
      value.is_a?(Array) ? values.join(", ") : values.first.to_s
    end

    def groups
      entities = @entity ? [@entity] : @world.entities.values
      entities
            .reject { |entity| entity[:status].to_s == "shell" }
            .group_by { |entity| [entity.kind, entity.subkind] }
            .sort_by { |(kind, subkind), _entities| [kind.to_s, subkind.to_s] }
    end

    def append_prominent_cards(out)
      threshold = :renowned
      threshold_index = @world.schema.prominence_levels.index(threshold)
      entries = (@entity ? [@entity] : @world.entities.values).select do |entity|
        prominence_index = @world.schema.prominence_levels.index(entity.prominence&.to_sym)
        entity[:status].to_s != "shell" && !entity.dm? &&
          @world.schema.wiki_kind?(entity.kind) && prominence_index && prominence_index >= threshold_index
      end
      rows = entries.map do |entity|
        present = @facts.present(entity, at: @at, audience: :player)
        [entity, present.map { |row| row.definition.name }]
      end
      empty = rows.select { |_entity, names| names.empty? }
      thin = rows.select { |_entity, names| names.size == 1 }
      minimum = @world.schema.fact_cards_required_minimum
      incomplete = rows.select { |_entity, names| names.size < minimum }

      out << "=== Prominent Entry Cards ==="
      out << "renowned+: #{rows.size - empty.size}/#{rows.size} cards present"
      out << "  empty: #{empty.size}"
      empty.each { |entity, _names| out << "    #{entity.id}" }
      out << "  one fact: #{thin.size}"
      thin.each { |entity, names| out << "    #{entity.id}: #{names.first}" }
      if minimum > 1
        out << "  under #{minimum} facts: #{incomplete.size}"
        incomplete.each do |entity, names|
          out << "    #{entity.id}: #{names.size}"
        end
      end
    end

    def prominent_card_data
      threshold = :renowned
      threshold_index = @world.schema.prominence_levels.index(threshold)
      entries = @world.entities.values.select do |entity|
        prominence_index = @world.schema.prominence_levels.index(entity.prominence&.to_sym)
        entity[:status].to_s != "shell" && !entity.dm? &&
          @world.schema.wiki_kind?(entity.kind) && prominence_index && prominence_index >= threshold_index
      end
      minimum = @world.schema.fact_cards_required_minimum
      {
        threshold: threshold,
        minimum: minimum,
        entries: entries.map do |entity|
          names = @facts.present(entity, at: @at, audience: :player).map { |row| row.definition.name }
          { id: entity.id, facts: names, count: names.size, meets_minimum: names.size >= minimum }
        end,
      }
    end
  end
end
