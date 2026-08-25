# frozen_string_literal: true

module Lorecraft
  # The compiler authority. Declares what kinds of entity exist, what relation
  # types are legal (and their rules), which effect verbs moments may use, and
  # the controlled vocabularies the repository enforces (tags, section headings,
  # prominence levels). Every declaration and every effect is validated against
  # this.
  class Schema
    KindDef = Struct.new(
      :name, :wiki, :facts, :subkinds, :identity_keys, :identity_sources,
      :identity_source_policy,
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
      :name, :label, :facts, :omitted_facts, :identity_keys, :identity_sources,
      :omitted_identity_sources, :identity_source_policy,
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
      :name, :required, :merge, :separator, :order,
      keyword_init: true
    ) do
      def required? = required == true
    end

    IdentitySourceDef = Struct.new(
      :name, :relation, :direction, :cardinality, :required, :kinds, :subkinds,
      :projection, :precedence, :order,
      keyword_init: true
    ) do
      def required? = required == true
      def relation? = !relation.nil?
    end

    RelationDef = Struct.new(
      :name, :category, :temporal, :symmetric, :inverse,
      :domain, :range, :cardinality, :exclusive_with, :description, :properties,
      :identity_keys, :identity_sources, :identity_source_policy,
      keyword_init: true
    )
    RelationPropertyDef = Struct.new(
      :name, :type, :values, :required, :minimum, :minimum_exclusive,
      :maximum, :maximum_exclusive, :requires, :exclusive_with,
      keyword_init: true
    ) do
      def required? = required == true
    end

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
      article playable_as origin_blurb veiled
    ].freeze

    PROMINENCE_LEVELS = %i[forgotten marginal recognized renowned mythic].freeze

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
    RELATION_PROPERTY_TYPES = %i[boolean entity enum frame integer number text].freeze
    FACT_DIRECTIONS = %i[outgoing incoming].freeze
    FACT_CARDINALITIES = %i[one many].freeze
    IDENTITY_MERGES = %i[append replace].freeze
    IDENTITY_SOURCE_DIRECTIONS = %i[outgoing incoming].freeze
    IDENTITY_SOURCE_CARDINALITIES = %i[one many].freeze
    FACT_CALCULATIONS = %i[
      elapsed_years first_moment_year anchor_year timeline_period timeline_duration
      previous_era next_era
    ].freeze

    attr_reader :kinds, :relations, :effects, :tags, :section_headings,
                :static_attrs, :prominence_levels, :fact_cards_required_from,
                :fact_cards_required_minimum, :playable_roles, :location_kinds,
                :playable_coverage_requirements, :playable_count_requirements,
                :focus_choice_requirements, :gm_notes_required_from,
                :gm_notes_required_minimum, :entity_summary_maximum,
                :descriptive_identities_required

    def initialize
      @kinds = {}            # kind(sym) => KindDef; wiki=false means non-reader
      @relations = {}        # name(sym) => RelationDef
      @effects = {}          # verb(sym) => description
      @tags = {}             # tag(sym) => description
      @section_headings = {} # heading(sym) => description (canonical prose sections)
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
      @descriptive_identities_required = false
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
          name: name, label: humanize(name), facts: [], omitted_facts: [],
          identity_keys: [], identity_sources: [], omitted_identity_sources: [],
          identity_source_policy: nil
        )
        @kinds[name] = KindDef.new(
          name: name, wiki: wiki, facts: [], subkinds: { name => default_subkind },
          identity_keys: [], identity_sources: [], identity_source_policy: nil
        )
      end
      KindBuilder.new(self, names.first).instance_eval(&block) if block
    end
    alias entity_types entity_type

    def kind?(name) = @kinds.key?(name&.to_sym)
    def wiki_kind?(name) = @kinds[name&.to_sym]&.wiki == true

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

    # Turn on the strict identity contract for one world after its kinds have
    # declared their reusable source axes. Other tenants can adopt the contract
    # independently instead of receiving placeholder source taxonomies from
    # shared craft.
    def require_descriptive_identities!
      @descriptive_identities_required = true
    end

    def descriptive_identities_required? = @descriptive_identities_required == true

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
        name: name, label: label || humanize(name), facts: [], omitted_facts: [],
        identity_keys: [], identity_sources: [], omitted_identity_sources: [],
        identity_source_policy: nil
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

      subkind ||= kind
      subkind_definition = definition.subkinds[subkind&.to_sym]
      compose_identity_definitions(
        definition.identity_keys + Array(subkind_definition&.identity_keys)
      )
    end

    def identity_key_for(kind, name, subkind: nil)
      identity_keys_for(kind, subkind: subkind).find { |definition| definition.name == name&.to_sym }
    end

    def identity_sources_for(kind, subkind: nil)
      definition = @kinds[kind&.to_sym]
      return [] unless definition

      subkind ||= kind
      subkind_definition = definition.subkinds[subkind&.to_sym]
      return [] if subkind_definition&.identity_source_policy == :none

      omitted = Array(subkind_definition&.omitted_identity_sources)
      inherited = definition.identity_source_policy == :none ? [] : definition.identity_sources
      compose_identity_definitions(
        inherited.reject { |source| omitted.include?(source.name) } +
        Array(subkind_definition&.identity_sources)
      ).sort_by { |source| [source.precedence, source.order] }
    end

    def relation_identity_keys(name)
      relation_def(name)&.identity_keys || []
    end

    def relation_identity_sources(name)
      definition = relation_def(name)
      return [] unless definition
      return [] if definition.identity_source_policy == :none

      definition.identity_sources.sort_by { |source| [source.precedence, source.order] }
    end

    def identity_source_policy_for(kind, subkind: nil)
      definition = @kinds[kind&.to_sym]
      return unless definition

      subkind_definition = definition.subkinds[(subkind || kind)&.to_sym]
      subkind_definition&.identity_source_policy || definition.identity_source_policy
    end

    def add_identity_key(kind, definition, subkind: nil)
      kind_definition = @kinds.fetch(kind.to_sym)
      keys = subkind ? kind_definition.subkinds.fetch(subkind.to_sym).identity_keys : kind_definition.identity_keys
      scope = subkind ? "subkind #{subkind}" : "entity kind #{kind}"
      raise DefinitionError, "duplicate identity key #{definition.name} on #{scope}" if keys.any? { |key| key.name == definition.name }

      definition.order = keys.size + 1
      keys << definition
    end

    def add_identity_source(kind, definition, subkind: nil)
      kind_definition = @kinds.fetch(kind.to_sym)
      owner = subkind ? kind_definition.subkinds.fetch(subkind.to_sym) : kind_definition
      scope = subkind ? "subkind #{subkind}" : "entity kind #{kind}"
      if owner.identity_source_policy == :none
        raise DefinitionError, "#{scope} declares no identity sources"
      end
      if owner.identity_sources.any? { |source| source.name == definition.name }
        raise DefinitionError, "duplicate identity source #{definition.name} on #{scope}"
      end

      owner.identity_source_policy = :declared
      definition.order = owner.identity_sources.size + 1
      definition.precedence ||= definition.order
      owner.identity_sources << definition
    end

    def no_identity_sources(kind, subkind: nil)
      kind_definition = @kinds.fetch(kind.to_sym)
      owner = subkind ? kind_definition.subkinds.fetch(subkind.to_sym) : kind_definition
      scope = subkind ? "subkind #{subkind}" : "entity kind #{kind}"
      unless owner.identity_sources.empty?
        raise DefinitionError, "#{scope} already declares identity sources"
      end

      owner.identity_source_policy = :none
    end

    def omit_identity_sources(kind, subkind, names)
      kind_definition = @kinds.fetch(kind.to_sym)
      subkind_definition = kind_definition.subkinds.fetch(subkind.to_sym)
      available = identity_sources_for(kind, subkind: kind).map(&:name) +
                  subkind_definition.identity_sources.map(&:name)
      names.map(&:to_sym).each do |name|
        unless available.include?(name)
          raise DefinitionError, "cannot omit unknown identity source #{name} from #{kind}/#{subkind}"
        end

        subkind_definition.omitted_identity_sources << name \
          unless subkind_definition.omitted_identity_sources.include?(name)
      end
      subkind_definition.identity_source_policy ||= :declared
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
        description: description, properties: {}, identity_keys: [], identity_sources: [],
        identity_source_policy: nil
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

    def compose_identity_definitions(definitions)
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

      def identity_key(name, required: true, merge: :append, separator: "\n\n")
        merge = merge.to_sym
        unless IDENTITY_MERGES.include?(merge)
          raise DefinitionError, "identity key #{name} on #{@kind} has unknown merge #{merge}"
        end
        unless separator.is_a?(String)
          raise DefinitionError, "identity key #{name} on #{@kind} needs a text separator"
        end

        @schema.add_identity_key(
          @kind,
          IdentityKeyDef.new(
            name: name.to_sym, required: required == true, merge: merge, separator: separator
          ),
          subkind: @subkind
        )
      end

      def identity_source(name, kinds:, keys:, subkinds: nil, cardinality: :one,
                          required: true, relation: nil, direction: :outgoing,
                          precedence: nil)
        cardinality = cardinality.to_sym
        direction = direction.to_sym
        unless IDENTITY_SOURCE_CARDINALITIES.include?(cardinality)
          raise DefinitionError, "identity source #{name} on #{@kind} has unknown cardinality #{cardinality}"
        end
        unless IDENTITY_SOURCE_DIRECTIONS.include?(direction)
          raise DefinitionError, "identity source #{name} on #{@kind} has unknown direction #{direction}"
        end
        if relation && !@schema.relation?(relation)
          raise DefinitionError, "identity source #{name} on #{@kind} uses unknown relation #{relation}"
        end

        projection = if keys.is_a?(Hash)
                       keys.to_h { |source_key, target_key| [source_key.to_sym, target_key.to_sym] }
                     else
                       Array(keys).to_h { |key| [key.to_sym, key.to_sym] }
                     end
        raise DefinitionError, "identity source #{name} on #{@kind} needs projected keys" if projection.empty?

        @schema.add_identity_source(
          @kind,
          IdentitySourceDef.new(
            name: name.to_sym,
            relation: relation&.to_sym,
            direction: direction,
            cardinality: cardinality,
            required: required == true,
            kinds: Array(kinds).map(&:to_sym),
            subkinds: Array(subkinds).map(&:to_sym),
            projection: projection,
            precedence: precedence && Integer(precedence)
          ),
          subkind: @subkind
        )
      rescue ArgumentError, TypeError
        raise DefinitionError, "identity source #{name} on #{@kind} needs an integer precedence"
      end

      def omit_identity_sources(*names)
        unless @subkind
          raise DefinitionError, "omit_identity_sources is only valid inside a subkind"
        end

        @schema.omit_identity_sources(@kind, @subkind, names)
      end

      def no_identity_sources
        @schema.no_identity_sources(@kind, subkind: @subkind)
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

        add(
          name, label: label, source: :relation, type: cardinality == :one ? :entity : :entities,
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

      def identity_key(name, required: true, merge: :append, separator: "\n\n")
        name = name.to_sym
        merge = merge.to_sym
        unless IDENTITY_MERGES.include?(merge)
          raise DefinitionError, "identity key #{name} on relation #{@relation.name} has unknown merge #{merge}"
        end
        if @relation.identity_keys.any? { |key| key.name == name }
          raise DefinitionError, "duplicate identity key #{name} on relation #{@relation.name}"
        end

        @relation.identity_keys << IdentityKeyDef.new(
          name: name,
          required: required == true,
          merge: merge,
          separator: separator.to_s,
          order: @relation.identity_keys.size + 1
        )
      end

      def identity_source(name, kinds:, keys:, subkinds: nil, cardinality: :one,
                          required: true, precedence: nil)
        name = name.to_sym
        cardinality = cardinality.to_sym
        unless IDENTITY_SOURCE_CARDINALITIES.include?(cardinality)
          raise DefinitionError, "identity source #{name} on relation #{@relation.name} has unknown cardinality #{cardinality}"
        end
        if @relation.identity_source_policy == :none
          raise DefinitionError, "relation #{@relation.name} declares no identity sources"
        end
        if @relation.identity_sources.any? { |source| source.name == name }
          raise DefinitionError, "duplicate identity source #{name} on relation #{@relation.name}"
        end

        projection = if keys.is_a?(Hash)
                       keys.to_h { |source_key, target_key| [source_key.to_sym, target_key.to_sym] }
                     else
                       Array(keys).to_h { |key| [key.to_sym, key.to_sym] }
                     end
        raise DefinitionError, "identity source #{name} on relation #{@relation.name} needs projected keys" if projection.empty?

        order = @relation.identity_sources.size + 1
        @relation.identity_source_policy = :declared
        @relation.identity_sources << IdentitySourceDef.new(
          name: name,
          relation: nil,
          direction: :outgoing,
          cardinality: cardinality,
          required: required == true,
          kinds: Array(kinds).map(&:to_sym),
          subkinds: Array(subkinds).map(&:to_sym),
          projection: projection,
          precedence: precedence ? Integer(precedence) : order,
          order: order
        )
      rescue ArgumentError, TypeError
        raise DefinitionError, "identity source #{name} on relation #{@relation.name} needs an integer precedence"
      end

      def no_identity_sources
        unless @relation.identity_sources.empty?
          raise DefinitionError, "relation #{@relation.name} already declares identity sources"
        end

        @relation.identity_source_policy = :none
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
