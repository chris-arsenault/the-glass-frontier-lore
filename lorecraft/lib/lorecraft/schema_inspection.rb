# frozen_string_literal: true

module Lorecraft
  # A live, bounded view of the schema assembled from the shared craft layer and
  # the selected world's extensions.
  class SchemaInspection
    TOPICS = %w[kinds kind relations relation frames frame tags sections].freeze

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
        identity_sources: kind.identity_sources.map { |source| identity_source_data(source) },
        identity_source_policy: kind.identity_source_policy,
        subkinds: kind.subkinds.values.sort_by { |subkind| subkind.name.to_s }.map do |subkind|
          {
            name: subkind.name,
            label: subkind.label,
            default: subkind.name == kind.name,
            omitted_facts: subkind.omitted_facts,
            facts: subkind.facts.map { |fact| fact_data(fact) },
            resolved_facts: @schema.facts_for(kind.name, subkind: subkind.name).map { |fact| fact_data(fact) },
            identity_source_policy: subkind.identity_source_policy || kind.identity_source_policy,
            omitted_identity_sources: subkind.omitted_identity_sources,
            identity_keys: subkind.identity_keys.map { |key| identity_key_data(key) },
            identity_sources: subkind.identity_sources.map { |source| identity_source_data(source) },
            resolved_identity_keys: @schema.identity_keys_for(
              kind.name, subkind: subkind.name
            ).map { |key| identity_key_data(key) },
            resolved_identity_sources: @schema.identity_sources_for(
              kind.name, subkind: subkind.name
            ).map { |source| identity_source_data(source) },
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
        identity_source_policy: relation.identity_source_policy,
        identity_keys: @schema.relation_identity_keys(relation.name).map do |key|
          identity_key_data(key)
        end,
        identity_sources: @schema.relation_identity_sources(relation.name).map do |source|
          identity_source_data(source)
        end,
      }.compact
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
      {
        name: key.name,
        required: key.required?,
        merge: key.merge,
        separator: key.separator,
      }
    end

    def identity_source_data(source)
      {
        name: source.name,
        relation: source.relation,
        direction: source.direction,
        cardinality: source.cardinality,
        required: source.required?,
        kinds: source.kinds,
        subkinds: source.subkinds,
        projection: source.projection,
        precedence: source.precedence,
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
      lines.concat(identity_lines(kind[:identity_keys], kind[:identity_sources], kind[:identity_source_policy]))
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
        unless subkind[:resolved_identity_keys].empty?
          lines << "    identity keys: #{subkind[:resolved_identity_keys].map { |key| key[:name] }.join(', ')}"
        end
        if subkind[:identity_source_policy] == :none
          lines << "    identity sources: none"
        elsif !subkind[:resolved_identity_sources].empty?
          lines << "    identity sources: " \
                   "#{subkind[:resolved_identity_sources].map { |source| source[:name] }.join(', ')}"
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

    def identity_lines(keys, sources, policy)
      lines = []
      lines << if keys.empty?
                 "Identity keys: none"
               else
                 "Identity keys: " + keys.map do |key|
                   requirement = key[:required] ? "required" : "optional"
                   "#{key[:name]} (#{requirement}, #{key[:merge]})"
                 end.join(", ")
               end
      lines << if policy == :none
                 "Identity sources: none"
               elsif sources.empty?
                 "Identity sources: undeclared"
               else
                 "Identity sources: #{sources.map { |source| source[:name] }.join(', ')}"
               end
      lines
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
      lines.concat(identity_lines(
        relation[:identity_keys], relation[:identity_sources], relation[:identity_source_policy]
      ).map { |line| "  #{line}" })
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
