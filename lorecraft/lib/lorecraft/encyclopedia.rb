# frozen_string_literal: true

require_relative "markers"
require_relative "prose"
require_relative "identity"
require_relative "entity"

module Lorecraft
  EncyclopediaContextReference = Struct.new(:id, keyword_init: true)
  ContextTerm = Struct.new(:scope, :type, :value, keyword_init: true)
  ContextSelector = Struct.new(:all, :any, :none, keyword_init: true)
  ReferenceUsage = Struct.new(:kind, :text, :dm, :order, keyword_init: true) do
    def dm? = dm == true
  end
  AbilityTierExpression = Struct.new(:tier, :effect, :cost, :order, keyword_init: true)
  # Reusable world material. Encyclopedia entries are intentionally separate
  # from Atlas entities: they have no moments, prominence, placement, mutable
  # state, or ordinary world-graph edges. Kind fields and descriptive identity
  # remain static reusable reference data.
  class EncyclopediaEntry
    include Markers
    include IdentityOwner

    attr_reader :id, :static_attrs, :content_blocks, :usage, :selectors,
                :source_file, :source_line, :fact_values, :log_entries, :questions,
                :ability_tiers
    attr_accessor :visibility

    def initialize(id:, source_file: nil, source_line: nil)
      @id = id.to_sym
      @source_file = source_file
      @source_line = source_line
      @static_attrs = {}
      @content_blocks = []
      @usage = []
      @selectors = []
      @fact_values = {}
      @log_entries = []
      @questions = []
      @ability_tiers = []
      @availability_mode = nil
      @visibility = :public
      initialize_identity
    end

    def [](key) = @static_attrs[key.to_sym]
    def dm? = @visibility == :dm
    def title = @static_attrs[:title] || @id.to_s.split("_").map(&:capitalize).join(" ")
    def summary = @static_attrs[:summary]
    def source_id = @static_attrs[:source_id] || @id.to_s
    def kind = @static_attrs[:kind]&.to_sym
    def subkind = (@static_attrs[:subkind] || kind)&.to_sym
    def status = @static_attrs[:status]&.to_sym
    def topics = Array(@static_attrs[:topics]).map(&:to_sym)
    def aliases = Array(@static_attrs[:alias]).map(&:to_s)
    def prevalence = @static_attrs[:prevalence]&.to_sym
    def character_role = @static_attrs[:character_role]&.to_sym
    def origin_blurb = @static_attrs[:origin_blurb]
    def availability_mode = @availability_mode
    def authored_blocks = @content_blocks
    def prose_blocks = @content_blocks

    def build(world, &block)
      Builder.new(self, world).instance_eval(&block) if block
      self
    end

    class Builder
      include Markers
      include IdentityBuilder

      def initialize(entry, world)
        @entry = entry
        @world = world
        @content_order = 0
        @usage_order = 0
      end

      private def identity_owner = @entry

      def name(value) = set(:title, value.to_s)
      alias title name
      def summary(value) = set(:summary, value.to_s)
      def source_id(value) = set(:source_id, value.to_s)
      def kind(value) = set(:kind, value.to_sym)
      def subkind(value) = set(:subkind, value.to_sym)
      def status(value) = set(:status, value.to_sym)
      def topics(*values) = set(:topics, values.flatten.map(&:to_sym).uniq)
      def prevalence(value) = set(:prevalence, value.to_sym)
      def character_role(value) = set(:character_role, value.to_sym)
      def origin_blurb(value) = set(:origin_blurb, value.to_s)
      def registry(value) = set(:registry, value == true)

      def aka(*values)
        aliases = values.flatten.map(&:to_s)
        set(:alias, aliases.size == 1 ? aliases.first : aliases)
      end

      def reviewed(date) = set(:reviewed, date)
      def dm! = @entry.visibility = :dm

      def log(entry) = @entry.log_entries << entry.to_s

      def question(text, raised: nil, on: nil)
        @entry.questions << Question.new(
          text: text.to_s,
          raised: raised,
          on: on,
          order: @entry.questions.length + 1
        )
      end

      def available_globally
        set_availability(:global)
      end

      def appears_when(all: {}, any: {}, none: {})
        set_availability(:contextual)
        @entry.selectors << ContextSelector.new(
          all: context_terms(all),
          any: context_terms(any),
          none: context_terms(none)
        )
      end

      def encyclopedia_reference(id) = EncyclopediaContextReference.new(id: id.to_sym)

      def cue(text, dm: false) = add_usage(:cue, text, dm)
      def affordance(text, dm: false) = add_usage(:affordance, text, dm)
      def pressure(text, dm: false) = add_usage(:pressure, text, dm)
      def variation(text, dm: false) = add_usage(:variation, text, dm)

      def tier(name, effect:, cost: nil)
        unless @entry.kind == :ability
          raise DefinitionError, "tier on #{@entry.id} requires encyclopedia kind ability"
        end
        name = name.to_sym
        unless @world.schema.encyclopedia_tier_def(:ability, name)
          raise DefinitionError, "unknown ability tier #{name} on #{@entry.id}"
        end
        if @entry.ability_tiers.any? { |expression| expression.tier == name }
          raise DefinitionError, "duplicate ability tier #{name} on #{@entry.id}"
        end

        @entry.ability_tiers << AbilityTierExpression.new(
          tier: name,
          effect: effect.to_s,
          cost: cost&.to_s,
          order: @entry.ability_tiers.length + 1
        )
      end

      def prose(text, section: :main, heading: nil, dm: false,
                origin: nil, drafted_by: nil, reviewed: nil)
        @entry.content_blocks << ProseBlock.new(
          text: text.to_s,
          section: section.to_sym,
          heading: heading,
          at_year: nil,
          dm: dm == true,
          order: (@content_order += 1),
          origin: origin&.to_sym,
          drafted_by: drafted_by&.to_sym,
          reviewed: reviewed
        )
      end

      def method_missing(name, *args, &block)
        definition = @world.schema.encyclopedia_field_def(@entry.kind, name)
        return super unless definition
        unless block.nil? && args.size == 1
          raise DefinitionError, "field #{name} on #{@entry.id} needs exactly one value"
        end

        @entry.fact_values[name.to_sym] = args.first
      end

      def respond_to_missing?(name, include_private = false)
        @world.schema.encyclopedia_field_def(@entry.kind, name) || super
      end

      private

      def set(key, value) = @entry.static_attrs[key.to_sym] = value

      def set_availability(mode)
        current = @entry.availability_mode
        if current && current != mode
          raise DefinitionError, "#{@entry.id} cannot be both globally and contextually available"
        end
        @entry.instance_variable_set(:@availability_mode, mode)
      end

      def context_terms(groups)
        groups.to_h.flat_map do |scope, values|
          normalized = values.is_a?(EncyclopediaContextReference) ? [values] : Array(values)
          normalized.map do |value|
            if value.is_a?(EncyclopediaContextReference)
              ContextTerm.new(scope: scope.to_sym, type: :encyclopedia, value: value.id)
            else
              ContextTerm.new(scope: scope.to_sym, type: :tag, value: value.to_sym)
            end
          end
        end
      end

      def add_usage(kind, text, dm)
        @entry.usage << ReferenceUsage.new(
          kind: kind,
          text: text.to_s,
          dm: dm == true,
          order: (@usage_order += 1)
        )
      end
    end
  end
end
