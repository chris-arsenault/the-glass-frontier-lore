# frozen_string_literal: true

module Lorecraft
  # A single mutation of dynamic state, carried by an effect verb.
  #   set     :sable_concord, controls: :ashfall_reach   # open a relation / set attr
  #   clear   :sable_concord, :controls, :ashfall_reach  # end a relation
  #   create  :sable_concord                             # begin existence
  #   destroy :glasswright_quarter                       # end existence
  #   transfer:controls, from: :a, to: :b, subject: :x   # clear+set sugar
  Effect = Struct.new(:verb, :subject, :relation, :target, :attr, :value, keyword_init: true)

  # A moment is a thing that HAPPENS TO an entity in a given year (or span): it
  # owns prose (the narrative of what happened) and carries effects that mutate
  # the entity's dynamic state. The fold of all moments is the world's history.
  # Most moments are anonymous beats in one entity's life; `of:` names the entity
  # whose page the moment's prose renders on (defaults to its first effect's
  # subject). Distinct from the `incident`/`conflict` ENTITY kinds, which are the
  # named, page-bearing world events those moments reference.
  #
  # `genesis` moments bootstrap standing facts at era start and need no narrative
  # provenance; they are otherwise ordinary moments.
  class Moment
    attr_reader :id, :kind, :year, :from_year, :to_year, :seq, :effects,
                :prose_blocks, :static_attrs, :source_file, :load_index, :of
    attr_accessor :dm, :genesis

    def initialize(id:, timeline:, kind: :incident, at: nil, span: nil, of: nil,
                   genesis: false, dm: false, seq: nil, source_file: nil, load_index: 0)
      @id = id.to_sym
      @kind = kind.to_sym
      @timeline = timeline
      @of = of&.to_sym
      @genesis = genesis
      @dm = dm
      @seq = seq
      @source_file = source_file
      @load_index = load_index
      @effects = []
      @prose_blocks = []
      @static_attrs = {}
      @prose_order = 0

      if span
        @from_year = timeline.year_for(span[:from])
        @to_year = timeline.year_for(span[:to])
        @year = @from_year
      else
        raise DefinitionError, "moment #{@id} needs at: or span:" if at.nil?
        @year = timeline.year_for(at)
        @from_year = @year
        @to_year = @year
      end
    end

    def genesis? = @genesis == true
    def dm? = @dm == true
    def span? = @from_year != @to_year

    # The entity whose history this moment belongs to (for rendering its prose
    # on that entity's page): explicit `of:`, else the subject of its first effect.
    def home = @of || @effects.first&.subject

    # Moments own pages too, so they expose the same surface the renderers use.
    def title = @static_attrs[:title] || @id.to_s.split("_").map(&:capitalize).join(" ")
    def tags = Array(@static_attrs[:tags]).map(&:to_sym)
    def prominence = @static_attrs[:prominence]
    def [](key) = @static_attrs[key.to_sym]
    def public_entry = nil

    # Deterministic ordering key for the fold: absolute year, then an explicit
    # author-supplied seq if any, then stable load order (sorted file, then
    # declaration index within the load). Guarantees identical state on every
    # machine regardless of filesystem glob order.
    def sort_key = [@year, @seq || 0, @load_index]

    # --- builder surface (called inside the moment block) -------------------

    def static_attr(key, value) = @static_attrs[key.to_sym] = value

    def add_prose(text, section: :main, heading: nil, at: nil, dm: false,
                  origin: nil, drafted_by: nil, reviewed: nil)
      @prose_blocks << ProseBlock.new(
        text: text, section: section.to_sym, heading: heading,
        at_year: at && @timeline.year_for(at), dm: dm, order: (@prose_order += 1),
        origin: origin&.to_sym, drafted_by: drafted_by&.to_sym, reviewed: reviewed
      )
    end

    def add_effect(effect) = @effects << effect
  end
end
