# frozen_string_literal: true

module Lorecraft
  ResolvedFact = Struct.new(:definition, :value, keyword_init: true) do
    def missing?
      value.nil? || (value.respond_to?(:empty?) && value.empty?)
    end
  end

  # Resolves an entity kind's authored fact declarations against one entity and
  # one year. Attribute facts come from the entity, relationship facts from the
  # temporal graph, and calculated facts from another canonical value.
  class Facts
    def initialize(world)
      @world = world
      @schema = world.schema
    end

    def rows(node, at: :now, audience: :all)
      year = @world.timeline.year_for(at)
      definitions_for(node).map do |definition|
        ResolvedFact.new(
          definition: definition,
          value: resolve(node, definition, year: year, audience: audience)
        )
      end
    end

    def present(node, at: :now, audience: :all) = rows(node, at: at, audience: audience).reject(&:missing?)

    def missing(node, at: :now, audience: :all)
      rows(node, at: at, audience: audience)
        .select { |row| row.definition.expected? && row.missing? }
    end

    private

    def definitions_for(node)
      @schema.facts_for(
        node.kind,
        subkind: node.subkind,
        custom: node.respond_to?(:custom_fact_defs) ? node.custom_fact_defs : []
      )
    end

    def resolve(node, definition, year:, audience:)
      case definition.source
      when :attribute
        return node.year if definition.name == :date && node.respond_to?(:year)

        values = node.respond_to?(:fact_values) ? node.fact_values : node.static_attrs
        values[definition.name]
      when :relation
        state = @world.at(year)
        targets = if definition.direction == :incoming
                    state.in(node.id, definition.relation, audience: audience)
                  else
                    state.out(node.id, definition.relation, audience: audience)
                  end
        definition.cardinality == :one ? targets.first : targets
      when :calculated
        calculate(node, definition, year: year, audience: audience)
      end
    end

    def calculate(node, definition, year:, audience:)
      case definition.calculate
      when :elapsed_years
        source = definitions_for(node).find { |candidate| candidate.name == definition.from }
        anchor = resolve(node, source, year: year, audience: audience)
        return nil if anchor.nil?

        year - @world.year_of(anchor)
      when :first_moment_year
        @world.moments_of(node.id).reject(&:genesis?).min_by(&:year)&.year
      end
    rescue DefinitionError
      nil
    end
  end
end
