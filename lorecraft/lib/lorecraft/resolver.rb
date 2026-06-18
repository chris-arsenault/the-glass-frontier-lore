# frozen_string_literal: true

require "set"

module Lorecraft
  # A snapshot of dynamic world state at one absolute tick: which entities exist,
  # their dynamic attribute values, and which relation edges are live. Produced
  # by the Resolver; immutable once returned.
  class State
    Edge = Struct.new(:subject, :relation, :target, :from_tick, keyword_init: true)

    attr_reader :tick

    def initialize(tick:, existence:, attrs:, edges:)
      @tick = tick
      @existence = existence
      @attrs = attrs
      @edges = edges
    end

    def exists?(id)
      iv = @existence[id.to_sym]
      return false unless iv
      iv[:from] <= @tick && (iv[:to].nil? || @tick < iv[:to])
    end

    def attr(id, key) = @attrs.dig(id.to_sym, key.to_sym)
    def attrs(id) = @attrs[id.to_sym] || {}

    # Outgoing edge targets from `id` (optionally filtered to one relation).
    def out(id, relation = nil)
      id = id.to_sym
      @edges.select { |e| e.subject == id && (relation.nil? || e.relation == relation.to_sym) }
            .map(&:target)
    end

    # Incoming edge sources to `id` (optionally filtered to one relation).
    def in(id, relation = nil)
      id = id.to_sym
      @edges.select { |e| e.target == id && (relation.nil? || e.relation == relation.to_sym) }
            .map(&:subject)
    end

    def edges = @edges
  end

  # Folds the world's ordered effect log into state. State-at-T is the fold of
  # every effect with tick ≤ T, applied in deterministic key order (tick, then
  # author seq, then load order). Existence intervals are computed across the
  # whole log (a create/destroy fixes an interval regardless of query time);
  # dynamic attrs and live edges are time-dependent.
  class Resolver
    def initialize(world)
      @world = world
    end

    # Existence interval per id: { from:, to: }. Defaults to the full timeline
    # span unless a create/destroy effect narrows it. Memoised on the world.
    def existence
      @world.instance_variable_get(:@existence) || compute_existence
    end

    def fold_to(tick)
      attrs = Hash.new { |h, k| h[k] = {} }
      open = {} # [subject, relation, target] => from_tick
      ex = existence

      @world.all_effects.each do |entry|
        break if entry[:tick] > tick
        apply(entry[:effect], entry[:tick], attrs, open, ex, causality: true)
      end

      edges = open.map do |(s, r, t), from|
        State::Edge.new(subject: s, relation: r, target: t, from_tick: from)
      end
      State.new(tick: tick, existence: ex, attrs: attrs, edges: edges)
    end

    private

    def compute_existence
      ex = {}
      start = @world.timeline.total_span.first || 0
      @world.entities.each_key { |id| ex[id] = { from: start, to: nil } }
      @world.events.each { |id, ev| ex[id] = { from: ev.tick, to: nil } }

      @world.all_effects.each do |entry|
        eff = entry[:effect]
        case eff.verb
        when :create
          (ex[eff.subject] ||= {})[:from] = entry[:tick]
          ex[eff.subject][:to] ||= nil
        when :destroy
          (ex[eff.subject] ||= { from: start })[:to] = entry[:tick]
        end
      end
      @world.instance_variable_set(:@existence, ex)
      ex
    end

    def apply(eff, tick, attrs, open, ex, causality:)
      case eff.verb
      when :create, :destroy
        # existence already computed globally; nothing to fold per-tick
      when :set
        if eff.relation
          check_exists!(eff.subject, tick, ex) if causality
          check_exists!(eff.target, tick, ex) if causality
          open[[eff.subject, eff.relation, eff.target]] ||= tick
        else
          attrs[eff.subject][eff.attr] = eff.value
        end
      when :clear
        if eff.target
          open.delete([eff.subject, eff.relation, eff.target])
        else
          open.delete_if { |(s, r, _t), _| s == eff.subject && r == eff.relation }
        end
      end
    end

    def check_exists!(id, tick, ex)
      iv = ex[id]
      return if iv.nil? # unknown ids are caught by the validator, not here
      ok = iv[:from] <= tick && (iv[:to].nil? || tick < iv[:to])
      return if ok

      raise CausalityError,
            "entity #{id} referenced at tick #{tick} but its existence is " \
            "[#{iv[:from]}, #{iv[:to] || '∞'})"
    end
  end
end
