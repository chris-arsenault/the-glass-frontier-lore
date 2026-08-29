# frozen_string_literal: true

module Lorecraft
  # Read-only inspection of kind-declared keys and locally authored strings.
  class IdentityAudit
    def initialize(world, owner: nil, at: :now, audience: :all)
      @world = world
      @owner_id = owner&.to_sym
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
      owner = @world.entity(@owner_id)
      raise Error, "unknown Atlas identity owner: #{@owner_id}" unless owner

      keys = definitions(owner).map(&:name)
      {
        scope: :owner,
        owner: owner_summary(owner),
        schema: { keys: keys },
        descriptive_identity: owner.descriptive_identity_values,
        missing_keys: keys - owner.descriptive_identity_values.keys,
      }
    end

    def coverage_data
      rows = visible_owners.map { |owner| coverage_row(owner) }
      groups = rows.group_by { |row| [row[:owner_type], row[:kind]] }.map do |key, members|
        owner_type, kind = key
        {
          owner_type: owner_type,
          kind: kind,
          total: members.size,
          with_values: members.count { |row| row[:populated_keys].positive? },
          declared_keys: members.first[:declared_keys],
        }
      end.sort_by { |group| [group[:owner_type].to_s, group[:kind].to_s] }

      {
        scope: :coverage,
        totals: {
          owners: rows.size,
          with_values: rows.count { |row| row[:populated_keys].positive? },
        },
        groups: groups,
        entries: rows,
      }
    end

    def visible_owners
      atlas = @world.entities.values.reject do |entity|
        entity[:status] == :shell || entity.veiled? || (@audience == :player && entity.dm?)
      end
      encyclopedia = @world.encyclopedia_entries.values.reject do |entry|
        @audience == :player && entry.dm?
      end
      (atlas + encyclopedia).select do |owner|
        !definitions(owner).empty? || !owner.descriptive_identity_values.empty?
      end
    end

    def coverage_row(owner)
      keys = definitions(owner).map(&:name)
      owner_summary(owner).merge(
        declared_keys: keys.size,
        populated_keys: owner.descriptive_identity_values.size,
        missing_keys: keys - owner.descriptive_identity_values.keys,
      )
    end

    def owner_summary(owner)
      {
        owner_type: owner.is_a?(EncyclopediaEntry) ? :encyclopedia : :entity,
        id: owner.id,
        title: owner.title,
        kind: owner.kind,
        subkind: owner.subkind,
      }
    end

    def definitions(owner)
      if owner.is_a?(EncyclopediaEntry)
        @world.schema.encyclopedia_identity_keys_for(owner.kind)
      else
        @world.schema.identity_keys_for(owner.kind)
      end
    end

    def owner_report(result)
      owner = result[:owner]
      lines = ["Descriptive identity — #{owner[:owner_type]} #{owner[:id]} — #{owner[:title]}"]
      if result[:descriptive_identity].empty?
        lines << "Values: none"
      else
        lines << "Values:"
        result[:descriptive_identity].each { |key, value| lines << "  #{key}: #{value}" }
      end
      unless result[:missing_keys].empty?
        lines << "Unfilled keys: #{result[:missing_keys].join(', ')}"
      end
      lines.join("\n")
    end

    def coverage_report(result)
      totals = result[:totals]
      lines = ["Descriptive identity coverage", "  #{totals[:with_values]}/#{totals[:owners]} entries have values"]
      result[:groups].each do |group|
        lines << "  #{group[:owner_type]}/#{group[:kind]}: #{group[:with_values]}/#{group[:total]} " \
                 "with values; #{group[:declared_keys]} declared keys"
      end
      lines.join("\n")
    end
  end
end
