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
      check_provenance
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
    # The prose pass is a marker resolution like any other: "validate this
    # marker" and "render this marker" are the same traversal with different
    # `on_*` bodies, so there is no `case` on marker kind here.
    def check_references
      each_prose_owner do |owner, block|
        @owner = owner
        # A DM owner or a DM block may name hidden entities; a public one may not.
        @dm_context = dm_owner?(owner) || block.dm?
        Markers.scan(block.text) { |_match, marker| marker.resolve(self) }
      end

      @world.moments.each_value do |ev|
        if (a = ev.static_attrs[:actor]) && !known?(a)
          err("moment #{ev.id}: actor → unknown id #{a}")
        end
        Array(ev.static_attrs[:participants]).each do |p|
          err("moment #{ev.id}: participant → unknown id #{p}") unless known?(p)
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

    # --- marker resolution: "rendering" a marker here means validating it ----
    #
    # Public because `marker.resolve(self)` dispatches to them from outside.
    public

    # Two rules per reference: the target exists, and a player-facing page does
    # not name a DM-only entity (which would leak hidden truth into the wiki).
    def on_ref(marker)
      return if marker.id.nil? # path-only ref to a non-entity page

      unless known?(marker.id)
        err("#{label(@owner)}: prose ref → unknown id #{marker.id}")
        return
      end
      return if @dm_context

      target = @world[marker.id]
      err("#{label(@owner)}: public prose references DM-only entity #{marker.id}") \
        if target.respond_to?(:dm?) && target.dm?
    end

    def on_rel(marker)
      err("#{label(@owner)}: prose rel uses unknown relation #{marker.verb}") unless @schema.relation?(marker.verb)
    end

    # A future names something with no entity; there is nothing to resolve.
    def on_future(_marker) = nil

    # An embed must transclude something real and something safe to inline: the
    # target exists, it is a written entity rather than a shell, it has prose in
    # the requested section, and a public entry does not pull in hidden truth.
    # A silently empty transclusion is worse than a link — the sentence around it
    # loses its subject with nothing to show that it did.
    def on_embed(marker)
      target = @world.entity(marker.id)
      return err("#{label(@owner)}: embed → unknown id #{marker.id}") unless target

      if target.respond_to?(:dm?) && target.dm? && !@dm_context
        return err("#{label(@owner)}: public prose embeds DM-only entity #{marker.id}")
      end
      return err("#{label(@owner)}: embed → :#{marker.id} is a shell, nothing to transclude") \
        if target[:status].to_s == "shell"

      blocks = target.prose_blocks.select { |b| b.section == marker.section }
      return err("#{label(@owner)}: embed → :#{marker.id} has no :#{marker.section} prose") if blocks.empty?

      err("#{label(@owner)}: public prose embeds DM-only :#{marker.section} prose of #{marker.id}") \
        if !@dm_context && blocks.all?(&:dm?)
    end

    # A computed span is only as good as its anchors. An anchor that names
    # nothing the clock recognises is a build failure, not a rendering oddity —
    # otherwise the prose silently loses its number.
    def on_elapsed(marker)
      check_anchor(marker.from)
      check_anchor(marker.to)
    end

    def on_year(marker) = check_anchor(marker.at)

    private

    def check_anchor(anchor)
      @world.year_of(anchor)
    rescue DefinitionError
      err("#{label(@owner)}: time anchor #{anchor.inspect} names no moment, era or entity")
    end

    public

    private

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

    # §8.4 — folding to the last year raises on any use-before-create /
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

    # A declared provenance has to mean something: an unknown drafter or origin
    # is a typo that would quietly drop the block out of the audit, and a review
    # date nobody can compare against is not a record of anything.
    def check_provenance
      each_prose_owner do |owner, block|
        if block.origin && !ORIGINS.include?(block.origin)
          err("#{label(owner)}: unknown prose origin #{block.origin.inspect} (#{ORIGINS.join('/')})")
        end
        if block.drafted_by && !DRAFTERS.include?(block.drafted_by)
          err("#{label(owner)}: unknown prose drafter #{block.drafted_by.inspect} (#{DRAFTERS.join('/')})")
        end
        next unless block.reviewed? && !block.reviewed.to_s.match?(/\A\d{4}-\d{2}-\d{2}\z/)

        err("#{label(owner)}: reviewed #{block.reviewed.inspect} is not a YYYY-MM-DD date")
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
          open[key][eff.target] ||= entry[:year]
        when :clear
          if eff.target
            from = open[key].delete(eff.target)
            result[key] << { target: eff.target, from: from || entry[:year], to: entry[:year] } if from
          else
            open[key].each { |t, from| result[key] << { target: t, from: from, to: entry[:year] } }
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
      when Moment then "moment #{owner.id}"
      when RelationInstance then "relation #{owner.id}"
      else owner.to_s
      end
    end
  end
end
