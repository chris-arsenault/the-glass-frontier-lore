# frozen_string_literal: true

module Lorecraft
  # Inventory of expected kind facts that have or have not been established.
  # Missing values are authoring work, not world content, so this report and the
  # private editorial bundle are the only places that name them.
  class FactAudit
    def initialize(world, at: :now)
      @world = world
      @at = at
      @facts = Facts.new(world)
    end

    def report
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

    private

    def groups
      @world.entities.values
            .reject { |entity| entity[:status].to_s == "shell" }
            .group_by { |entity| [entity.kind, entity.subkind] }
            .sort_by { |(kind, subkind), _entities| [kind.to_s, subkind.to_s] }
    end

    def append_prominent_cards(out)
      threshold = :renowned
      threshold_index = @world.schema.prominence_levels.index(threshold)
      entries = @world.entities.values.select do |entity|
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
  end
end
