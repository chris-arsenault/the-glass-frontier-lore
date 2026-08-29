# frozen_string_literal: true

module Lorecraft
  # Descriptive identity is a local dictionary. A kind declares its stable
  # keys; each entry supplies string values for whichever keys apply. Nothing
  # is inherited or resolved from another entry.
  module IdentityOwner
    attr_reader :descriptive_identity_values

    def initialize_identity
      @descriptive_identity_values = {}
    end

    def add_descriptive_identity(values)
      values.each do |key, text|
        key = key.to_sym
        unless text.is_a?(String)
          raise DefinitionError, "descriptive identity #{key} on #{id} must be a string"
        end
        if @descriptive_identity_values.key?(key)
          raise DefinitionError, "duplicate descriptive identity key #{key} on #{id}"
        end

        @descriptive_identity_values[key] = text
      end
    end
  end

  module IdentityBuilder
    def descriptive_identity(values = nil, **named)
      supplied = values.nil? ? {} : values
      unless supplied.respond_to?(:to_h)
        raise DefinitionError, "descriptive identity needs a key-to-string dictionary"
      end

      dictionary = supplied.to_h.merge(named)
      raise DefinitionError, "descriptive identity needs at least one key" if dictionary.empty?

      identity_owner.add_descriptive_identity(dictionary)
    end
  end

  IdentityResolution = Struct.new(
    :owner_type, :owner_id, :descriptive_identity,
    keyword_init: true
  ) do
    def to_h
      {
        owner_type: owner_type,
        owner_id: owner_id,
        descriptive_identity: descriptive_identity,
      }
    end
  end

  # Retains the query object used by the CLI and renderers, but performs no
  # graph, relation, temporal, or cross-namespace lookup.
  class IdentityResolver
    def initialize(world, at: :now, audience: :all)
      @world = world
      @audience = audience.to_sym
    end

    def resolve(owner)
      requested = owner
      owner = @world.entity(owner) unless owner.respond_to?(:descriptive_identity_values)
      raise IdentityError, "unknown Atlas identity owner #{requested}" unless owner
      if @audience == :player && owner.respond_to?(:dm?) && owner.dm?
        raise IdentityError, "player identity cannot resolve DM owner #{owner.id}"
      end

      IdentityResolution.new(
        owner_type: owner.is_a?(EncyclopediaEntry) ? :encyclopedia : :entity,
        owner_id: owner.id,
        descriptive_identity: owner.descriptive_identity_values.dup.freeze
      )
    end
  end
end
