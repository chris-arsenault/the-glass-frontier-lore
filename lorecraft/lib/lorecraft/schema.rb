# frozen_string_literal: true

module Lorecraft
  # The compiler authority. Declares what kinds of entity exist, what relation
  # types are legal (and their rules), which effect verbs moments may use, and
  # the controlled vocabularies the repository enforces (tags, section headings,
  # prominence levels). Every declaration and every effect is validated against
  # this.
  class Schema
    RelationDef = Struct.new(
      :name, :category, :temporal, :symmetric, :inverse,
      :domain, :range, :cardinality, :exclusive_with, :description,
      keyword_init: true
    )

    # Static attributes are declared on an entity and never touched by moment
    # effects. Dynamic state is the opposite: only ever changed by effects.
    # These are the known static attribute names; an effect targeting one is a
    # compile error (spec §8.3). Everything else an effect sets is dynamic.
    DEFAULT_STATIC_ATTRS = %i[
      title tags prominence alias region narrative_role status reviewed
      species culture era date founded registry prominence_xrefs
    ].freeze

    PROMINENCE_LEVELS = %i[forgotten marginal recognized renowned mythic].freeze

    attr_reader :kinds, :relations, :effects, :tags, :section_headings,
                :static_attrs, :prominence_levels

    def initialize
      @kinds = {}            # kind(sym) => { wiki: bool } ; wiki=false means DM-structural
      @relations = {}        # name(sym) => RelationDef
      @effects = {}          # verb(sym) => description
      @tags = {}             # tag(sym) => description
      @section_headings = {} # heading(sym) => description (canonical prose sections)
      @banned_phrases = {}   # phrase(downcased) => why this world refuses it
      @static_attrs = DEFAULT_STATIC_ATTRS.dup
      @prominence_levels = PROMINENCE_LEVELS.dup
    end

    # Declare one or more entity kinds. `wiki: false` marks a kind as structural
    # / DM-only (themes, threads, loops, the dm kind) — excluded from the player
    # wiki render.
    def entity_type(*names, wiki: true)
      names.each { |n| @kinds[n.to_sym] = { wiki: wiki } }
    end
    alias entity_types entity_type

    def kind?(name) = @kinds.key?(name&.to_sym)
    def wiki_kind?(name) = @kinds.dig(name&.to_sym, :wiki) == true

    # Declare a relation type. Mirrors the repository taxonomy (category +
    # temporal) and adds the optional structural rules the spec asks for
    # (symmetric/inverse/domain/range/cardinality/exclusivity), validated only
    # when present so the repo's looser taxonomy still loads.
    def relation(name, category: :general, temporal: false, symmetric: false,
                 inverse: nil, domain: nil, range: nil, cardinality: :many,
                 exclusive_with: nil, description: nil)
      name = name.to_sym
      raise DefinitionError, "duplicate relation #{name}" if @relations.key?(name)

      @relations[name] = RelationDef.new(
        name: name, category: category, temporal: temporal, symmetric: symmetric,
        inverse: inverse&.to_sym, domain: arr(domain), range: arr(range),
        cardinality: cardinality, exclusive_with: arr(exclusive_with),
        description: description
      )
    end

    def relation?(name) = @relations.key?(name&.to_sym)
    def relation_def(name) = @relations[name&.to_sym]

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

    def arr(v)
      return nil if v.nil?
      Array(v).map(&:to_sym)
    end
  end
end
