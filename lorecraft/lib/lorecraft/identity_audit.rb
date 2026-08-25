# frozen_string_literal: true

module Lorecraft
  # Read-only inspection for authored sources, local operations, the resolved
  # dictionary, and per-key provenance. The global view reports coverage without
  # turning missing world-level declarations into invented content.
  class IdentityAudit
    def initialize(world, owner: nil, at: :now, audience: :all)
      @world = world
      @owner_id = owner&.to_sym
      @year = world.timeline.year_for(at)
      @audience = audience.to_sym
    end

    def data
      @owner_id ? owner_data : coverage_data
    end

    def report
      result = data
      result[:scope] == :owner ? owner_report(result) : coverage_report(result)
    end

    private

    def owner_data
      owner = @world[@owner_id]
      unless owner.is_a?(Entity) || owner.is_a?(RelationInstance)
        raise Error, "unknown identity owner: #{@owner_id}"
      end

      resolution = @world.resolve_identity(owner, at: @year, audience: @audience)
      {
        scope: :owner,
        generated_at_year: @year,
        owner: owner_summary(owner),
        schema: schema_data(owner),
        **resolution.to_h,
      }
    end

    def coverage_data
      rows = visible_owners.map { |owner| coverage_row(owner) }
      groups = rows.group_by { |row| [row[:owner_type], row[:kind], row[:subkind]] }.map do |key, members|
        owner_type, kind, subkind = key
        {
          owner_type: owner_type,
          kind: kind,
          subkind: subkind,
          total: members.size,
          resolved: members.count { |row| row[:status] == :resolved },
          missing: members.count { |row| row[:status] == :missing },
          invalid: members.count { |row| row[:status] == :invalid },
        }.compact
      end.sort_by { |group| [group[:owner_type].to_s, group[:kind].to_s, group[:subkind].to_s] }

      {
        scope: :coverage,
        generated_at_year: @year,
        strict: @world.schema.descriptive_identities_required?,
        totals: {
          owners: rows.size,
          resolved: rows.count { |row| row[:status] == :resolved },
          missing: rows.count { |row| row[:status] == :missing },
          invalid: rows.count { |row| row[:status] == :invalid },
        },
        groups: groups,
        entries: rows.reject { |row| row[:status] == :resolved },
      }
    end

    def visible_owners
      entities = @world.entities.values.reject do |entity|
        entity[:status] == :shell || entity.veiled?
      end.select do |entity|
        @audience != :player || !entity.dm?
      end
      relationships = @world.relation_instances.values.select do |relation|
        configured?(relation) && (@audience != :player || !relation.dm?)
      end
      entities.select { |entity| configured?(entity) || @world.schema.descriptive_identities_required? } +
        relationships
    end

    def configured?(owner)
      keys, sources = definitions(owner)
      !keys.empty? || !sources.empty? || !owner.local_identity_values.empty? ||
        !owner.identity_source_values.empty?
    end

    def coverage_row(owner)
      resolution = @world.resolve_identity(owner, at: @year, audience: @audience)
      status = resolution.missing_required.empty? ? :resolved : :missing
      owner_summary(owner).merge(
        status: status,
        missing_required: resolution.missing_required,
      )
    rescue IdentityError => e
      owner_summary(owner).merge(status: :invalid, error: e.message)
    end

    def owner_summary(owner)
      if owner.is_a?(RelationInstance)
        {
          owner_type: :relationship,
          id: owner.id,
          kind: owner.verb,
          source: owner.source,
          target: owner.target,
        }
      else
        {
          owner_type: :entity,
          id: owner.id,
          title: owner.title,
          kind: owner.kind,
          subkind: owner.subkind,
        }
      end
    end

    def definitions(owner)
      if owner.is_a?(RelationInstance)
        [
          @world.schema.relation_identity_keys(owner.verb),
          @world.schema.relation_identity_sources(owner.verb),
        ]
      else
        [
          @world.schema.identity_keys_for(owner.kind, subkind: owner.subkind),
          @world.schema.identity_sources_for(owner.kind, subkind: owner.subkind),
        ]
      end
    end

    def schema_data(owner)
      keys, sources = definitions(owner)
      {
        keys: keys.map do |key|
          { name: key.name, required: key.required?, merge: key.merge, separator: key.separator }
        end,
        sources: sources.map do |source|
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
        end,
      }
    end

    def owner_report(result)
      owner = result[:owner]
      title = owner[:title] ? " — #{owner[:title]}" : ""
      lines = ["Descriptive identity — #{owner[:owner_type]} #{owner[:id]}#{title} at #{@year}"]
      if result[:sources].empty?
        lines << "Sources: none"
      else
        lines << "Sources:"
        result[:sources].each do |source|
          via = source[:relation] ? " via #{source[:relation]}" : ""
          lines << "  #{source[:slot]} -> #{source[:id]}#{via}"
        end
      end
      if result[:descriptive_identity].empty?
        lines << "Resolved identity: none"
      else
        lines << "Resolved identity:"
        result[:descriptive_identity].each { |key, text| lines << "  #{key}: #{text}" }
      end
      unless result[:missing_required].empty?
        lines << "Missing required keys: #{result[:missing_required].join(', ')}"
      end
      lines << "Provenance:"
      result[:provenance].each do |key, contributions|
        contributions.each do |contribution|
          source = contribution[:source_id] ? " from #{contribution[:source_id]}" : ""
          state = contribution[:suppressed] ? "suppressed" : "active"
          lines << "  #{key}: #{contribution[:operation]}#{source} (#{state})"
        end
      end
      lines.join("\n")
    end

    def coverage_report(result)
      totals = result[:totals]
      lines = [
        "Descriptive identity coverage at #{@year} (strict: #{result[:strict]})",
        "  #{totals[:resolved]}/#{totals[:owners]} resolved; " \
        "#{totals[:missing]} missing; #{totals[:invalid]} invalid",
      ]
      result[:groups].each do |group|
        label = [group[:owner_type], group[:kind], group[:subkind]].compact.join("/")
        lines << "  #{label}: #{group[:resolved]}/#{group[:total]} resolved, " \
                 "#{group[:missing]} missing, #{group[:invalid]} invalid"
      end
      result[:entries].each do |row|
        detail = row[:error] || "missing #{row[:missing_required].join(', ')}"
        lines << "  #{row[:id]}: #{detail}"
      end
      lines.join("\n")
    end
  end
end
