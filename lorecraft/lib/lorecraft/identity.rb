# frozen_string_literal: true

require_relative "edges"

module Lorecraft
  # One authored local value. Sources are composed first; local values then
  # either extend the inherited text or replace it for this owner only.
  IdentityLocalValue = Struct.new(:key, :text, :operation, :source_line, keyword_init: true)

  # Shared storage for entities and named relationship instances. Identity
  # source assignments stay normalized references; inherited text is resolved
  # by IdentityResolver and is never copied into this owner.
  module IdentityOwner
    attr_reader :identity_source_values, :local_identity_values

    def initialize_identity
      @identity_source_values = {}
      @local_identity_values = {}
    end

    def add_identity_sources(slot, values)
      slot = slot.to_sym
      ids = Array(values).flatten.map(&:to_sym)
      current = (@identity_source_values[slot] ||= [])
      duplicate = ids.find { |id| current.include?(id) }
      raise DefinitionError, "duplicate identity source #{duplicate} in slot #{slot} on #{id}" if duplicate

      current.concat(ids)
    end

    def add_local_identity(values, operation:, source_line: nil)
      values.each do |key, text|
        key = key.to_sym
        if @local_identity_values.key?(key)
          raise DefinitionError, "duplicate local identity key #{key} on #{id}"
        end

        @local_identity_values[key] = IdentityLocalValue.new(
          key: key,
          text: text,
          operation: operation.to_sym,
          source_line: source_line
        )
      end
    end
  end

  # The authoring surface shared by Entity::Builder and
  # RelationInstance::Builder.
  module IdentityBuilder
    def identity_source(slot, *ids)
      raise DefinitionError, "identity source #{slot} needs at least one target" if ids.flatten.empty?

      identity_owner.add_identity_sources(slot, ids)
    end

    # Local identity extends inherited source text by default. Use
    # override_identity when the inherited norm does not apply to this owner.
    def descriptive_identity(values = nil, **named)
      write_identity(:extend, values, named)
    end
    alias extend_identity descriptive_identity

    def override_identity(values = nil, **named)
      write_identity(:override, values, named)
    end

    private

    def write_identity(operation, values, named)
      supplied = values.nil? ? {} : values
      unless supplied.respond_to?(:to_h)
        raise DefinitionError, "#{operation} identity needs a key-to-text dictionary"
      end

      dictionary = supplied.to_h.merge(named)
      raise DefinitionError, "#{operation} identity needs at least one key" if dictionary.empty?

      identity_owner.add_local_identity(
        dictionary,
        operation: operation,
        source_line: caller_locations(2, 1).first&.lineno
      )
    end
  end

  IdentityContribution = Struct.new(
    :key, :text, :operation, :owner_type, :owner_id, :source_slot, :source_id,
    :source_key, :suppressed,
    keyword_init: true
  ) do
    def to_h
      {
        key: key,
        text: text,
        operation: operation,
        owner_type: owner_type,
        owner_id: owner_id,
        source_slot: source_slot,
        source_id: source_id,
        source_key: source_key,
        suppressed: suppressed == true,
      }.compact
    end
  end

  IdentityResolution = Struct.new(
    :owner_type, :owner_id, :generated_at, :descriptive_identity, :sources,
    :local, :provenance, :missing_required,
    keyword_init: true
  ) do
    def to_h
      {
        owner_type: owner_type,
        owner_id: owner_id,
        generated_at: generated_at,
        descriptive_identity: descriptive_identity,
        sources: sources,
        local: local,
        provenance: provenance.transform_values { |rows| rows.map(&:to_h) },
        missing_required: missing_required,
      }
    end
  end

  # Resolves a descriptive identity against one temporal snapshot. Only source
  # slots declared by the owner's schema participate. Direct references are
  # static; relation-backed slots select live edges at the requested year.
  class IdentityResolver
    def initialize(world, at: :now, audience: :all)
      @world = world
      @year = world.timeline.year_for(at)
      @audience = audience.to_sym
      @cache = {}
      @edges = Edges.new(world, at: @year, audience: @audience)
    end

    attr_reader :year

    def resolve(owner)
      owner = resolve_owner(owner)
      key = owner_key(owner)
      return @cache[key] if @cache.key?(key)

      @cache[key] = resolve_owner_identity(owner, stack: [])
    end

    private

    def resolve_owner(value)
      return value if value.is_a?(Entity) || value.is_a?(RelationInstance)

      @world[value.to_sym] || raise(IdentityError, "unknown identity owner #{value}")
    end

    def resolve_owner_identity(owner, stack:)
      key = owner_key(owner)
      if stack.include?(key)
        chain = (stack + [key]).map { |type, id| "#{type}:#{id}" }.join(" -> ")
        raise IdentityError, "descriptive identity source cycle: #{chain}"
      end
      if @audience == :player && owner.respond_to?(:dm?) && owner.dm?
        raise IdentityError, "player identity cannot resolve DM owner #{owner.id}"
      end
      return blank_slate(owner) if veiled?(owner)

      keys, source_definitions = definitions_for(owner)
      key_index = keys.to_h { |definition| [definition.name, definition] }
      contributions = Hash.new { |hash, name| hash[name] = [] }
      source_rows = []

      source_definitions.each do |source_definition|
        source_ids = source_ids_for(owner, source_definition)
        check_cardinality!(owner, source_definition, source_ids)
        source_ids.each do |source_id|
          source = @world.entity(source_id)
          raise IdentityError, "#{owner_label(owner)} identity source #{source_id} is unknown" unless source
          if @audience == :player && source.dm?
            raise IdentityError, "#{owner_label(owner)} identity source #{source_id} is DM-only"
          end
          check_source_compatibility!(owner, source_definition, source)

          source_resolution = @cache[owner_key(source)] ||
                              resolve_owner_identity(source, stack: stack + [key])
          @cache[owner_key(source)] = source_resolution
          unless source_resolution.missing_required.empty?
            raise IdentityError,
                  "#{owner_label(owner)} identity source #{source.id} is missing required keys " \
                  "#{source_resolution.missing_required.join(', ')}"
          end
          source_rows << {
            slot: source_definition.name,
            id: source.id,
            via: source_definition.relation? ? :relation : :direct,
            relation: source_definition.relation,
          }.compact
          source_definition.projection.each do |source_key, target_key|
            text = source_resolution.descriptive_identity[source_key]
            next if text.nil? || text.empty?

            target_definition = key_index[target_key]
            unless target_definition
              raise IdentityError,
                    "#{owner_label(owner)} source slot #{source_definition.name} projects unknown key #{target_key}"
            end
            contribution = IdentityContribution.new(
              key: target_key,
              text: text,
              operation: target_definition.merge == :replace ? :replace : :extend,
              owner_type: owner_type(owner),
              owner_id: owner.id,
              source_slot: source_definition.name,
              source_id: source.id,
              source_key: source_key,
              suppressed: false
            )
            apply_contribution(contributions[target_key], contribution)
          end
        end
      end

      local = {}
      owner.local_identity_values.each_value do |value|
        definition = key_index[value.key]
        raise IdentityError, "#{owner_label(owner)} uses unknown identity key #{value.key}" unless definition

        contribution = IdentityContribution.new(
          key: value.key,
          text: value.text,
          operation: value.operation,
          owner_type: owner_type(owner),
          owner_id: owner.id,
          suppressed: false
        )
        apply_contribution(contributions[value.key], contribution)
        local[value.key] = { operation: value.operation, text: value.text }
      end

      resolved = keys.each_with_object({}) do |definition, dictionary|
        active = contributions[definition.name].reject(&:suppressed)
        next if active.empty?

        dictionary[definition.name] = active.map(&:text).join(definition.separator)
      end
      missing = keys.select(&:required?).map(&:name).reject { |name| resolved.key?(name) }

      IdentityResolution.new(
        owner_type: owner_type(owner),
        owner_id: owner.id,
        generated_at: @year,
        descriptive_identity: resolved.freeze,
        sources: source_rows.freeze,
        local: local.freeze,
        provenance: contributions.freeze,
        missing_required: missing.freeze
      )
    end

    def definitions_for(owner)
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

    def source_ids_for(owner, definition)
      return Array(owner.identity_source_values[definition.name]) unless definition.relation?
      unless owner.is_a?(Entity)
        raise IdentityError, "relationship identity source #{definition.name} cannot derive from an edge"
      end

      @edges.touching(owner.id).filter_map do |edge|
        next unless edge.live && edge.relation == definition.relation
        if definition.direction == :outgoing
          edge.target if edge.subject == owner.id
        else
          edge.subject if edge.target == owner.id
        end
      end.uniq
    end

    def check_cardinality!(owner, definition, source_ids)
      required_minimum = definition.required? ? 1 : 0
      if source_ids.size < required_minimum
        raise IdentityError, "#{owner_label(owner)} needs identity source #{definition.name}"
      end
      if definition.cardinality == :one && source_ids.size > 1
        raise IdentityError,
              "#{owner_label(owner)} identity source #{definition.name} expects one target, got #{source_ids.size}"
      end
    end

    def check_source_compatibility!(owner, definition, source)
      unless definition.kinds.include?(source.kind)
        raise IdentityError,
              "#{owner_label(owner)} identity source #{definition.name} target #{source.id} has kind " \
              "#{source.kind}; expected #{definition.kinds.join(', ')}"
      end
      unless definition.subkinds.empty? || definition.subkinds.include?(source.subkind)
        raise IdentityError,
              "#{owner_label(owner)} identity source #{definition.name} target #{source.id} has subkind " \
              "#{source.subkind}; expected #{definition.subkinds.join(', ')}"
      end
      if source[:status] != :complete
        raise IdentityError,
              "#{owner_label(owner)} identity source #{definition.name} target #{source.id} must be complete"
      end
      if source.veiled?
        raise IdentityError,
              "#{owner_label(owner)} identity source #{definition.name} target #{source.id} cannot be veiled"
      end
      if source.prose_blocks.empty? || source.prose_blocks.all? { |block| block.text.strip.empty? }
        raise IdentityError,
              "#{owner_label(owner)} identity source #{definition.name} target #{source.id} needs a full article"
      end
    end

    def apply_contribution(existing, contribution)
      if contribution.operation == :override || contribution.operation == :replace
        existing.each { |row| row.suppressed = true }
      end
      existing << contribution
    end

    def veiled?(owner) = owner.respond_to?(:veiled?) && owner.veiled?

    # A veiled entity is a blank slate: play establishes it, so it resolves no
    # identity, satisfies no requirements, and inherits from no sources.
    def blank_slate(owner)
      IdentityResolution.new(
        owner_type: owner_type(owner),
        owner_id: owner.id,
        generated_at: @year,
        descriptive_identity: {}.freeze,
        sources: [].freeze,
        local: {}.freeze,
        provenance: {}.freeze,
        missing_required: [].freeze
      )
    end

    def owner_key(owner) = [owner_type(owner), owner.id]
    def owner_type(owner) = owner.is_a?(RelationInstance) ? :relationship : :entity
    def owner_label(owner) = "#{owner_type(owner)} #{owner.id}"
  end
end
