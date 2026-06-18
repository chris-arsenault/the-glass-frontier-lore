# frozen_string_literal: true

module Lorecraft
  # A single mutation of dynamic state, carried by an effect verb.
  #   set     :sable_concord, controls: :ashfall_reach   # open a relation / set attr
  #   clear   :sable_concord, :controls, :ashfall_reach  # end a relation
  #   create  :sable_concord                             # begin existence
  #   destroy :glasswright_quarter                       # end existence
  #   transfer:controls, from: :a, to: :b, subject: :x   # clear+set sugar
  Effect = Struct.new(:verb, :subject, :relation, :target, :attr, :value, keyword_init: true)

  # Events drive all change. They occur at an absolute tick (a point) or over a
  # span, own prose, and carry an ordered list of effects. An event is itself an
  # addressable, renderable node (incidents, conflicts, wars get their own
  # pages), so it doubles as an Entity-like object in the registry.
  #
  # `genesis` events bootstrap standing facts at era start and need no narrative
  # provenance; they are otherwise ordinary events.
  class Event
    attr_reader :id, :kind, :tick, :from_tick, :to_tick, :seq, :effects,
                :prose_blocks, :static_attrs, :source_file, :load_index
    attr_accessor :dm, :genesis

    def initialize(id:, timeline:, kind: :incident, at: nil, span: nil,
                   genesis: false, dm: false, seq: nil, source_file: nil, load_index: 0)
      @id = id.to_sym
      @kind = kind.to_sym
      @timeline = timeline
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
        @from_tick = timeline.tick_for(span[:from])
        @to_tick = timeline.tick_for(span[:to])
        @tick = @from_tick
      else
        raise DefinitionError, "event #{@id} needs at: or span:" if at.nil?
        @tick = timeline.tick_for(at)
        @from_tick = @tick
        @to_tick = @tick
      end
    end

    def genesis? = @genesis == true
    def dm? = @dm == true
    def span? = @from_tick != @to_tick

    # Events own pages too, so they expose the same surface the renderers use.
    def title = @static_attrs[:title] || @id.to_s.split("_").map(&:capitalize).join(" ")
    def tags = Array(@static_attrs[:tags]).map(&:to_sym)
    def prominence = @static_attrs[:prominence]
    def [](key) = @static_attrs[key.to_sym]
    def public_entry = nil

    # Deterministic ordering key for the fold: absolute tick, then an explicit
    # author-supplied seq if any, then stable load order (sorted file, then
    # declaration index within the load). Guarantees identical state on every
    # machine regardless of filesystem glob order.
    def sort_key = [@tick, @seq || 0, @load_index]

    # --- builder surface (called inside the event block) -------------------

    def static_attr(key, value) = @static_attrs[key.to_sym] = value

    def add_prose(text, section: :main, heading: nil, at: nil, dm: false)
      @prose_blocks << ProseBlock.new(
        text: text, section: section.to_sym, heading: heading,
        at_tick: at && @timeline.tick_for(at), dm: dm, order: (@prose_order += 1)
      )
    end

    def add_effect(effect) = @effects << effect
  end
end
