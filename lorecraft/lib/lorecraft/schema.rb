# frozen_string_literal: true

module Lorecraft
  # The compiler authority. Declares what kinds of entity exist, what relation
  # types are legal (and their rules), which effect verbs moments may use, and
  # the controlled vocabularies the repository enforces (tags, section headings,
  # prominence levels). Every declaration and every effect is validated against
  # this.
  class Schema
    KindDef = Struct.new(:name, :wiki, :facts, :subkinds, keyword_init: true)
    PlayableRoleDef = Struct.new(:name, :description, keyword_init: true)
    PlayableCoverageRequirement = Struct.new(:role, :kinds, :exceptions, :exclusive, keyword_init: true)
    PlayableCountRequirement = Struct.new(:role, :minimum, :maximum, keyword_init: true)
    FocusChoiceRequirement = Struct.new(
      :role, :minimum, :veiled_minimum_locations, :veiled_maximum_locations,
      :veiled_majority_location_count, :veiled_cross_location_minimum,
      keyword_init: true
    )
    SubkindDef = Struct.new(:name, :label, :facts, :omitted_facts, keyword_init: true)
    FactDef = Struct.new(
      :name, :label, :source, :type, :expected, :relation, :direction,
      :cardinality, :from, :calculate, :order,
      keyword_init: true
    ) do
      def expected? = expected == true
    end

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
    FACT_TYPES = %i[text integer year entity entities].freeze
    RELATION_PROPERTY_TYPES = %i[boolean entity enum integer number text].freeze
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
                :focus_choice_requirements

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
          name: name, wiki: wiki, facts: [], subkinds: { name => default_subkind }
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
                               veiled_cross_location_minimum: nil)
      role = checked_playable_role(role)
      positive_integer!(minimum, "focus choice minimum")
      positive_integer!(veiled_minimum_locations, "veiled location minimum", optional: true)
      positive_integer!(veiled_maximum_locations, "veiled location maximum", optional: true)
      positive_integer!(veiled_majority_location_count, "veiled majority location count", optional: true)
      nonnegative_integer!(veiled_cross_location_minimum, "veiled cross-location minimum", optional: true)
      if veiled_minimum_locations && veiled_maximum_locations &&
         veiled_maximum_locations < veiled_minimum_locations
        raise DefinitionError, "veiled location maximum must be at least as large as the minimum"
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
        veiled_cross_location_minimum: veiled_cross_location_minimum
      )
    end

    def require_explicit_subkinds! = @require_explicit_subkinds = true
    def explicit_subkinds_required? = @require_explicit_subkinds

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
      RelationBuilder.new(@relations.fetch(name)).instance_eval(&block) if block
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
      RelationBuilder.new(definition).instance_eval(&block) if block
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
      def initialize(relation)
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
