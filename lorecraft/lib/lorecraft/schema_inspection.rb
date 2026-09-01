# frozen_string_literal: true

module Lorecraft
  # A live, bounded view of the schema assembled from the shared craft layer and
  # the selected world's extensions.
  class SchemaInspection
    TOPICS = %w[
      kinds kind relations relation reference-kinds reference-kind
      context-tags frames frame tags sections
    ].freeze

    def initialize(world, topic: "kinds", name: nil)
      @schema = world.schema
      @world = world
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
      when "reference-kinds" then { query: "reference-kinds", kinds: reference_kind_list }
      when "reference-kind" then { query: "reference-kind", kind: reference_kind_detail(required_name("reference kind")) }
      when "context-tags" then { query: "context-tags", tags: context_tag_list }
      when "frames" then { query: "frames", frames: frame_list }
      when "frame" then { query: "frame", frame: frame_detail(required_name("frame")) }
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
      when "reference-kinds" then report_reference_kinds(result[:kinds])
      when "reference-kind" then report_reference_kind(result[:kind])
      when "context-tags" then report_context_tags(result[:tags])
      when "frames" then report_frames(result[:frames])
      when "frame" then report_frame(result[:frame])
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
        identity_keys: kind.identity_keys.map { |key| identity_key_data(key) },
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
        properties: relation.properties.values.sort_by { |property| property.name.to_s }.map do |property|
          property_data(property)
        end,
      }.compact
    end

    def reference_kind_list
      @schema.encyclopedia_kinds.values.sort_by { |kind| kind.name.to_s }.map do |kind|
        {
          name: kind.name,
          description: kind.description,
          fields: kind.fields.map { |field| fact_data(field) },
          identity_keys: kind.identity_keys.map { |key| identity_key_data(key) },
          tiers: kind.tiers.map { |tier| ability_tier_data(tier) },
          classifications: kind.classifications,
          tiered_classifications: kind.tiered_classifications,
        }.compact
      end
    end

    def reference_kind_detail(name)
      kind = @schema.encyclopedia_kinds[name]
      raise Error, "unknown encyclopedia kind: #{name}" unless kind

      {
        name: kind.name,
        description: kind.description,
        fields: kind.fields.map { |field| fact_data(field) },
        identity_keys: kind.identity_keys.map { |key| identity_key_data(key) },
        tiers: kind.tiers.map { |tier| ability_tier_data(tier) },
        classifications: kind.classifications,
        tiered_classifications: kind.tiered_classifications,
      }.compact
    end

    def context_tag_list
      @schema.context_tags.values.sort_by { |tag| tag.name.to_s }.map do |tag|
        {
          name: tag.name,
          description: tag.description,
          scopes: tag.scopes,
          parent: tag.parent,
          compatible_with: tag.compatible_with,
        }.compact
      end
    end

    def property_data(property)
      {
        name: property.name,
        type: property.type,
        values: property.values.empty? ? nil : property.values,
        required: property.required?,
        minimum: property.minimum,
        minimum_exclusive: property.minimum_exclusive,
        maximum: property.maximum,
        maximum_exclusive: property.maximum_exclusive,
        requires: property.requires.empty? ? nil : property.requires,
        exclusive_with: property.exclusive_with.empty? ? nil : property.exclusive_with,
      }.compact
    end

    def frame_list
      @world.spatial_frames.values.sort_by { |frame| frame.name.to_s }.map do |frame|
        frame_data(frame)
      end
    end

    def frame_detail(name)
      frame = @world.spatial_frames[name]
      raise Error, "unknown spatial frame: #{name}" unless frame

      frame_data(frame)
    end

    def frame_data(frame)
      {
        name: frame.name,
        coordinates: frame.coordinates,
        origin: frame.origin,
        parent: frame.parent,
        radial_unit: frame.radial_unit,
        prime_meridian: frame.prime_meridian,
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

    def identity_key_data(key)
      { name: key.name }
    end

    def ability_tier_data(tier)
      { name: tier.name, rank: tier.rank, description: tier.description }.compact
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
      lines.concat(identity_lines(kind[:identity_keys]))
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

    def identity_lines(keys)
      [keys.empty? ? "Identity keys: none" : "Identity keys: #{keys.map { |key| key[:name] }.join(', ')}"]
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
      unless relation[:properties].empty?
        lines << "  properties:"
        relation[:properties].each do |property|
          details = [property[:type]]
          details << "required" if property[:required]
          details << "values=#{property[:values].join('|')}" if property[:values]
          details << "minimum=#{property[:minimum]}" if property.key?(:minimum)
          details << "minimum_exclusive=#{property[:minimum_exclusive]}" if property.key?(:minimum_exclusive)
          details << "maximum=#{property[:maximum]}" if property.key?(:maximum)
          details << "maximum_exclusive=#{property[:maximum_exclusive]}" if property.key?(:maximum_exclusive)
          details << "requires=#{property[:requires].join('|')}" if property[:requires]
          details << "exclusive_with=#{property[:exclusive_with].join('|')}" if property[:exclusive_with]
          lines << "    #{property[:name]}: #{details.join(', ')}"
        end
      end
      lines.join("\n")
    end

    def report_reference_kinds(kinds)
      lines = ["Encyclopedia kinds (#{kinds.size}):"]
      kinds.each do |kind|
        suffix = kind[:description] ? ": #{kind[:description]}" : ""
        lines << "  #{kind[:name]}#{suffix}"
      end
      lines.join("\n")
    end

    def report_reference_kind(kind)
      lines = ["Encyclopedia kind — #{kind[:name]}"]
      lines << kind[:description] if kind[:description]
      unless kind[:classifications].empty?
        lines << "Classifications: #{kind[:classifications].join(', ')}"
      end
      unless kind[:tiered_classifications].empty?
        lines << "Tiered classifications: #{kind[:tiered_classifications].join(', ')}"
      end
      unless kind[:fields].empty?
        lines << "Fields:"
        kind[:fields].each do |field|
          expectation = field[:expected] ? "expected" : "optional"
          lines << "  #{field[:name]}: #{field[:type]} (#{expectation})"
        end
      end
      unless kind[:identity_keys].empty?
        lines << "Descriptive identity: #{kind[:identity_keys].map { |key| key[:name] }.join(', ')}"
      end
      unless kind[:tiers].empty?
        lines << "Tiers:"
        kind[:tiers].each do |tier|
          description = tier[:description] ? " — #{tier[:description]}" : ""
          lines << "  #{tier[:rank]}. #{tier[:name]}#{description}"
        end
      end
      lines.join("\n")
    end

    def report_context_tags(tags)
      return "Context tags: none" if tags.empty?

      lines = ["Context tags (#{tags.size}):"]
      tags.each do |tag|
        detail = "scopes=#{tag[:scopes].join('|')}"
        detail += " parent=#{tag[:parent]}" if tag[:parent]
        detail += " compatible=#{tag[:compatible_with].join('|')}" unless tag[:compatible_with].empty?
        lines << "  #{tag[:name]}: #{detail}"
        lines << "    #{tag[:description]}" if tag[:description]
      end
      lines.join("\n")
    end

    def report_frames(frames)
      lines = ["Spatial frames (#{frames.size}):"]
      frames.each do |frame|
        parent = frame[:parent] ? " parent=#{frame[:parent]}" : ""
        unit = frame[:radial_unit] ? " radial_unit=#{frame[:radial_unit]}" : ""
        lines << "  #{frame[:name]}: #{frame[:coordinates]} origin=#{frame[:origin]}#{parent}#{unit}"
      end
      lines.join("\n")
    end

    def report_frame(frame)
      lines = ["Spatial frame — #{frame[:name]}"]
      lines << "  coordinates: #{frame[:coordinates]}"
      lines << "  origin: #{frame[:origin]}"
      lines << "  parent: #{frame[:parent]}" if frame[:parent]
      lines << "  radial unit: #{frame[:radial_unit]}" if frame[:radial_unit]
      lines << "  prime meridian: #{frame[:prime_meridian]}" if frame[:prime_meridian]
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
