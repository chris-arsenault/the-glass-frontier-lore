# frozen_string_literal: true

require "set"
require_relative "markers"

module Lorecraft
  # The compiler's rejection pass. Collects every problem in one run (rather than
  # dying on the first) and reports them together. Covers the spec §8 rules plus
  # the repository's controlled-vocabulary and DM-leakage rules.
  class Validator
    def initialize(world)
      @world = world
      @schema = world.schema
      @problems = []
    end

    def validate
      check_references
      check_relation_types
      check_static_dynamic
      check_causality
      check_cardinality
      check_exclusivity
      check_tags
      check_prominence
      check_sections
      check_dm_leakage
      @problems
    end

    def validate!
      probs = validate
      raise ValidationError, probs unless probs.empty?
      true
    end

    private

    def err(msg) = @problems << msg

    def known?(id) = @world.known_id?(id)

    # §8.1 / §8.7 — every ref/rel/effect/relation target resolves to a real id.
    def check_references
      each_prose_owner do |owner, block|
        Markers.scan(block.text) do |_match, b|
          if b[:kind] == :ref
            next if b[:id].nil? # path-only ref to a non-entity page
            err("#{label(owner)}: prose ref → unknown id #{b[:id]}") unless known?(b[:id])
          elsif b[:kind] == :rel
            err("#{label(owner)}: prose rel uses unknown relation #{b[:verb]}") unless @schema.relation?(b[:verb])
          end
        end
      end

      @world.events.each_value do |ev|
        if (a = ev.static_attrs[:actor]) && !known?(a)
          err("event #{ev.id}: actor → unknown id #{a}")
        end
        Array(ev.static_attrs[:participants]).each do |p|
          err("event #{ev.id}: participant → unknown id #{p}") unless known?(p)
        end
      end

      each_effect do |eff, source|
        err("#{source}: effect subject → unknown id #{eff.subject}") if eff.subject && !known?(eff.subject)
        err("#{source}: effect target → unknown id #{eff.target}") if eff.target && !known?(eff.target)
      end

      @world.relation_instances.each_value do |ri|
        err("relation #{ri.id}: source → unknown id #{ri.source}") unless known?(ri.source)
        err("relation #{ri.id}: target → unknown id #{ri.target}") unless known?(ri.target)
      end
    end

    # §8.2 — relation types exist; effect verbs exist; declared domain/range hold.
    def check_relation_types
      each_effect do |eff, source|
        next unless eff.verb == :set && eff.relation

        unless @schema.relation?(eff.relation)
          err("#{source}: unknown relation type #{eff.relation}")
          next
        end
        check_domain_range(eff.relation, eff.subject, eff.target, source)
      end

      @world.relation_instances.each_value do |ri|
        unless @schema.relation?(ri.verb)
          err("relation #{ri.id}: unknown relation type #{ri.verb}")
          next
        end
        check_domain_range(ri.verb, ri.source, ri.target, "relation #{ri.id}")
      end
    end

    def check_domain_range(verb, subject, target, source)
      rd = @schema.relation_def(verb)
      return unless rd

      if rd.domain && (e = @world.entity(subject)) && !rd.domain.include?(e.kind)
        err("#{source}: #{verb} domain expects #{rd.domain.join('|')}, got #{e.kind} (#{subject})")
      end
      if rd.range && (e = @world.entity(target)) && !rd.range.include?(e.kind)
        err("#{source}: #{verb} range expects #{rd.range.join('|')}, got #{e.kind} (#{target})")
      end
    end

    # §8.3 — an effect may never touch a declared static attribute.
    def check_static_dynamic
      each_effect do |eff, source|
        next unless eff.verb == :set && eff.attr

        err("#{source}: effect sets static attribute #{eff.attr} (static attrs change only by declaration)") \
          if @schema.static_attr?(eff.attr)
      end
    end

    # §8.4 — folding to the last tick raises on any use-before-create /
    # use-after-destroy.
    def check_causality
      last = @world.timeline.total_span.last
      return if last.nil?

      begin
        @world.instance_variable_set(:@existence, nil)
        Resolver.new(@world).fold_to(last)
      rescue CausalityError => e
        err("temporal causality: #{e.message}")
      end
    end

    # §8.6 — a :one relation must never have two live targets for one subject.
    def check_cardinality
      intervals = edge_intervals
      intervals.each do |(subject, verb), edges|
        rd = @schema.relation_def(verb)
        next unless rd && rd.cardinality == :one

        edges.combination(2).each do |a, b|
          if overlap?(a, b)
            err("cardinality: #{subject} has overlapping #{verb} edges " \
                "(→#{a[:target]} and →#{b[:target]}) — relation is :one")
          end
        end
      end
    end

    # §8.5 — two mutually-exclusive relations live for the same pair at once.
    def check_exclusivity
      live = Hash.new { |h, k| h[k] = [] } # [subject,target] => [verbs]
      edge_intervals.each do |(subject, verb), edges|
        edges.each { |e| live[[subject, e[:target]]] << verb }
      end
      live.each do |(subject, target), verbs|
        verbs.uniq.each do |verb|
          rd = @schema.relation_def(verb)
          next unless rd&.exclusive_with

          clash = rd.exclusive_with & verbs
          next if clash.empty?

          err("exclusivity: #{subject}→#{target} holds #{verb} and #{clash.join('/')} at once")
        end
      end
    end

    def check_tags
      return if @schema.tags.empty?

      @world.entities.each_value do |e|
        e.tags.each do |t|
          err("#{label(e)}: tag '#{t}' not in vocabulary") unless @schema.tag?(t)
        end
      end
    end

    def check_prominence
      @world.entities.each_value do |e|
        p = e.prominence
        next if p.nil?

        err("#{label(e)}: prominence '#{p}' is not a known level") unless @schema.prominence?(p)
      end
    end

    def check_sections
      return if @schema.section_headings.empty?

      each_prose_owner do |owner, block|
        next if block.section == :main

        err("#{label(owner)}: prose section '#{block.section}' not in canonical vocabulary") \
          unless @schema.section_heading?(block.section)
      end
    end

    # Repo rule — a player-facing page must not reference a DM-only entity in its
    # prose (would leak hidden truth into the wiki).
    def check_dm_leakage
      each_prose_owner do |owner, block|
        next if dm_owner?(owner) || block.dm?

        Markers.scan(block.text) do |_match, b|
          next unless b[:kind] == :ref && b[:id]

          target = @world[b[:id]]
          err("#{label(owner)}: public prose references DM-only entity #{b[:id]}") \
            if target.respond_to?(:dm?) && target.dm?
        end
      end
    end

    # --- helpers -----------------------------------------------------------

    def each_prose_owner
      (@world.pages + @world.relation_instances.values).each do |owner|
        owner.prose_blocks.each { |b| yield owner, b }
      end
    end

    def each_effect
      @world.all_effects.each { |entry| yield entry[:effect], entry[:source] }
    end

    # Pair set/clear effects into [from,to) intervals per (subject,verb).
    def edge_intervals
      open = Hash.new { |h, k| h[k] = {} }
      result = Hash.new { |h, k| h[k] = [] }
      @world.all_effects.each do |entry|
        eff = entry[:effect]
        next unless eff.relation

        key = [eff.subject, eff.relation]
        case eff.verb
        when :set
          open[key][eff.target] ||= entry[:tick]
        when :clear
          if eff.target
            from = open[key].delete(eff.target)
            result[key] << { target: eff.target, from: from || entry[:tick], to: entry[:tick] } if from
          else
            open[key].each { |t, from| result[key] << { target: t, from: from, to: entry[:tick] } }
            open[key].clear
          end
        end
      end
      open.each { |key, targets| targets.each { |t, from| result[key] << { target: t, from: from, to: nil } } }
      result
    end

    def overlap?(a, b)
      a_to = a[:to] || Float::INFINITY
      b_to = b[:to] || Float::INFINITY
      a[:from] < b_to && b[:from] < a_to
    end

    def dm_owner?(owner) = owner.respond_to?(:dm?) && owner.dm?

    def label(owner)
      case owner
      when Entity then "#{owner.kind} #{owner.id}"
      when Event then "event #{owner.id}"
      when RelationInstance then "relation #{owner.id}"
      else owner.to_s
      end
    end
  end
end
