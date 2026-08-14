# frozen_string_literal: true

require "set"
require "pathname"
require_relative "diagnostic"
require_relative "markers"

module Lorecraft
  # The compiler's rejection pass. Collects every problem in one run (rather than
  # dying on the first) and reports them together. Covers the spec §8 rules plus
  # the repository's controlled-vocabulary and DM-leakage rules.
  class Validator
    CHECKS = {
      check_references: ["invalid_reference", "entry", "Replace the unresolved or hidden reference with an allowed target."],
      check_cards: ["invalid_card", "entry", "Correct the card target or card block declaration."],
      check_relation_types: ["invalid_relation", "schema-authoring", "Use a declared relation with compatible endpoints."],
      check_dm_edges: ["dm_relation_leak", "audience", "Mark the relation as DM-only or use public endpoints."],
      check_static_dynamic: ["static_attribute_effect", "schema-authoring", "Move the changing value to a dynamic attribute or relation."],
      check_causality: ["temporal_causality", "time", "Correct the entity lifetime or the effect date."],
      check_cardinality: ["relation_cardinality", "schema-authoring", "Remove the overlapping target or change the declared cardinality."],
      check_exclusivity: ["relation_exclusivity", "schema-authoring", "Remove one of the mutually exclusive live relations."],
      check_tags: ["unknown_tag", "entry", "Declare the tag in the world schema or remove it from the entry."],
      check_prominence: ["invalid_prominence", "entry", "Use a prominence level declared by the schema."],
      check_narrative_roles: ["invalid_narrative_role", "entry", "Use an allowed narrative role on an NPC."],
      check_subkinds: ["invalid_subkind", "schema-authoring", "Declare and select an allowed subkind."],
      check_facts: ["invalid_fact", "schema-authoring", "Correct the fact declaration or its value."],
      check_sections: ["unknown_section", "entry", "Use a section declared by the world schema."],
      check_statuses: ["invalid_status", "entry", "Use a supported authoring status."],
      check_provenance: ["invalid_provenance", "audience", "Correct the provenance value or review date."],
    }.freeze

    def initialize(world, root: Dir.pwd)
      @world = world
      @schema = world.schema
      @root = Pathname.new(root).expand_path
      @diagnostics = []
    end

    def validate = diagnostics.map(&:message)

    def diagnostics
      @diagnostics = []
      CHECKS.each do |method, (code, help_topic, repair_instruction)|
        @diagnostic_owner = nil
        @owner = nil
        @diagnostic_context = {
          code: code, help_topic: help_topic, repair_instruction: repair_instruction,
          details: { check: method }
        }
        send(method)
      end
      @diagnostic_context = nil
      @diagnostics.freeze
    end

    def validate!
      probs = validate
      raise ValidationError, probs unless probs.empty?
      true
    end

    private

    def err(msg, owner: @diagnostic_owner || @owner, object_path: nil, details: {})
      @diagnostics << Diagnostic.new(
        severity: :error,
        message: msg,
        object_path: object_path || diagnostic_path(owner),
        source_file: relative_source(owner),
        source_line: owner&.respond_to?(:source_line) ? owner.source_line : nil,
        **@diagnostic_context.merge(details: @diagnostic_context[:details].merge(details))
      )
    end

    def diagnostic_path(owner)
      case owner
      when Entity then owner.id.to_s
      when Moment then "moment:#{owner.id}"
      when RelationInstance then "relation:#{owner.id}"
      when Page then "page:#{owner.id}"
      end
    end

    def relative_source(owner)
      return unless owner&.respond_to?(:source_file) && owner.source_file

      Pathname.new(owner.source_file).expand_path.relative_path_from(@root).to_s
    rescue ArgumentError
      owner.source_file.to_s
    end

    def source_owner(source)
      id = source.to_sym
      @world.moments[id] || @world.relation_instances[id]
    end

    def known?(id) = @world.known_id?(id)

    # §8.1 / §8.7 — every ref/rel/effect/relation target resolves to a real id.
    # The prose pass is a marker resolution like any other: "validate this
    # marker" and "render this marker" are the same traversal with different
    # `on_*` bodies, so there is no `case` on marker kind here.
    def check_references
      each_authored_owner do |owner, block|
        @owner = owner
        # A DM owner or a DM block may name hidden entities; a public one may not.
        @dm_context = dm_owner?(owner) || block.dm?
        block.text_fragments.each do |text|
          Markers.scan(text) { |_match, marker| marker.resolve(self) }
        end
      end

      @world.authored_pages.each_value do |page|
        @diagnostic_owner = page
        @owner = page
        @dm_context = !%i[all player].include?(page.audience)
        page.prose_blocks.each do |block|
          Markers.scan(block[:text]) { |_match, marker| marker.resolve(self) }
        end
      end

      @world.moments.each_value do |ev|
        @diagnostic_owner = ev
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
        @diagnostic_owner = ri
        err("relation #{ri.id}: source → unknown id #{ri.source}") unless known?(ri.source)
        err("relation #{ri.id}: target → unknown id #{ri.target}") unless known?(ri.target)
      end
    end

    # Authored cards point only to pages a reader can open. Their selection and
    # wording remain editorial; validation only protects resolvability,
    # visibility and basic block integrity.
    def check_cards
      @world.prose_owners.each do |owner|
        @diagnostic_owner = owner
        owner.authored_blocks.select(&:cards?).each do |block|
          if block.heading.to_s.strip.empty?
            err("#{label(owner)}: card block has no heading")
          end
          if block.cards.empty?
            err("#{label(owner)}: card block '#{block.heading}' has no cards")
            next
          end

          duplicates = block.cards.map(&:target).compact.tally.select { |_target, count| count > 1 }.keys
          duplicates.each do |target|
            err("#{label(owner)}: card block '#{block.heading}' repeats target #{target}")
          end

          block.cards.each do |card|
            if card.description.strip.empty?
              err("#{label(owner)}: card to #{card.target || '(missing target)'} has no description")
            end
            unless card.target && known?(card.target)
              err("#{label(owner)}: card target → unknown id #{card.target || '(missing target)'}")
              next
            end

            target = @world[card.target]
            unless @world.pages.include?(target) && @schema.wiki_kind?(target.kind)
              err("#{label(owner)}: card target #{card.target} has no reader page")
              next
            end
            if target.respond_to?(:[]) && target[:status].to_s == "shell"
              err("#{label(owner)}: card target #{card.target} is a shell")
            end
            next if dm_owner?(owner) || block.dm?

            err("#{label(owner)}: public card references DM-only entity #{card.target}") \
              if target.respond_to?(:dm?) && target.dm?
          end
        end
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
      # A future anchor is allowed not to resolve — that is what makes it a
      # future — but it must carry the estimate that stands in meanwhile.
      if marker.future
        err("#{label(@owner)}: elapsed future: '#{marker.future}' has no about: estimate") if marker.about.nil?
      else
        check_anchor(marker.from)
      end
      check_anchor(marker.to)
    end

    def on_year(marker) = check_anchor(marker.at)

    # A duration has no anchor by definition; there is nothing to resolve.
    def on_duration(_marker) = nil

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
        if @schema.relation_def(eff.relation).category == :banned
          err("#{source}: banned relation type #{eff.relation}")
          next
        end
        check_domain_range(eff.relation, eff.subject, eff.target, source)
      end

      @world.relation_instances.each_value do |ri|
        @diagnostic_owner = ri
        unless @schema.relation?(ri.verb)
          err("relation #{ri.id}: unknown relation type #{ri.verb}")
          next
        end
        if @schema.relation_def(ri.verb).category == :banned
          err("relation #{ri.id}: banned relation type #{ri.verb}")
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

    def check_dm_edges
      @world.all_effects.each do |entry|
        @diagnostic_owner = source_owner(entry[:source])
        effect = entry[:effect]
        next unless effect.verb == :set && effect.relation
        next if entry[:dm]

        source = @world.entity(effect.subject)
        target = @world.entity(effect.target)
        next unless source&.dm? || target&.dm?

        err("#{entry[:source]}: relation involving a DM-only entity must use dm: true")
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
        @diagnostic_owner = @world.entity(subject)
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
        @diagnostic_owner = @world.entity(subject)
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
        @diagnostic_owner = e
        e.tags.each do |t|
          err("#{label(e)}: tag '#{t}' not in vocabulary") unless @schema.tag?(t)
        end
      end
    end

    def check_prominence
      @world.entities.each_value do |e|
        @diagnostic_owner = e
        p = e.prominence
        next if p.nil?

        err("#{label(e)}: prominence '#{p}' is not a known level") unless @schema.prominence?(p)
      end
    end

    def check_narrative_roles
      @world.entities.each_value do |entity|
        @diagnostic_owner = entity
        role = entity[:narrative_role]
        next if role.nil?

        err("#{label(entity)}: narrative role is only valid on an npc") unless entity.kind == :npc
        unless %i[viewpoint titan].include?(role.to_sym)
          err("#{label(entity)}: unknown narrative role #{role.inspect} (allowed: viewpoint, titan)")
        end
      end
    end

    def check_facts
      @world.pages.each do |node|
        @diagnostic_owner = node
        authored_fact_values(node).each do |name, value|
          definition = @schema.fact_def(
            node.kind, name, subkind: node.subkind, custom: custom_fact_defs(node)
          )
          unless definition
            err("#{label(node)}: fact '#{name}' is not declared for #{node.kind}")
            next
          end

          check_fact_value(node, definition, value)
        end

        effective_facts(node).select { |definition| definition.source == :relation }.each do |definition|
          next unless definition.cardinality == :one

          state = @world.at(:now)
          targets = if definition.direction == :incoming
                      state.in(node.id, definition.relation)
                    else
                      state.out(node.id, definition.relation)
                    end
          if targets.size > 1
            err("#{label(node)}: fact '#{definition.name}' expects one #{definition.relation} target, got #{targets.size}")
          end
        end
      end
    end

    def authored_fact_values(node)
      return node.fact_values if node.respond_to?(:fact_values)

      attribute_names = effective_facts(node)
                               .select { |definition| definition.source == :attribute }
                               .map(&:name)
      node.static_attrs.slice(*attribute_names)
    end

    def effective_facts(node)
      @schema.facts_for(node.kind, subkind: node.subkind, custom: custom_fact_defs(node))
    end

    def custom_fact_defs(node)
      node.respond_to?(:custom_fact_defs) ? node.custom_fact_defs : []
    end

    def check_subkinds
      @world.pages.each do |node|
        @diagnostic_owner = node
        next unless @schema.kind?(node.kind)

        if @schema.explicit_subkinds_required? && node.is_a?(Entity) && node[:subkind].nil?
          err("#{label(node)}: subkind is required")
          next
        end

        unless @schema.subkind?(node.kind, node.subkind)
          err("#{label(node)}: unknown subkind '#{node.subkind}' for #{node.kind}")
        end
      end
    end

    def check_fact_value(entity, definition, value)
      case definition.type
      when :text
        err("#{label(entity)}: fact '#{definition.name}' expects text") unless value.is_a?(String)
      when :integer
        err("#{label(entity)}: fact '#{definition.name}' expects an integer") unless value.is_a?(Integer)
      when :year
        @world.year_of(value)
      when :entity
        check_fact_target(entity, definition, value)
      when :entities
        Array(value).each { |target| check_fact_target(entity, definition, target) }
      end
    rescue DefinitionError
      err("#{label(entity)}: fact '#{definition.name}' has unknown date anchor #{value.inspect}")
    end

    def check_fact_target(entity, definition, value)
      id = value.respond_to?(:to_sym) ? value.to_sym : nil
      unless id && known?(id)
        err("#{label(entity)}: fact '#{definition.name}' → unknown id #{value}")
        return
      end
      return if entity.dm?

      target = @world[id]
      err("#{label(entity)}: public fact '#{definition.name}' references DM-only entity #{id}") \
        if target.respond_to?(:dm?) && target.dm?
    end

    def check_sections
      return if @schema.section_headings.empty?

      each_authored_owner do |owner, block|
        next if block.section == :main

        err("#{label(owner)}: authored section '#{block.section}' not in canonical vocabulary") \
          unless @schema.section_heading?(block.section)
      end
    end

    # `status` is the authoring state of the entry, not the standing of the thing
    # in the world — that is dynamic state, set by moments. A world-sounding value
    # here (`status "dissolved"`) reads as canon and is invisible to every query
    # that asks the graph what is still active.
    STATUSES = %w[complete draft shell needs_refinement].freeze

    def check_statuses
      @world.entities.each_value do |e|
        @diagnostic_owner = e
        value = e[:status]
        next if value.nil? || STATUSES.include?(value.to_s)

        err("#{label(e)}: status #{value.inspect} is not an authoring state " \
            "(#{STATUSES.join('/')}) — in-world standing belongs to a moment effect")
      end
    end

    # A declared provenance has to mean something: an unknown drafter or origin
    # is a typo that would quietly drop the block out of the audit, and a review
    # date nobody can compare against is not a record of anything.
    def check_provenance
      @world.entities.each_value do |e|
        @diagnostic_owner = e
        next if e[:reviewed].nil? || e[:reviewed].to_s.match?(/\A\d{4}-\d{2}-\d{2}\z/)

        err("#{label(e)}: reviewed #{e[:reviewed].inspect} is not a YYYY-MM-DD date")
      end

      each_authored_owner do |owner, block|
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

    def each_authored_owner
      @world.prose_owners.each do |owner|
        @diagnostic_owner = owner
        owner.authored_blocks.each { |block| yield owner, block }
      end
    end

    def each_effect
      @world.all_effects.each do |entry|
        @diagnostic_owner = source_owner(entry[:source])
        yield entry[:effect], entry[:source]
      end
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
      when Page then "page #{owner.id}"
      else owner.to_s
      end
    end
  end
end
