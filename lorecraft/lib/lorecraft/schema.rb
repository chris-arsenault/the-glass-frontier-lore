# frozen_string_literal: true

module Lorecraft
  # The compiler authority. Declares what kinds of entity exist, what relation
  # types are legal (and their rules), which effect verbs moments may use, and
  # the controlled vocabularies the repository enforces (tags, section headings,
  # prominence levels). Every declaration and every effect is validated against
  # this.
  class Schema
    KindDef = Struct.new(
      :name, :wiki, :facts, :subkinds, :identity_keys,
      keyword_init: true
    )
    PlayableRoleDef = Struct.new(:name, :description, keyword_init: true)
    PlayableCoverageRequirement = Struct.new(:role, :kinds, :exceptions, :exclusive, keyword_init: true)
    PlayableCountRequirement = Struct.new(:role, :minimum, :maximum, keyword_init: true)
    FocusChoiceRequirement = Struct.new(
      :role, :minimum, :veiled_minimum_locations, :veiled_maximum_locations,
      :veiled_majority_location_count, :veiled_cross_location_minimum,
      :veiled_required_kinds, :veiled_require_all_subkinds,
      :veiled_kind_minimum, :veiled_kind_maximum,
      keyword_init: true
    )
    SubkindDef = Struct.new(
      :name, :label, :facts, :omitted_facts,
      keyword_init: true
    )
    FactDef = Struct.new(
      :name, :label, :source, :type, :expected, :relation, :direction,
      :cardinality, :from, :calculate, :order,
      keyword_init: true
    ) do
      def expected? = expected == true
    end

    IdentityKeyDef = Struct.new(
      :name, :order,
      keyword_init: true
    )

    RelationDef = Struct.new(
      :name, :category, :temporal, :symmetric, :inverse,
      :domain, :range, :cardinality, :exclusive_with, :description, :properties,
      keyword_init: true
    )
    RelationPropertyDef = Struct.new(
      :name, :type, :values, :required, :minimum, :minimum_exclusive,
      :maximum, :maximum_exclusive, :requires, :exclusive_with,
      keyword_init: true
    ) do
      def required? = required == true
    end
    EncyclopediaKindDef = Struct.new(
      :name, :description, :fields, :identity_keys, :tiers, :classifications,
      :tiered_classifications,
      keyword_init: true
    )
    AbilityTierDef = Struct.new(
      :name, :rank, :description,
      keyword_init: true
    )
    ContextTagDef = Struct.new(
      :name, :description, :scopes, :parent, :compatible_with,
      keyword_init: true
    )
    # Static attributes are declared on an entity and never touched by moment
    # effects. Dynamic state is the opposite: only ever changed by effects.
    # These are the known static attribute names; an effect targeting one is a
    # compile error (spec §8.3). Everything else an effect sets is dynamic.
    # `structural` marks an entity everything points at for bookkeeping rather
    # than because of a world fact — an era, a period every entry is stamped
    # with. It is orthogonal to prominence: the Holding is a household name and
    # a temporal bin at once, and mixing its fan-in into the prominence tiers
    # makes the whole distribution unreadable. Topology reports these separately
    # and `web` drops them at every cut.
    DEFAULT_STATIC_ATTRS = %i[
      title summary source_id tags prominence alias region narrative_role status reviewed
      species culture era date founded registry prominence_xrefs structural subkind
      article playable_as origin_blurb veiled context_tags
    ].freeze

    PROMINENCE_LEVELS = %i[forgotten marginal recognized renowned mythic].freeze
    ENCYCLOPEDIA_PREVALENCE_LEVELS = %i[common uncommon rare].freeze
    ENCYCLOPEDIA_STATUSES = %i[shell draft complete].freeze
    ENCYCLOPEDIA_CHARACTER_ROLES = %i[species culture].freeze
    CONTEXT_SCOPES = %i[world place scene participant].freeze

    # What a GM note answers, and the only kinds `gm_note` accepts. A running
    # game consults them at different moments, which is why they are typed
    # rather than one list: `appears` decides whether the entity enters a scene
    # nobody asked for, `triggered_by` fires on something the players said, and
    # `complicates` applies once it is already present.
    GM_NOTE_KINDS = %i[appears triggered_by complicates].freeze
    GM_NOTE_MAXIMUM = 3
    GM_NOTE_SENTENCE_MAXIMUM = 3
    GM_NOTE_LENGTH_MAXIMUM = 320
    ENTITY_SUMMARY_LENGTH_MAXIMUM = 280

    FACT_TYPES = %i[text integer year entity entities].freeze
    ENCYCLOPEDIA_FIELD_TYPES = %i[text integer year].freeze
    RELATION_PROPERTY_TYPES = %i[boolean entity enum frame integer number text].freeze
    FACT_DIRECTIONS = %i[outgoing incoming].freeze
    FACT_CARDINALITIES = %i[one many].freeze
    FACT_CALCULATIONS = %i[
      elapsed_years first_moment_year anchor_year timeline_period timeline_duration
      previous_era next_era
    ].freeze

    attr_reader :kinds, :relations, :effects, :tags, :section_headings,
                :static_attrs, :prominence_levels, :fact_cards_required_from,
                :fact_cards_required_minimum, :playable_roles, :location_kinds,
                :playable_coverage_requirements, :playable_count_requirements,
                :focus_choice_requirements, :gm_notes_required_from,
                :gm_notes_required_minimum, :entity_summary_maximum, :encyclopedia_kinds,
                :context_tags, :context_tag_required_roles,
                :encyclopedia_type_kind_requirements

    def initialize
      @kinds = {}            # kind(sym) => KindDef; wiki=false means non-reader
      @entity_kind_restriction = nil
      @relations = {}        # name(sym) => RelationDef
      @effects = {}          # verb(sym) => description
      @tags = {}             # tag(sym) => description
      @section_headings = {} # heading(sym) => description (canonical prose sections)
      @encyclopedia_kinds = {}
      @context_tags = {}
      @context_tag_required_roles = []
      @encyclopedia_type_kind_requirements = {}
      @playable_roles = {}   # role(sym) => selection purpose
      @location_kinds = []   # entity kinds that require chronicle-location judgment
      @playable_coverage_requirements = []
      @playable_count_requirements = []
      @focus_choice_requirements = []
      @banned_phrases = {}   # phrase(downcased) => why this world refuses it
      @static_attrs = DEFAULT_STATIC_ATTRS.dup
      @prominence_levels = PROMINENCE_LEVELS.dup
      @require_explicit_subkinds = false
      @fact_cards_required_from = nil
      @fact_cards_required_minimum = 1
      @gm_notes_required_from = nil
      @gm_notes_required_minimum = 1
      @entity_summaries_required = false
      @entity_summary_maximum = ENTITY_SUMMARY_LENGTH_MAXIMUM
    end

    # Declare one or more entity kinds. `wiki: false` marks a kind as absent
    # from player-facing renders. DM knowledge is a separate visibility flag on
    # an entity or content block.
    def entity_type(*names, wiki: true, &block)
      if block && names.size != 1
        raise DefinitionError, "an entity_type block must name exactly one kind"
      end

      names.each do |name|
        name = name.to_sym
        raise DefinitionError, "duplicate entity kind #{name}" if @kinds.key?(name)

        default_subkind = SubkindDef.new(
          name: name, label: humanize(name), facts: [], omitted_facts: []
        )
        @kinds[name] = KindDef.new(
          name: name, wiki: wiki, facts: [], subkinds: { name => default_subkind },
          identity_keys: []
        )
      end
      KindBuilder.new(self, names.first).instance_eval(&block) if block
    end
    alias entity_types entity_type

    # Shared craft declares the complete entity vocabulary. A world may narrow
    # that vocabulary after applying any setting-specific schema extensions;
    # the underlying definitions remain available to other worlds loaded from
    # the same prelude.
    def restrict_entity_kinds!(to:)
      names = Array(to).map(&:to_sym).uniq
      raise DefinitionError, "entity kind restriction needs at least one kind" if names.empty?
      if @entity_kind_restriction
        raise DefinitionError, "duplicate entity kind restriction"
      end

      unknown = names.reject { |name| declared_kind?(name) }
      unless unknown.empty?
        raise DefinitionError, "entity kind restriction uses unknown kinds #{unknown.join(', ')}"
      end

      @entity_kind_restriction = names.freeze
    end

    def kinds
      return @kinds unless @entity_kind_restriction

      @kinds.slice(*@entity_kind_restriction)
    end

    def declared_kind?(name) = @kinds.key?(name&.to_sym)
    def kind?(name) = kinds.key?(name&.to_sym)
    def wiki_kind?(name) = kinds[name&.to_sym]&.wiki == true

    def encyclopedia_type(*names, description: nil, &block)
      if block && names.size != 1
        raise DefinitionError, "an encyclopedia_type block must name exactly one kind"
      end
      if description && names.size != 1
        raise DefinitionError, "an encyclopedia kind description needs exactly one kind"
      end

      names.each do |name|
        name = name.to_sym
        raise DefinitionError, "duplicate encyclopedia kind #{name}" if @encyclopedia_kinds.key?(name)

        @encyclopedia_kinds[name] = EncyclopediaKindDef.new(
          name: name,
          description: description&.to_s,
          fields: [],
          identity_keys: [],
          tiers: [],
          classifications: [],
          tiered_classifications: []
        )
      end
      EncyclopediaKindBuilder.new(self, names.first).instance_eval(&block) if block
    end
    alias encyclopedia_types encyclopedia_type

    def encyclopedia_kind?(name) = @encyclopedia_kinds.key?(name&.to_sym)

    def extend_encyclopedia_kind(name, &block)
      name = name.to_sym
      raise DefinitionError, "unknown encyclopedia kind #{name}" unless @encyclopedia_kinds.key?(name)

      EncyclopediaKindBuilder.new(self, name).instance_eval(&block) if block
    end

    def encyclopedia_fields_for(kind)
      @encyclopedia_kinds[kind&.to_sym]&.fields || []
    end

    def encyclopedia_field_def(kind, name)
      encyclopedia_fields_for(kind).find { |definition| definition.name == name&.to_sym }
    end

    def encyclopedia_identity_keys_for(kind)
      @encyclopedia_kinds[kind&.to_sym]&.identity_keys || []
    end

    def encyclopedia_tiers_for(kind)
      @encyclopedia_kinds[kind&.to_sym]&.tiers || []
    end

    def encyclopedia_classifications_for(kind)
      @encyclopedia_kinds[kind&.to_sym]&.classifications || []
    end

    def encyclopedia_tier_def(kind, name)
      encyclopedia_tiers_for(kind).find { |tier| tier.name == name&.to_sym }
    end

    def encyclopedia_tiered_classification?(kind, classification)
      @encyclopedia_kinds[kind&.to_sym]&.tiered_classifications&.include?(classification&.to_sym) || false
    end

    def add_encyclopedia_field(kind, definition)
      owner = @encyclopedia_kinds.fetch(kind.to_sym)
      if owner.fields.any? { |field| field.name == definition.name }
        raise DefinitionError, "duplicate field #{definition.name} on encyclopedia kind #{kind}"
      end

      definition.order = owner.fields.size + 1
      owner.fields << definition
    end

    def add_encyclopedia_identity_key(kind, definition)
      owner = @encyclopedia_kinds.fetch(kind.to_sym)
      if owner.identity_keys.any? { |key| key.name == definition.name }
        raise DefinitionError, "duplicate identity key #{definition.name} on encyclopedia kind #{kind}"
      end

      definition.order = owner.identity_keys.size + 1
      owner.identity_keys << definition
    end

    def add_encyclopedia_tier(kind, definition)
      owner = @encyclopedia_kinds.fetch(kind.to_sym)
      unless kind.to_sym == :ability
        raise DefinitionError, "tiers can only be declared on encyclopedia kind ability"
      end
      if owner.tiers.any? { |tier| tier.name == definition.name }
        raise DefinitionError, "duplicate tier #{definition.name} on encyclopedia kind #{kind}"
      end
      if owner.tiers.any? { |tier| tier.rank == definition.rank }
        raise DefinitionError, "duplicate tier rank #{definition.rank} on encyclopedia kind #{kind}"
      end

      owner.tiers << definition
      owner.tiers.sort_by!(&:rank)
    end

    def add_encyclopedia_classification(kind, name)
      owner = @encyclopedia_kinds.fetch(kind.to_sym)
      name = name.to_sym
      if owner.classifications.include?(name)
        raise DefinitionError, "duplicate classification #{name} on encyclopedia kind #{kind}"
      end

      owner.classifications << name
    end

    def add_encyclopedia_tiered_classification(kind, name)
      owner = @encyclopedia_kinds.fetch(kind.to_sym)
      name = name.to_sym
      unless owner.classifications.include?(name)
        raise DefinitionError, "tiered classification #{name} is not declared on encyclopedia kind #{kind}"
      end
      if owner.tiered_classifications.include?(name)
        raise DefinitionError, "duplicate tiered classification #{name} on encyclopedia kind #{kind}"
      end

      owner.tiered_classifications << name
    end

    def context_tag(name, description = nil, scopes:, parent: nil, compatible_with: [])
      name = name.to_sym
      raise DefinitionError, "duplicate context tag #{name}" if @context_tags.key?(name)

      normalized_scopes = Array(scopes).map(&:to_sym).uniq
      unknown = normalized_scopes - CONTEXT_SCOPES
      unless unknown.empty?
        raise DefinitionError, "context tag #{name} uses unknown scopes #{unknown.join(', ')}"
      end
      raise DefinitionError, "context tag #{name} needs at least one scope" if normalized_scopes.empty?

      @context_tags[name] = ContextTagDef.new(
        name: name,
        description: description,
        scopes: normalized_scopes,
        parent: parent&.to_sym,
        compatible_with: Array(compatible_with).map(&:to_sym).uniq
      )
    end

    def require_context_tags!(for_playable:)
      role = checked_playable_role(for_playable)
      @context_tag_required_roles << role unless @context_tag_required_roles.include?(role)
    end

    def require_encyclopedia_type_kind!(atlas_kind:, encyclopedia_kind:)
      atlas_kind = atlas_kind.to_sym
      encyclopedia_kind = encyclopedia_kind.to_sym
      raise DefinitionError, "unknown Atlas kind #{atlas_kind}" unless kind?(atlas_kind)
      unless encyclopedia_kind?(encyclopedia_kind)
        raise DefinitionError, "unknown Encyclopedia kind #{encyclopedia_kind}"
      end
      if @encyclopedia_type_kind_requirements.key?(atlas_kind)
        raise DefinitionError, "duplicate Encyclopedia type-kind requirement for #{atlas_kind}"
      end

      @encyclopedia_type_kind_requirements[atlas_kind] = encyclopedia_kind
    end

    # A role exposed by a game-facing selection flow. Entries opt into or out
    # of roles explicitly; kind alone never makes an entry playable.
    def playable_role(name, description = nil)
      name = name.to_sym
      raise DefinitionError, "duplicate playable role #{name}" if @playable_roles.key?(name)

      @playable_roles[name] = PlayableRoleDef.new(name: name, description: description)
    end

    def playable_role?(name) = @playable_roles.key?(name&.to_sym)

    # Declare which kinds represent physical places. This supports complete
    # editorial decisions without forcing every place into a playable role.
    def location_kind(*names)
      names.flatten.each do |name|
        name = name.to_sym
        raise DefinitionError, "unknown location kind #{name}" unless kind?(name)

        @location_kinds << name unless @location_kinds.include?(name)
      end
    end
    def location_kind?(name) = @location_kinds.include?(name&.to_sym)

    # Require every entity of the listed kinds to accept the role except for a
    # small named set. `exclusive: true` also prevents other kinds from
    # accepting the role.
    def require_playable_coverage!(role, kinds:, except: [], exclusive: false)
      role = checked_playable_role(role)
      kinds = Array(kinds).map(&:to_sym).uniq
      exceptions = Array(except).map(&:to_sym).uniq
      raise DefinitionError, "playable coverage requirement needs at least one kind" if kinds.empty?

      unknown = kinds.reject { |kind| kind?(kind) }
      unless unknown.empty?
        raise DefinitionError, "playable coverage requirement uses unknown kinds #{unknown.join(', ')}"
      end
      if @playable_coverage_requirements.any? { |requirement| requirement.role == role }
        raise DefinitionError, "duplicate playable coverage requirement for #{role}"
      end

      @playable_coverage_requirements << PlayableCoverageRequirement.new(
        role: role,
        kinds: kinds.freeze,
        exceptions: exceptions.freeze,
        exclusive: exclusive == true
      )
    end

    # Keep a player-facing choice set within the range this world considers
    # readable and meaningful.
    def require_playable_count!(role, minimum:, maximum: nil)
      role = checked_playable_role(role)
      unless minimum.is_a?(Integer) && minimum.positive?
        raise DefinitionError, "playable count minimum must be a positive integer"
      end
      if maximum && (!maximum.is_a?(Integer) || maximum < minimum)
        raise DefinitionError, "playable count maximum must be an integer at least as large as the minimum"
      end
      if @playable_count_requirements.any? { |requirement| requirement.role == role }
        raise DefinitionError, "duplicate playable count requirement for #{role}"
      end

      @playable_count_requirements << PlayableCountRequirement.new(
        role: role, minimum: minimum, maximum: maximum
      )
    end

    # Require enough one-hop non-location choices around each location accepted
    # for a role. The veiled settings constrain how widely each thin entry may
    # travel and can require a strict majority at one exact membership count.
    def require_focus_choices!(role:, minimum:, veiled_minimum_locations: nil,
                               veiled_maximum_locations: nil,
                               veiled_majority_location_count: nil,
                               veiled_cross_location_minimum: nil,
                               veiled_required_kinds: [],
                               veiled_require_all_subkinds: false,
                               veiled_kind_minimum: nil,
                               veiled_kind_maximum: nil)
      role = checked_playable_role(role)
      required_kinds = Array(veiled_required_kinds).map(&:to_sym).uniq
      positive_integer!(minimum, "focus choice minimum")
      positive_integer!(veiled_minimum_locations, "veiled location minimum", optional: true)
      positive_integer!(veiled_maximum_locations, "veiled location maximum", optional: true)
      positive_integer!(veiled_majority_location_count, "veiled majority location count", optional: true)
      nonnegative_integer!(veiled_cross_location_minimum, "veiled cross-location minimum", optional: true)
      positive_integer!(veiled_kind_minimum, "veiled kind minimum", optional: true)
      positive_integer!(veiled_kind_maximum, "veiled kind maximum", optional: true)
      unknown_kinds = required_kinds.reject { |kind| kind?(kind) }
      unless unknown_kinds.empty?
        raise DefinitionError, "focus choice requirement uses unknown veiled kinds #{unknown_kinds.join(', ')}"
      end
      invalid_kinds = required_kinds.reject { |kind| wiki_kind?(kind) && !location_kind?(kind) }
      unless invalid_kinds.empty?
        raise DefinitionError,
              "focus choice requirement uses non-reader or location veiled kinds #{invalid_kinds.join(', ')}"
      end
      if veiled_minimum_locations && veiled_maximum_locations &&
         veiled_maximum_locations < veiled_minimum_locations
        raise DefinitionError, "veiled location maximum must be at least as large as the minimum"
      end
      if veiled_kind_minimum && veiled_kind_maximum && veiled_kind_maximum < veiled_kind_minimum
        raise DefinitionError, "veiled kind maximum must be at least as large as the minimum"
      end
      if (veiled_require_all_subkinds || veiled_kind_minimum || veiled_kind_maximum) && required_kinds.empty?
        raise DefinitionError, "veiled kind distribution constraints require veiled_required_kinds"
      end
      if veiled_majority_location_count &&
         ((veiled_minimum_locations && veiled_majority_location_count < veiled_minimum_locations) ||
          (veiled_maximum_locations && veiled_majority_location_count > veiled_maximum_locations))
        raise DefinitionError, "veiled majority location count must fall within the allowed range"
      end
      if @focus_choice_requirements.any? { |requirement| requirement.role == role }
        raise DefinitionError, "duplicate focus choice requirement for #{role}"
      end

      @focus_choice_requirements << FocusChoiceRequirement.new(
        role: role,
        minimum: minimum,
        veiled_minimum_locations: veiled_minimum_locations,
        veiled_maximum_locations: veiled_maximum_locations,
        veiled_majority_location_count: veiled_majority_location_count,
        veiled_cross_location_minimum: veiled_cross_location_minimum,
        veiled_required_kinds: required_kinds.freeze,
        veiled_require_all_subkinds: veiled_require_all_subkinds == true,
        veiled_kind_minimum: veiled_kind_minimum,
        veiled_kind_maximum: veiled_kind_maximum
      )
    end

    def require_explicit_subkinds! = @require_explicit_subkinds = true
    def explicit_subkinds_required? = @require_explicit_subkinds

    # Require every written reader entity to carry its own concise identity
    # statement. Lead prose is not a summary: it may begin with a scene,
    # operation, or consequence and it must never be truncated into metadata.
    def require_entity_summaries!(maximum: ENTITY_SUMMARY_LENGTH_MAXIMUM)
      unless maximum.is_a?(Integer) && maximum.positive?
        raise DefinitionError, "entity summary maximum must be a positive integer"
      end
      raise DefinitionError, "duplicate entity summary requirement" if @entity_summaries_required

      @entity_summaries_required = true
      @entity_summary_maximum = maximum
    end

    def entity_summaries_required? = @entity_summaries_required

    def require_fact_cards!(from: :renowned, minimum: 1)
      from = from.to_sym
      unless prominence?(from)
        raise DefinitionError, "fact-card requirement uses unknown prominence #{from}"
      end
      unless minimum.is_a?(Integer) && minimum.positive?
        raise DefinitionError, "fact-card minimum must be a positive integer"
      end

      @fact_cards_required_from = from
      @fact_cards_required_minimum = minimum
    end

    def gm_note_kind?(name) = GM_NOTE_KINDS.include?(name&.to_sym)

    # Require GM notes on every entry a running game can be offered at this
    # prominence and above. Turn this on once a world has written them; before
    # that it manufactures filler.
    def require_gm_notes!(from: :forgotten, minimum: 1)
      from = from.to_sym
      unless prominence?(from)
        raise DefinitionError, "GM-note requirement uses unknown prominence #{from}"
      end
      unless minimum.is_a?(Integer) && minimum.positive? && minimum <= GM_NOTE_MAXIMUM
        raise DefinitionError, "GM-note minimum must be between 1 and #{GM_NOTE_MAXIMUM}"
      end

      @gm_notes_required_from = from
      @gm_notes_required_minimum = minimum
    end

    def extend_kind(name, &block)
      name = name.to_sym
      raise DefinitionError, "cannot extend unknown entity kind #{name}" unless kind?(name)

      KindBuilder.new(self, name).instance_eval(&block) if block
    end

    def extend_subkind(kind, name, &block)
      kind = kind.to_sym
      name = name.to_sym
      raise DefinitionError, "cannot extend unknown entity kind #{kind}" unless kind?(kind)
      unless subkind?(kind, name)
        raise DefinitionError, "cannot extend unknown subkind #{name} on entity kind #{kind}"
      end

      KindBuilder.new(self, kind, subkind: name).instance_eval(&block) if block
    end

    def subkind?(kind, name) = @kinds[kind&.to_sym]&.subkinds&.key?(name&.to_sym) == true
    def subkind_def(kind, name) = @kinds[kind&.to_sym]&.subkinds&.[](name&.to_sym)
    def subkinds_for(kind) = @kinds[kind&.to_sym]&.subkinds || {}

    def add_subkind(kind, name, label: nil)
      kind = kind.to_sym
      name = name.to_sym
      definition = @kinds.fetch(kind)
      if definition.subkinds.key?(name) && name != kind
        raise DefinitionError, "duplicate subkind #{name} on entity kind #{kind}"
      end

      definition.subkinds[name] ||= SubkindDef.new(
        name: name, label: label || humanize(name), facts: [], omitted_facts: []
      )
    end

    def facts_for(kind, subkind: nil, custom: [])
      definition = @kinds[kind&.to_sym]
      return [] unless definition

      subkind ||= kind
      subkind_definition = definition.subkinds[subkind&.to_sym]
      omitted = Array(subkind_definition&.omitted_facts)
      inherited = definition.facts.reject { |fact| omitted.include?(fact.name) } +
                  Array(subkind_definition&.facts).reject { |fact| omitted.include?(fact.name) }
      compose_facts(inherited + Array(custom))
    end

    def fact_def(kind, name, subkind: nil, custom: [])
      facts_for(kind, subkind: subkind, custom: custom)
        .find { |definition| definition.name == name&.to_sym }
    end

    def add_fact(kind, definition, subkind: nil)
      kind_definition = @kinds.fetch(kind.to_sym)
      facts = subkind ? kind_definition.subkinds.fetch(subkind.to_sym).facts : kind_definition.facts
      if facts.any? { |existing| existing.name == definition.name }
        scope = subkind ? "subkind #{subkind}" : "entity kind #{kind}"
        raise DefinitionError, "duplicate fact #{definition.name} on #{scope}"
      end

      definition.order = facts.size + 1
      facts << definition
    end

    def omit_facts(kind, subkind, names)
      kind_definition = @kinds.fetch(kind.to_sym)
      subkind_definition = kind_definition.subkinds.fetch(subkind.to_sym)
      available = (kind_definition.facts + subkind_definition.facts).map(&:name)
      names.map(&:to_sym).each do |name|
        unless available.include?(name)
          raise DefinitionError, "cannot omit unknown fact #{name} from #{kind}/#{subkind}"
        end

        subkind_definition.omitted_facts << name unless subkind_definition.omitted_facts.include?(name)
      end
    end

    def identity_keys_for(kind, subkind: nil)
      definition = @kinds[kind&.to_sym]
      return [] unless definition

      definition.identity_keys
    end

    def identity_key_for(kind, name, subkind: nil)
      identity_keys_for(kind, subkind: subkind).find { |definition| definition.name == name&.to_sym }
    end

    def add_identity_key(kind, definition, subkind: nil)
      if subkind
        raise DefinitionError, "descriptive identity keys are declared at kind level, not subkind #{subkind}"
      end

      kind_definition = @kinds.fetch(kind.to_sym)
      keys = kind_definition.identity_keys
      raise DefinitionError, "duplicate identity key #{definition.name} on entity kind #{kind}" if keys.any? { |key| key.name == definition.name }

      definition.order = keys.size + 1
      keys << definition
    end

    # Declare a relation type. Mirrors the repository taxonomy (category +
    # temporal) and adds the optional structural rules the spec asks for
    # (symmetric/inverse/domain/range/cardinality/exclusivity), validated only
    # when present so the repo's looser taxonomy still loads.
    def relation(name, category: :general, temporal: false, symmetric: false,
                 inverse: nil, domain: nil, range: nil, cardinality: :many,
                 exclusive_with: nil, description: nil, &block)
      name = name.to_sym
      raise DefinitionError, "duplicate relation #{name}" if @relations.key?(name)

      @relations[name] = RelationDef.new(
        name: name, category: category, temporal: temporal, symmetric: symmetric,
        inverse: inverse&.to_sym, domain: arr(domain), range: arr(range),
        cardinality: cardinality, exclusive_with: arr(exclusive_with),
        description: description, properties: {}
      )
      RelationBuilder.new(self, @relations.fetch(name)).instance_eval(&block) if block
    end

    def relation?(name) = @relations.key?(name&.to_sym)
    def relation_def(name) = @relations[name&.to_sym]

    # A world may narrow a shared relation to the kinds it actually uses and
    # supply its setting-specific description. It cannot change the relation's
    # category, temporality, symmetry, inverse, or cardinality.
    def extend_relation(name, domain: nil, range: nil, description: nil, &block)
      definition = relation_def(name) or
        raise DefinitionError, "cannot extend unknown relation #{name}"

      definition.domain = arr(domain) unless domain.nil?
      definition.range = arr(range) unless range.nil?
      definition.description = description unless description.nil?
      RelationBuilder.new(self, definition).instance_eval(&block) if block
      definition
    end

    def effect(verb, description = nil) = @effects[verb.to_sym] = description
    def effect?(verb) = @effects.key?(verb&.to_sym)

    def tag(name, description = nil) = @tags[name.to_sym] = description
    def tag?(name) = @tags.key?(name&.to_sym)

    def section_heading(name, description = nil) = @section_headings[name.to_sym] = description

    # Prose this world will not contain, with the reason it will not. A world
    # acquires these by catching itself: a phrase that turned up four times in a
    # first draft is a habit, and a habit that survives review becomes the house
    # style whether anyone chose it or not.
    #
    #   ban_phrase "which is the point", "narrator verdict — state the fact and stop"
    def ban_phrase(text, reason) = @banned_phrases[text.to_s.downcase] = reason

    attr_reader :banned_phrases

    # Who drafted a block that does not say. A statement about the corpus as a
    # whole — declaring `:ai` says "unless a block claims otherwise, a machine
    # wrote it", which is true of a world drafted in assisted sessions and saves
    # asserting it on every block. Provenance applies it; the block's own field
    # stays literal, so `declared?` still means the author said so.
    def drafted_by_default(who) = @default_drafter = who&.to_sym

    attr_reader :default_drafter
    def section_heading?(name) = @section_headings.empty? || @section_headings.key?(name&.to_sym)

    def static_attr?(name) = @static_attrs.include?(name&.to_sym)
    def declare_static_attr(*names) = names.each { |n| @static_attrs << n.to_sym }

    def prominence?(level) = @prominence_levels.include?(level&.to_sym)

    private

    def checked_playable_role(role)
      role = role.to_sym
      raise DefinitionError, "unknown playable role #{role}" unless playable_role?(role)

      role
    end

    def positive_integer!(value, label, optional: false)
      return if optional && value.nil?
      return if value.is_a?(Integer) && value.positive?

      raise DefinitionError, "#{label} must be a positive integer"
    end

    def nonnegative_integer!(value, label, optional: false)
      return if optional && value.nil?
      return if value.is_a?(Integer) && value >= 0

      raise DefinitionError, "#{label} must be a nonnegative integer"
    end

    def compose_facts(definitions)
      definitions.each_with_object([]) do |definition, composed|
        existing = composed.index { |item| item.name == definition.name }
        existing ? composed[existing] = definition : composed << definition
      end
    end

    def humanize(value)
      value.to_s.split("_").map(&:capitalize).join(" ")
    end

    def arr(v)
      return nil if v.nil?
      Array(v).map(&:to_sym)
    end

    # Encyclopedia schema varies by kind only. `subkind` remains an authored
    # classification on an entry and cannot add or remove fields.
    class EncyclopediaKindBuilder
      def initialize(schema, kind)
        @schema = schema
        @kind = kind.to_sym
      end

      def field(name, type:, label: nil, expected: true)
        type = type.to_sym
        unless ENCYCLOPEDIA_FIELD_TYPES.include?(type)
          raise DefinitionError, "field #{name} on encyclopedia kind #{@kind} has unknown type #{type}"
        end

        @schema.add_encyclopedia_field(
          @kind,
          FactDef.new(
            name: name.to_sym,
            label: label || name.to_s.split("_").map(&:capitalize).join(" "),
            source: :attribute,
            type: type,
            expected: expected == true
          )
        )
      end

      def subkind(*)
        raise DefinitionError,
              "encyclopedia schema is declared at kind level; subkind is authored classification"
      end

      # Classifications constrain the authored subkind vocabulary without
      # creating a second schema layer. Fields and identity keys remain owned
      # by the Encyclopedia kind.
      def classifications(*names)
        names = names.flatten
        if names.empty?
          raise DefinitionError, "encyclopedia kind #{@kind} classifications need at least one name"
        end

        names.each { |name| @schema.add_encyclopedia_classification(@kind, name) }
      end

      def tiered_classifications(*names)
        names = names.flatten
        if names.empty?
          raise DefinitionError, "encyclopedia kind #{@kind} tiered classifications need at least one name"
        end

        names.each { |name| @schema.add_encyclopedia_tiered_classification(@kind, name) }
      end

      def identity_key(name)
        @schema.add_encyclopedia_identity_key(
          @kind,
          IdentityKeyDef.new(name: name.to_sym)
        )
      end

      def tier(name, rank:, description: nil)
        unless rank.is_a?(Integer) && rank.positive?
          raise DefinitionError, "tier #{name} on encyclopedia kind #{@kind} needs a positive integer rank"
        end

        @schema.add_encyclopedia_tier(
          @kind,
          AbilityTierDef.new(
            name: name.to_sym,
            rank: rank,
            description: description&.to_s
          )
        )
      end
    end

    class KindBuilder
      def initialize(schema, kind, subkind: nil)
        @schema = schema
        @kind = kind.to_sym
        @subkind = subkind&.to_sym
      end


      def subkind(name, label: nil, &block)
        definition = @schema.add_subkind(@kind, name, label: label)
        KindBuilder.new(@schema, @kind, subkind: definition.name).instance_eval(&block) if block
      end

      def omit_facts(*names)
        unless @subkind
          raise DefinitionError, "omit_facts is only valid inside a subkind"
        end

        @schema.omit_facts(@kind, @subkind, names)
      end

      def identity_key(name)
        if @subkind
          raise DefinitionError,
                "descriptive identity keys are declared at kind level, not subkind #{@subkind}"
        end

        @schema.add_identity_key(
          @kind,
          IdentityKeyDef.new(name: name.to_sym)
        )
      end

      def field(name, type: :text, label: nil, expected: true)
        type = type.to_sym
        unless FACT_TYPES.include?(type)
          raise DefinitionError, "fact #{name} on #{@kind} has unknown type #{type}"
        end

        add(name, label: label, source: :attribute, type: type, expected: expected)
      end

      def relation_field(name, relation:, direction: :outgoing, cardinality: :many,
                         label: nil, expected: true)
        relation = relation.to_sym
        direction = direction.to_sym
        cardinality = cardinality.to_sym
        raise DefinitionError, "fact #{name} on #{@kind} uses unknown relation #{relation}" \
          unless @schema.relation?(relation)
        raise DefinitionError, "fact #{name} on #{@kind} has unknown direction #{direction}" \
          unless FACT_DIRECTIONS.include?(direction)
        raise DefinitionError, "fact #{name} on #{@kind} has unknown cardinality #{cardinality}" \
          unless FACT_CARDINALITIES.include?(cardinality)

        source = :relation
        type = cardinality == :one ? :entity : :entities
        add(
          name, label: label, source: source, type: type,
          expected: expected, relation: relation, direction: direction, cardinality: cardinality
        )
      end

      def calculated(name, from: nil, calculate:, type: :integer, label: nil, expected: false)
        calculate = calculate.to_sym
        type = type.to_sym
        unless FACT_CALCULATIONS.include?(calculate)
          raise DefinitionError, "fact #{name} on #{@kind} has unknown calculation #{calculate}"
        end
        unless FACT_TYPES.include?(type)
          raise DefinitionError, "fact #{name} on #{@kind} has unknown type #{type}"
        end
        if %i[elapsed_years anchor_year].include?(calculate) && from.nil?
          raise DefinitionError, "fact #{name} on #{@kind} needs a source fact"
        end
        if from && !@schema.fact_def(@kind, from, subkind: @subkind)
          raise DefinitionError, "fact #{name} on #{@kind} uses unknown source fact #{from}"
        end

        add(
          name, label: label, source: :calculated, type: type, expected: expected,
          from: from&.to_sym, calculate: calculate
        )
      end

      private

      def add(name, **attributes)
        name = name.to_sym
        label = attributes.delete(:label) || name.to_s.split("_").map(&:capitalize).join(" ")
        @schema.add_fact(
          @kind,
          FactDef.new(name: name, label: label, **attributes),
          subkind: @subkind
        )
      end
    end

    class RelationBuilder
      def initialize(schema, relation)
        @schema = schema
        @relation = relation
      end

      def property(name, type:, values: nil, required: false,
                   minimum: nil, minimum_exclusive: nil,
                   maximum: nil, maximum_exclusive: nil,
                   requires: nil, exclusive_with: nil)
        name = name.to_sym
        type = type.to_sym
        unless RELATION_PROPERTY_TYPES.include?(type)
          raise DefinitionError, "property #{name} on #{@relation.name} has unknown type #{type}"
        end
        if @relation.properties.key?(name)
          raise DefinitionError, "duplicate property #{name} on relation #{@relation.name}"
        end
        if type == :enum && Array(values).empty?
          raise DefinitionError, "enum property #{name} on #{@relation.name} needs values"
        end

        @relation.properties[name] = RelationPropertyDef.new(
          name: name,
          type: type,
          values: Array(values).map(&:to_sym),
          required: required == true,
          minimum: minimum,
          minimum_exclusive: minimum_exclusive,
          maximum: maximum,
          maximum_exclusive: maximum_exclusive,
          requires: Array(requires).map(&:to_sym),
          exclusive_with: Array(exclusive_with).map(&:to_sym)
        )
      end
    end
  end
end
