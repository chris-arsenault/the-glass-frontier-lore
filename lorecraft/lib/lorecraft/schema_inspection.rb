# frozen_string_literal: true

module Lorecraft
  # A live, bounded view of the schema assembled from the shared craft layer and
  # the selected world's extensions.
  class SchemaInspection
    TOPICS = %w[kinds kind relations relation tags sections].freeze

    def initialize(world, topic: "kinds", name: nil)
      @schema = world.schema
      @topic = topic.to_s
      @name = name&.to_sym
      raise Error, "unknown schema query #{@topic.inspect}; use: #{TOPICS.join(', ')}" unless TOPICS.include?(@topic)
    end

    def data
      case @topic
      when "kinds" then { query: "kinds", kinds: kind_list }
      when "kind" then { query: "kind", kind: kind_detail(required_name("kind")) }
      when "relations" then { query: "relations", relations: relation_list }
      when "relation" then { query: "relation", relation: relation_detail(required_name("relation")) }
      when "tags" then { query: "tags", tags: named_vocabulary(@schema.tags) }
      when "sections" then { query: "sections", sections: named_vocabulary(@schema.section_headings) }
      end
    end

    def report
      result = data
      case result[:query]
      when "kinds" then report_kinds(result[:kinds])
      when "kind" then report_kind(result[:kind])
      when "relations" then report_relations(result[:relations])
      when "relation" then report_relation(result[:relation])
      when "tags" then report_vocabulary("Tags", result[:tags])
      when "sections" then report_vocabulary("Sections", result[:sections])
      end
    end

    private

    def kind_list
      @schema.kinds.values.sort_by { |kind| kind.name.to_s }.map do |kind|
        {
          name: kind.name,
          reader: kind.wiki == true,
          subkind_count: kind.subkinds.size,
          fact_count: kind.facts.size,
        }
      end
    end

    def kind_detail(name)
      kind = @schema.kinds[name]
      raise Error, "unknown entity kind: #{name}" unless kind

      {
        name: kind.name,
        reader: kind.wiki == true,
        facts: kind.facts.map { |fact| fact_data(fact) },
        subkinds: kind.subkinds.values.sort_by { |subkind| subkind.name.to_s }.map do |subkind|
          {
            name: subkind.name,
            label: subkind.label,
            default: subkind.name == kind.name,
            omitted_facts: subkind.omitted_facts,
            facts: subkind.facts.map { |fact| fact_data(fact) },
            resolved_facts: @schema.facts_for(kind.name, subkind: subkind.name).map { |fact| fact_data(fact) },
          }
        end,
      }
    end

    def relation_list
      @schema.relations.values.sort_by { |relation| relation.name.to_s }.map do |relation|
        relation_data(relation)
      end
    end

    def relation_detail(name)
      relation = @schema.relation_def(name)
      raise Error, "unknown relation: #{name}" unless relation

      relation_data(relation)
    end

    def relation_data(relation)
      {
        name: relation.name,
        category: relation.category,
        temporal: relation.temporal == true,
        symmetric: relation.symmetric == true,
        inverse: relation.inverse,
        domain: relation.domain,
        range: relation.range,
        cardinality: relation.cardinality,
        exclusive_with: relation.exclusive_with,
        description: relation.description,
      }.compact
    end

    def fact_data(fact)
      {
        name: fact.name,
        label: fact.label,
        source: fact.source,
        type: fact.type,
        expected: fact.expected?,
        relation: fact.relation,
        direction: fact.direction,
        cardinality: fact.cardinality,
        from: fact.from,
        calculate: fact.calculate,
      }.compact
    end

    def named_vocabulary(values)
      values.sort_by { |name, _description| name.to_s }.map do |name, description|
        { name: name, description: description }.compact
      end
    end

    def required_name(label)
      raise Error, "schema #{label} requires a name" unless @name

      @name
    end

    def report_kinds(kinds)
      lines = ["Entity kinds (#{kinds.size}):"]
      kinds.each do |kind|
        audience = kind[:reader] ? "reader" : "non-reader"
        lines << format(
          "  %-24s %-10s %2d subkind(s)  %2d kind fact(s)",
          kind[:name], audience, kind[:subkind_count], kind[:fact_count]
        )
      end
      lines.join("\n")
    end

    def report_kind(kind)
      lines = ["Kind — #{kind[:name]} (#{kind[:reader] ? 'reader' : 'non-reader'})"]
      lines.concat(fact_lines("Kind facts", kind[:facts]))
      lines << "Subkinds:"
      kind[:subkinds].each do |subkind|
        marker = subkind[:default] ? " (default)" : ""
        lines << "  #{subkind[:name]} — #{subkind[:label]}#{marker}"
        lines << "    omits: #{subkind[:omitted_facts].join(', ')}" unless subkind[:omitted_facts].empty?
        if subkind[:facts].empty?
          lines << "    no added or overridden facts"
        else
          subkind[:facts].each { |fact| lines << "    #{format_fact(fact)}" }
        end
      end
      lines.join("\n")
    end

    def fact_lines(label, facts)
      return ["#{label}: none"] if facts.empty?

      ["#{label}:"] + facts.map { |fact| "  #{format_fact(fact)}" }
    end

    def format_fact(fact)
      attributes = [fact[:source], fact[:type]]
      attributes << (fact[:expected] ? "expected" : "optional")
      attributes << "relation=#{fact[:relation]}" if fact[:relation]
      attributes << "direction=#{fact[:direction]}" if fact[:direction]
      attributes << "cardinality=#{fact[:cardinality]}" if fact[:cardinality]
      attributes << "from=#{fact[:from]}" if fact[:from]
      attributes << "calculate=#{fact[:calculate]}" if fact[:calculate]
      "#{fact[:name]} (#{fact[:label]}): #{attributes.join(', ')}"
    end

    def report_relations(relations)
      lines = ["Relations (#{relations.size}):"]
      relations.each do |relation|
        shape = "#{relation[:domain]&.join('|') || 'any'} -> #{relation[:range]&.join('|') || 'any'}"
        time = relation[:temporal] ? "temporal" : "standing"
        lines << format(
          "  %-24s %-16s %-9s %-8s %s",
          relation[:name], relation[:category], time, relation[:cardinality], shape
        )
      end
      lines.join("\n")
    end

    def report_relation(relation)
      lines = ["Relation — #{relation[:name]}"]
      lines << "  category: #{relation[:category]}"
      lines << "  temporal: #{relation[:temporal]}"
      lines << "  cardinality: #{relation[:cardinality]}"
      lines << "  domain: #{relation[:domain]&.join(', ') || 'any kind'}"
      lines << "  range: #{relation[:range]&.join(', ') || 'any kind'}"
      lines << "  symmetric: #{relation[:symmetric]}"
      lines << "  inverse: #{relation[:inverse]}" if relation[:inverse]
      exclusions = relation[:exclusive_with]
      lines << "  exclusive with: #{exclusions&.join(', ') || 'none'}"
      lines << "  description: #{relation[:description]}" if relation[:description]
      lines.join("\n")
    end

    def report_vocabulary(label, entries)
      lines = ["#{label} (#{entries.size}):"]
      entries.each do |entry|
        description = entry[:description] ? " — #{entry[:description]}" : ""
        lines << "  #{entry[:name]}#{description}"
      end
      lines.join("\n")
    end
  end
end
