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
      check_narrative_documents: ["invalid_narrative_document", "entry", "Correct the document metadata or its source links."],
      check_published_context: ["invalid_published_context", "entry", "Correct the public annotation or media reference."],
      check_cards: ["invalid_card", "entry", "Correct the card target or card block declaration."],
      check_relation_types: ["invalid_relation", "schema-authoring", "Use a declared relation with compatible endpoints."],
      check_spatial_metadata: ["invalid_spatial_metadata", "schema-authoring", "Correct the frame, position, or route geometry."],
      check_dm_edges: ["dm_relation_leak", "audience", "Mark the relation as DM-only or use public endpoints."],
      check_static_dynamic: ["static_attribute_effect", "schema-authoring", "Move the changing value to a dynamic attribute or relation."],
      check_causality: ["temporal_causality", "time", "Correct the entity lifetime or the effect date."],
      check_cardinality: ["relation_cardinality", "schema-authoring", "Remove the overlapping target or change the declared cardinality."],
      check_exclusivity: ["relation_exclusivity", "schema-authoring", "Remove one of the mutually exclusive live relations."],
      check_tags: ["unknown_tag", "entry", "Declare the tag in the world schema or remove it from the entry."],
      check_prominence: ["invalid_prominence", "entry", "Use a prominence level declared by the schema."],
      check_narrative_roles: ["invalid_narrative_role", "entry", "Use an allowed narrative role on an NPC."],
      check_canonical_metadata: ["invalid_canonical_metadata", "entry", "Correct the article, playability, origin, or veiled declaration."],
      check_playability_requirements: ["unsatisfied_playability_requirement", "schema-authoring", "Restore the declared playable coverage or choice range."],
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
      when NarrativeDocument then "#{owner.document_type}:#{owner.id}"
      when SpatialFrame then "spatial-frame:#{owner.name}"
      when SpatialPosition then "position:#{owner.entity_id}:#{owner.frame}"
      when RouteGeometry then "route-geometry:#{owner.entity_id}"
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

    def check_narrative_documents
      duplicate_entity_sources = @world.entities.values.map(&:source_id)
                                       .tally.select { |_id, count| count > 1 }.keys
      duplicate_entity_sources.each do |id|
        err("source entity id #{id} is declared more than once")
      end

      duplicate_relationship_sources = @world.relation_instances.values.map(&:source_id)
                                             .tally.select { |_id, count| count > 1 }.keys
      duplicate_relationship_sources.each do |id|
        err("source relationship id #{id} is declared more than once")
      end

      duplicate_page_sources = @world.authored_pages.values.map(&:source_id)
                                     .tally.select { |_id, count| count > 1 }.keys
      duplicate_page_sources.each do |id|
        err("source page id #{id} is declared more than once")
      end

      @world.authored_pages.each_value do |page|
        @diagnostic_owner = page
        err("#{label(page)}: title is empty") if page.title.to_s.strip.empty?
        if page.prose_blocks.empty? || page.prose_blocks.all? { |block| block.text.strip.empty? }
          err("#{label(page)}: has no prose")
        end
        if page.status && !%w[complete draft needs_refinement].include?(page.status.to_s)
          err("#{label(page)}: status must be complete, draft, or needs_refinement")
        end
        Array(page[:linked_entity_ids]).each do |id|
          err("#{label(page)}: linked entity #{id} is unknown") unless known?(id)
        end
      end

      @world.narrative_documents.each do |document|
        @diagnostic_owner = document
        if document.title.to_s.strip.empty?
          err("#{label(document)}: title is empty")
        end
        if document.prose_blocks.empty? || document.prose_blocks.all? { |block| block.text.strip.empty? }
          err("#{label(document)}: has no prose")
        end
        unless %w[complete draft needs_refinement].include?(document.status.to_s)
          err("#{label(document)}: status must be complete, draft, or needs_refinement")
        end

        document_type_checks(document)
      end
    end

    def document_type_checks(document)
      if document.document_type == :chronicle
        validate_chronicle(document)
      else
        validate_era_narrative(document)
      end
    end

    def validate_chronicle(document)
      focal_era = document[:focal_era]
      err("#{label(document)}: focal era is missing or unknown") unless @world.timeline.known_era?(focal_era)

      range = document[:tick_range]
      unless range.is_a?(Array) && range.length == 2 && range.first.is_a?(Integer) &&
             (range.last.nil? || range.last.is_a?(Integer))
        err("#{label(document)}: tick range needs a starting integer and an optional ending integer")
      else
        from, to = range
        err("#{label(document)}: tick range is reversed") if to && from > to
        span = @world.timeline.total_span
        if from < span.begin || (to && to > span.end)
          err("#{label(document)}: tick range #{from}..#{to} falls outside #{span.begin}..#{span.end}")
        end
      end

      touched = Array(document[:touched_eras])
      touched.each do |era|
        err("#{label(document)}: touched era #{era} is unknown") unless @world.timeline.known_era?(era)
      end
      entity_ids = Array(document[:entity_ids])
      entity_ids.each do |id|
        err("#{label(document)}: selected entity #{id} is unknown") unless known?(id)
      end
      entrypoint = document[:entrypoint]
      if entrypoint && !known?(entrypoint)
        err("#{label(document)}: entrypoint #{entrypoint} is unknown")
      end
      document[:role_assignments].to_h.each_key do |id|
        err("#{label(document)}: role assignment names unselected entity #{id}") unless entity_ids.include?(id)
      end

      Array(document[:event_ids]).each do |id|
        err("#{label(document)}: source event #{id} is unknown") unless @world.event_record(id)
      end
      Array(document[:relationship_ids]).each do |id|
        err("#{label(document)}: source relationship #{id} is unknown") unless @world.relationship_for_source(id)
      end
    end

    def validate_era_narrative(document)
      era = document[:era]
      err("#{label(document)}: era is missing or unknown") unless @world.timeline.known_era?(era)
      Array(document[:source_chronicle_ids]).each do |id|
        err("#{label(document)}: source chronicle #{id} is unknown") unless @world.chronicle(id)
      end
    end

    def check_published_context
      @world.published_context_owners.each do |owner|
        @diagnostic_owner = owner
        text = owner.prose_blocks.map(&:text).join("\n")

        duplicate_notes = owner.annotations.map(&:id).tally.select { |_id, count| count > 1 }.keys
        duplicate_notes.each { |id| err("#{label(owner)}: repeats public annotation id #{id}") }
        owner.annotations.each do |annotation|
          err("#{label(owner)}: annotation #{annotation.id} has no text") if annotation.text.strip.empty?
          validate_anchor(owner, text, annotation.anchor, annotation.anchor_index, "annotation #{annotation.id}")
        end

        owner.media_references.each do |reference|
          err("#{label(owner)}: media reference has no asset id") if reference.asset_id.strip.empty?
          unless %i[entity cover inline].include?(reference.role)
            err("#{label(owner)}: media #{reference.asset_id} has unknown role #{reference.role}")
          end
          if reference.role == :inline
            validate_anchor(owner, text, reference.anchor, reference.anchor_index, "media #{reference.asset_id}")
          end
          if reference.source_entity && !known?(reference.source_entity)
            err("#{label(owner)}: media #{reference.asset_id} names unknown entity #{reference.source_entity}")
          end
        end
      end

      @world.event_records.each_value do |record|
        @diagnostic_owner = record
        err("event record #{record.id}: era #{record.era} is unknown") unless @world.timeline.known_era?(record.era)
        era_at_tick = @world.timeline.era_at(record.tick)
        if era_at_tick.nil?
          err("event record #{record.id}: tick #{record.tick} falls outside the timeline")
        elsif era_at_tick.name != record.era
          err("event record #{record.id}: tick #{record.tick} belongs to #{era_at_tick.name}, not #{record.era}")
        end
        if record.subject && !known?(record.subject)
          err("event record #{record.id}: subject #{record.subject} is unknown")
        end
        record.participants.each do |participant|
          err("event record #{record.id}: participant #{participant} is unknown") unless known?(participant)
        end
        participant_effect_entity_ids(record.participant_effects).each do |participant|
          err("event record #{record.id}: effect names unknown entity #{participant}") unless known?(participant)
        end
      end
    end

    def validate_anchor(owner, text, anchor, anchor_index, description)
      if anchor.to_s.empty?
        err("#{label(owner)}: #{description} has no text anchor")
        return
      end

      count = text.scan(Regexp.new(Regexp.escape(anchor.to_s))).length
      fallback = anchor_index.nil? ? nil : Integer(anchor_index)
      valid_fallback = fallback && fallback >= 0 && fallback < text.length
      if count.zero? && !valid_fallback
        err("#{label(owner)}: #{description} anchor does not occur and has no valid character fallback")
      end
    rescue ArgumentError, TypeError
      err("#{label(owner)}: #{description} anchor index is not an integer")
    end

    def participant_effect_entity_ids(value)
      case value
      when Array
        value.flat_map { |item| participant_effect_entity_ids(item) }
      when Hash
        value.flat_map do |key, item|
          ids = participant_effect_entity_ids(item)
          ids << item.tr("-", "_").to_sym if key.to_s == "id" && item.is_a?(String)
          ids
        end.uniq
      else
        []
      end
    end

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
      @world.authored_owners.each do |owner|
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
      @schema.relations.each_value { |relation| check_relation_property_schema(relation) }

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
        check_relation_properties(eff.relation, eff.props || {}, source)
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

    def check_relation_property_schema(relation)
      relation.properties.each_value do |property|
        @diagnostic_owner = nil
        (property.requires + property.exclusive_with).each do |other|
          unless relation.properties.key?(other)
            err("relation #{relation.name}: property #{property.name} names unknown property #{other}")
          end
        end
        bounds = [
          property.minimum, property.minimum_exclusive,
          property.maximum, property.maximum_exclusive,
        ].compact
        if bounds.any? && !%i[integer number].include?(property.type)
          err("relation #{relation.name}: non-numeric property #{property.name} declares a numeric bound")
        end
      end
    end

    def check_relation_properties(verb, values, source)
      relation = @schema.relation_def(verb)
      return unless relation

      properties = values.to_h.transform_keys(&:to_sym)
      (properties.keys - relation.properties.keys).each do |name|
        err("#{source}: #{verb} has unknown property #{name}")
      end
      relation.properties.each_value do |definition|
        present = properties.key?(definition.name)
        if definition.required? && !present
          err("#{source}: #{verb} requires property #{definition.name}")
          next
        end
        next unless present

        value = properties[definition.name]
        unless valid_relation_property_value?(definition, value)
          err("#{source}: #{verb}.#{definition.name} expects #{definition.type}, got #{value.inspect}")
          next
        end
        definition.requires.each do |required|
          err("#{source}: #{verb}.#{definition.name} requires property #{required}") \
            unless properties.key?(required)
        end
        clashes = definition.exclusive_with.select { |name| properties.key?(name) }
        unless clashes.empty?
          err("#{source}: #{verb}.#{definition.name} cannot accompany #{clashes.join(', ')}")
        end
        check_relation_property_bounds(verb, definition, value, source)
      end
    end

    def valid_relation_property_value?(definition, value)
      case definition.type
      when :boolean then value == true || value == false
      when :entity then value.respond_to?(:to_sym) && known?(value.to_sym)
      when :enum then value.respond_to?(:to_sym) && definition.values.include?(value.to_sym)
      when :frame then value.respond_to?(:to_sym) && @world.spatial_frames.key?(value.to_sym)
      when :integer then value.is_a?(Integer)
      when :number then finite_number?(value)
      when :text then value.is_a?(String) && !value.strip.empty?
      else false
      end
    end

    def check_relation_property_bounds(verb, definition, value, source)
      return unless finite_number?(value)

      checks = [
        [:minimum, definition.minimum, definition.minimum && value < definition.minimum],
        [
          :minimum_exclusive, definition.minimum_exclusive,
          definition.minimum_exclusive && value <= definition.minimum_exclusive,
        ],
        [:maximum, definition.maximum, definition.maximum && value > definition.maximum],
        [
          :maximum_exclusive, definition.maximum_exclusive,
          definition.maximum_exclusive && value >= definition.maximum_exclusive,
        ],
      ]
      checks.each do |name, bound, failed|
        err("#{source}: #{verb}.#{definition.name} violates #{name} #{bound}") if bound && failed
      end
    end

    SPATIAL_COORDINATES = %i[polar surface].freeze
    SURFACE_SIZE_CLASSES = %i[site district region continent].freeze

    def check_spatial_metadata
      check_spatial_frames
      @world.entities.each_value do |entity|
        check_entity_positions(entity)
        check_route_geometry(entity) if entity.route_geometry
      end
      check_relative_position_cycles
    end

    def check_spatial_frames
      @world.spatial_frames.each_value do |frame|
        @diagnostic_owner = frame
        err("spatial frame #{frame.name}: unknown origin #{frame.origin}") unless known?(frame.origin)
        if frame.parent && !@world.spatial_frames.key?(frame.parent)
          err("spatial frame #{frame.name}: unknown parent frame #{frame.parent}")
        end
        unless SPATIAL_COORDINATES.include?(frame.coordinates)
          err("spatial frame #{frame.name}: unknown coordinate system #{frame.coordinates}")
        end
        if frame.coordinates == :polar && frame.radial_unit.nil?
          err("spatial frame #{frame.name}: a polar frame needs radial_unit")
        end
        if frame.coordinates == :surface && frame.radial_unit
          err("spatial frame #{frame.name}: a surface frame cannot declare radial_unit")
        end
        if frame.prime_meridian && frame.coordinates != :surface
          err("spatial frame #{frame.name}: prime_meridian is only valid on a surface frame")
        end
        if frame.prime_meridian && !known?(frame.prime_meridian)
          err("spatial frame #{frame.name}: unknown prime meridian #{frame.prime_meridian}")
        end
        if frame.prime_meridian && known?(frame.prime_meridian)
          meridian_position = @world.entity(frame.prime_meridian)&.positions&.find do |position|
            position.frame == frame.name
          end
          unless meridian_position
            err("spatial frame #{frame.name}: prime meridian #{frame.prime_meridian} needs a position in this frame")
          end
          if meridian_position && meridian_position.coordinates[:longitude_deg] != 0
            err("spatial frame #{frame.name}: prime meridian #{frame.prime_meridian} must have longitude_deg 0")
          end
        end
        if public_to_dm?(nil, frame.origin) || (frame.prime_meridian && public_to_dm?(nil, frame.prime_meridian))
          err("spatial frame #{frame.name}: public frame metadata references a DM-only entity")
        end
      end

      @world.spatial_frames.each_key do |name|
        if frame_cycle?(name)
          @diagnostic_owner = @world.spatial_frames[name]
          err("spatial frame #{name}: parent frames form a cycle")
        end
      end

      @world.spatial_frames.each_value do |frame|
        next unless frame.parent && known?(frame.origin)

        origin = @world.entity(frame.origin)
        unless origin&.positions&.any? { |position| position.frame == frame.parent }
          @diagnostic_owner = frame
          err("spatial frame #{frame.name}: origin #{frame.origin} needs a position in parent #{frame.parent}")
        end
      end
    end

    def check_entity_positions(entity)
      duplicates = entity.positions.group_by(&:frame).select { |_frame, positions| positions.size > 1 }
      duplicates.each_key do |frame|
        @diagnostic_owner = entity
        err("#{label(entity)}: repeats position in frame #{frame}")
      end

      entity.positions.each do |position|
        @diagnostic_owner = position
        frame = @world.spatial_frames[position.frame]
        unless frame
          err("#{label(entity)}: position uses unknown frame #{position.frame}")
          next
        end
        check_position_coordinates(position, frame)
        next unless position.relative_to

        unless known?(position.relative_to)
          err("#{label(entity)}: relative position names unknown entity #{position.relative_to}")
          next
        end
        anchor = @world.entity(position.relative_to)
        unless anchor&.positions&.any? { |candidate| candidate.frame == position.frame }
          err("#{label(entity)}: relative anchor #{position.relative_to} has no position in #{position.frame}")
        end
        if public_to_dm?(entity, position.relative_to)
          err("#{label(entity)}: public position references DM-only anchor #{position.relative_to}")
        end
      end
    end

    def check_position_coordinates(position, frame)
      values = position.coordinates
      if frame.coordinates == :polar
        if position.relative_to
          check_coordinate_shape(
            values, required: %i[radial_offset angle_offset_deg], allowed: %i[radial_offset angle_offset_deg],
            owner: position
          )
          check_number(values[:radial_offset], "radial_offset", position)
          check_angle_offset(values[:angle_offset_deg], position)
        else
          check_coordinate_shape(
            values, required: %i[radius angle_deg], allowed: %i[radius angle_deg], owner: position
          )
          check_positive_number(values[:radius], "radius", position)
          check_angle(values[:angle_deg], "angle_deg", position)
        end
      elsif frame.coordinates == :surface
        if position.relative_to
          err("position #{position.entity_id}: surface positions cannot be relative")
          return
        end
        check_coordinate_shape(
          values,
          required: %i[latitude_deg longitude_deg],
          allowed: %i[latitude_deg longitude_deg extent_radius_km size_class],
          owner: position
        )
        check_latitude(values[:latitude_deg], position)
        check_longitude(values[:longitude_deg], position)
        check_positive_number(values[:extent_radius_km], "extent_radius_km", position) \
          if values.key?(:extent_radius_km)
        if values.key?(:size_class) && !SURFACE_SIZE_CLASSES.include?(values[:size_class]&.to_sym)
          err("position #{position.entity_id}: size_class must be #{SURFACE_SIZE_CLASSES.join(', ')}")
        end
        if values.key?(:extent_radius_km) && values.key?(:size_class)
          err("position #{position.entity_id}: extent_radius_km and size_class are mutually exclusive")
        end
      end
    end

    def check_route_geometry(entity)
      geometry = entity.route_geometry
      @diagnostic_owner = geometry
      unless @schema.location_kind?(entity.kind)
        err("#{label(entity)}: route geometry is only valid on a location")
      end
      frame = @world.spatial_frames[geometry.frame]
      unless frame
        err("#{label(entity)}: route geometry uses unknown frame #{geometry.frame}")
        return
      end

      geometry.points.each_value do |point|
        if point.anchor?
          unless known?(point.entity_id)
            err("#{label(entity)}: route anchor #{point.id} names unknown entity #{point.entity_id}")
            next
          end
          unless entity_reaches_frame?(point.entity_id, geometry.frame)
            err("#{label(entity)}: route anchor #{point.entity_id} has no position resolving to #{geometry.frame}")
          end
          if public_to_dm?(entity, point.entity_id)
            err("#{label(entity)}: public route geometry references DM-only anchor #{point.entity_id}")
          end
        else
          check_route_point_coordinates(point, frame, entity)
        end
      end

      if geometry.paths.empty?
        err("#{label(entity)}: route geometry needs at least one path")
      end
      geometry.paths.each_value do |path|
        if path.points.size < 2
          err("#{label(entity)}: route path #{path.id} needs at least two points")
        end
        path.points.each do |point_id|
          err("#{label(entity)}: route path #{path.id} names unknown point #{point_id}") \
            unless geometry.points.key?(point_id)
        end
      end
    end

    def check_route_point_coordinates(point, frame, entity)
      position = SpatialPosition.new(
        entity_id: "#{entity.id}:#{point.id}", frame: frame.name,
        coordinates: point.coordinates, source_file: entity.source_file, source_line: point.source_line
      )
      check_position_coordinates(position, frame)
    end

    def check_coordinate_shape(values, required:, allowed:, owner:)
      (required - values.keys).each do |name|
        err("position #{owner.entity_id}: missing coordinate #{name}")
      end
      (values.keys - allowed).each do |name|
        err("position #{owner.entity_id}: coordinate #{name} is not valid here")
      end
    end

    def check_positive_number(value, name, owner)
      unless finite_number?(value) && value.positive?
        err("position #{owner.entity_id}: #{name} must be a positive number")
      end
    end

    def check_number(value, name, owner)
      err("position #{owner.entity_id}: #{name} must be a finite number") unless finite_number?(value)
    end

    def check_angle(value, name, owner)
      unless finite_number?(value) && value >= 0 && value < 360
        err("position #{owner.entity_id}: #{name} must be at least 0 and less than 360")
      end
    end

    def check_angle_offset(value, owner)
      unless finite_number?(value) && value > -360 && value < 360
        err("position #{owner.entity_id}: angle_offset_deg must be greater than -360 and less than 360")
      end
    end

    def check_latitude(value, owner)
      unless finite_number?(value) && value >= -90 && value <= 90
        err("position #{owner.entity_id}: latitude_deg must be between -90 and 90")
      end
    end

    def check_longitude(value, owner)
      unless finite_number?(value) && value >= -180 && value < 180
        err("position #{owner.entity_id}: longitude_deg must be at least -180 and less than 180")
      end
    end

    def finite_number?(value)
      value.is_a?(Numeric) && (!value.respond_to?(:finite?) || value.finite?)
    end

    def frame_cycle?(start)
      seen = Set.new
      cursor = start
      while cursor
        return true if seen.include?(cursor)

        seen << cursor
        cursor = @world.spatial_frames[cursor]&.parent
      end
      false
    end

    def check_relative_position_cycles
      @world.spatial_frames.each_key do |frame|
        @world.entities.each_value do |entity|
          seen = Set.new
          cursor = entity
          while cursor
            return_cycle = seen.include?(cursor.id)
            if return_cycle
              @diagnostic_owner = entity
              err("#{label(entity)}: relative positions form a cycle in frame #{frame}")
              break
            end
            seen << cursor.id
            position = cursor.positions.find { |candidate| candidate.frame == frame }
            cursor = position&.relative_to && @world.entity(position.relative_to)
          end
        end
      end
    end

    def entity_reaches_frame?(entity_id, target_frame)
      entity = @world.entity(entity_id)
      entity&.positions&.any? do |position|
        frame_or_ancestor?(position.frame, target_frame)
      end
    end

    def frame_or_ancestor?(frame_name, target_frame)
      cursor = frame_name
      while cursor
        return true if cursor == target_frame

        cursor = @world.spatial_frames[cursor]&.parent
      end
      false
    end

    def public_to_dm?(owner, target_id)
      return false if owner&.respond_to?(:dm?) && owner.dm?

      target = @world.entity(target_id)
      target&.dm? == true
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
        property_targets = (effect.props || {}).filter_map do |name, value|
          definition = @schema.relation_def(effect.relation)&.properties&.fetch(name.to_sym, nil)
          @world.entity(value.to_sym) if definition&.type == :entity && value.respond_to?(:to_sym)
        end
        next unless source&.dm? || target&.dm? || property_targets.any?(&:dm?)

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

    VEILED_DISALLOWED_PHRASES = [
      /\bnobody knows\b/i,
      /\bno one knows\b/i,
      /\bnobody admits\b/i,
      /\bno one admits\b/i,
      /\bnot what (?:it|they|he|she) seems?\b/i,
      /\brefuses? to say\b/i,
      /\b(?:will not|won't) say\b/i,
      /\bunknown\b/i,
    ].freeze
    VEILED_ALLOWED_STATIC_ATTRS = %i[title tags prominence status subkind veiled].freeze
    ORIGIN_ROLES = %i[species culture homeland allegiance].freeze

    def check_canonical_metadata
      @world.entities.each_value do |entity|
        @diagnostic_owner = entity
        accepted = entity.playable_as

        accepted.uniq.each do |role|
          err("#{label(entity)}: unknown playable role #{role.inspect}") unless @schema.playable_role?(role)
        end

        check_origin_blurb(entity, accepted)
        check_article_metadata(entity, accepted)
        check_veiled_metadata(entity, accepted) if entity.veiled?
        check_playable_entry_visibility(entity, accepted)
      end
    end

    def check_playable_entry_visibility(entity, accepted)
      return if accepted.empty?

      err("#{label(entity)}: a DM-only entry cannot declare playable roles") if entity.dm?
      err("#{label(entity)}: a structural entry cannot declare playable roles") if entity.structural?
      err("#{label(entity)}: a shell cannot declare playable roles") if entity[:status] == :shell
      unless @schema.wiki_kind?(entity.kind)
        err("#{label(entity)}: a non-reader entry cannot declare playable roles")
      end
    end

    def check_origin_blurb(entity, accepted)
      blurb = entity.origin_blurb
      if (accepted & ORIGIN_ROLES).any? && blurb.nil?
        err("#{label(entity)}: playable origin needs an origin_blurb")
        return
      end
      return if blurb.nil?

      unless blurb.is_a?(String) && !blurb.strip.empty?
        err("#{label(entity)}: origin_blurb must be non-empty text")
        return
      end
      err("#{label(entity)}: origin_blurb exceeds 140 characters") if blurb.length > 140
      err("#{label(entity)}: origin_blurb must fit on one line") if blurb.match?(/[\r\n]/)
      if (accepted & ORIGIN_ROLES).empty?
        err("#{label(entity)}: origin_blurb requires a playable origin role")
      end
    end

    def check_article_metadata(entity, accepted)
      return unless entity.article?

      err("#{label(entity)}: an article cannot be structural") if entity.structural?
      err("#{label(entity)}: an article cannot be veiled") if entity.veiled?
      err("#{label(entity)}: an article cannot declare playable roles") unless accepted.empty?
      err("#{label(entity)}: a shell cannot be an article") if entity[:status] == :shell
    end

    def check_veiled_metadata(entity, accepted)
      tagline = entity.veil_tagline
      unless tagline == tagline.strip && tagline.end_with?(".") && tagline.scan(/[.!?]/).size == 1
        err("#{label(entity)}: veiled tagline must be one trimmed declarative sentence ending in a period")
      end
      err("#{label(entity)}: veiled tagline exceeds 180 characters") if tagline.length > 180
      if VEILED_DISALLOWED_PHRASES.any? { |pattern| tagline.match?(pattern) }
        err("#{label(entity)}: veiled tagline must state an affirmative concrete fact")
      end
      err("#{label(entity)}: a veiled entry cannot be DM-only") if entity.dm?
      err("#{label(entity)}: a veiled entry cannot be structural") if entity.structural?
      err("#{label(entity)}: a veiled entry cannot be a location") if @schema.location_kind?(entity.kind)
      err("#{label(entity)}: a shell cannot be veiled") if entity[:status] == :shell
      err("#{label(entity)}: a veiled entry cannot declare playable roles") unless accepted.empty?
      unless entity.content_blocks.empty? && entity.fact_values.empty? && entity.custom_fact_defs.empty?
        err("#{label(entity)}: a veiled entry may contain only its name, tagline, and indexing metadata")
      end
      extra = entity.static_attrs.keys - VEILED_ALLOWED_STATIC_ATTRS
      unless extra.empty?
        err("#{label(entity)}: veiled entry has unsupported metadata #{extra.map(&:inspect).join(', ')}")
      end
    end

    def check_playability_requirements
      @schema.playable_coverage_requirements.each do |requirement|
        exception_ids = requirement.exceptions.to_set
        exception_ids.each do |id|
          entity = @world.entity(id)
          @diagnostic_owner = entity
          if entity.nil?
            err("playable coverage for #{requirement.role.inspect} names unknown exception #{id}")
            next
          end
          unless requirement.kinds.include?(entity.kind)
            err("#{label(entity)}: playable coverage exception #{id} is not one of " \
                "#{requirement.kinds.join(', ')}")
          end
          if entity.playable_as?(requirement.role)
            err("#{label(entity)}: cannot both accept playable role #{requirement.role.inspect} " \
                "and be its coverage exception")
          end
        end

        candidates = @world.entities.values.select do |entity|
          requirement.kinds.include?(entity.kind) && entity[:status] != :shell && !entity.article?
        end
        candidates.each do |entity|
          @diagnostic_owner = entity
          next if entity.playable_as?(requirement.role) || exception_ids.include?(entity.id)

          err("#{label(entity)}: must declare playable_as #{requirement.role.inspect} or be named " \
              "in the world's coverage exceptions")
        end

        next unless requirement.exclusive

        @world.entities.each_value do |entity|
          next unless entity.playable_as?(requirement.role)
          next if requirement.kinds.include?(entity.kind)

          @diagnostic_owner = entity
          err("#{label(entity)}: playable role #{requirement.role.inspect} is limited to " \
              "#{requirement.kinds.join(', ')}")
        end
      end

      @schema.playable_count_requirements.each do |requirement|
        selected = @world.entities.values.count { |entity| entity.playable_as?(requirement.role) }
        within_minimum = selected >= requirement.minimum
        within_maximum = requirement.maximum.nil? || selected <= requirement.maximum
        next if within_minimum && within_maximum

        @diagnostic_owner = nil
        range = requirement.maximum ? "#{requirement.minimum}..#{requirement.maximum}" : "at least #{requirement.minimum}"
        err("playable role #{requirement.role.inspect} has #{selected} entries; requires #{range}")
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
      @world.authored_owners.each do |owner|
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
      when NarrativeDocument then "#{owner.document_type} #{owner.id}"
      else owner.to_s
      end
    end
  end
end
