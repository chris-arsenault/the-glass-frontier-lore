# frozen_string_literal: true

require "fileutils"
require "json"
require "pathname"
require "set"

module Lorecraft
  module Render
    # JSON projection for the Tsonu Canon reader. The browser receives only
    # player knowledge. Questions, entry logs and drafting records go into a
    # separate document intended for the authenticated editorial API.
    class Site < Base
      SCHEMA_VERSION = 8
      CAUSAL_RELATIONS = %w[causes caused caused_by].freeze

      def initialize(world, root: Dir.pwd)
        super(world)
        @root = Pathname.new(root).expand_path
      end

      def render(out:, world_id:, title:, revision:, at: :now, internal_out: nil)
        @world_id = world_id.to_s
        @world_title = title.to_s
        @year = @world.timeline.year_for(at)
        @revision = revision.to_s
        @visible_nodes = visible_nodes(:player)
        @visible_ids = @visible_nodes.map(&:id).to_set
        @site_graph = graph_document

        target = Pathname.new(out).join("worlds", @world_id)
        FileUtils.rm_rf(target)
        target.mkpath

        entries = @visible_nodes.map { |node| entry_summary(node) }
        pages = public_authored_pages.map { |page| page_summary(page) }
        chronicles = @world.chronicles.values.map { |document| chronicle_summary(document) }
        era_narratives = @world.era_narratives.values.map { |document| era_narrative_summary(document) }
        write_json(
          target.join("index.json"),
          world_document(entries, pages, chronicles, era_narratives),
        )
        write_json(target.join("graph.json"), @site_graph)
        write_json(target.join("timeline.json"), timeline_document)

        @visible_nodes.each do |node|
          write_json(target.join("entries", "#{slug(node.id)}.json"), entry_document(node))
        end
        public_authored_pages.each do |page|
          write_json(target.join("pages", "#{slug(page.id)}.json"), authored_page_document(page))
        end
        @world.chronicles.each_value do |document|
          write_json(
            target.join("chronicles", "#{slug(document.id)}.json"),
            chronicle_document(document),
          )
        end
        @world.era_narratives.each_value do |document|
          write_json(
            target.join("era-narratives", "#{slug(document.id)}.json"),
            era_narrative_document(document),
          )
        end

        write_editorial(internal_out) if internal_out

        {
          id: @world_id,
          title: @world_title,
          revision: @revision,
          generated_at_year: @year,
          time_unit: @world.timeline.unit.to_s,
          entry_count: entries.size,
          page_count: pages.size,
          chronicle_count: chronicles.size,
          era_narrative_count: era_narratives.size,
          home: public_authored_pages.any? { |page| page.id == :home } ? "home" : nil,
          description: world_description(entries),
        }
      end

      # Marker callbacks are public because Marker#resolve dispatches to them.
      public

      def on_future(marker) = marker.name

      def on_ref(marker)
        node = marker.id && @world[marker.id]
        return marker[:text] || marker.id&.to_s || marker[:path] || "" unless site_visible?(node, @audience)
        return marker[:text] || node.title if marker.id == @subject

        text = marker[:text] || node.title
        anchor = marker[:anchor] ? "##{marker[:anchor]}" : ""
        "[#{text}](#{entry_route(node.id)}#{anchor})"
      end

      def on_rel(marker)
        @world.at(@year).out(@subject, marker.verb).filter_map do |target|
          node = @world[target]
          "[#{node.title}](#{entry_route(node.id)})" if site_visible?(node, @audience)
        end.join(", ")
      rescue StandardError
        ""
      end

      private

      def visible_nodes(audience)
        @world.pages.select { |node| site_visible?(node, audience) }
      end

      def site_visible?(node, audience)
        return false unless node&.respond_to?(:title)
        return false if node.respond_to?(:[]) && node[:status].to_s == "shell"
        return false if node.respond_to?(:kind) && !@world.schema.wiki_kind?(node.kind)
        return false if audience == :player && node.respond_to?(:dm?) && node.dm?

        true
      end

      def public_authored_pages
        @public_authored_pages ||= @world.authored_pages.values.select do |page|
          %i[all player].include?(page.audience)
        end
      end

      def resolve_site_text(text, subject:, audience:, stack: [])
        previous = [@subject, @audience, @embed_stack]
        @subject = subject
        @audience = audience
        @embed_stack = stack
        rendered = text.dup
        Markers.scan(text) { |match, marker| rendered = rendered.sub(match, marker.resolve(self).to_s) }
        replace_wiki_links(rendered)
      ensure
        @subject, @audience, @embed_stack = previous
      end

      def resolve_embedded(text, stack)
        resolve_site_text(text, subject: @subject, audience: @audience, stack: stack)
      end

      def replace_wiki_links(text)
        text.gsub(/\[\[([^\]|]+)(?:\|([^\]]+))?\]\]/) do
          label = Regexp.last_match(1)
          target = Regexp.last_match(2) || label
          route = route_for_legacy_page(target)
          route ? "[#{label}](#{route})" : label
        end
      end

      def route_for_legacy_page(target)
        case target
        when "Timeline" then "/#{@world_id}/timeline"
        when "Tags" then "/#{@world_id}/browse"
        when "Causality" then "/#{@world_id}/graph?relation=causal"
        when /\A(.+) Index\z/ then "/#{@world_id}/browse?section=#{slug(Regexp.last_match(1))}"
        else
          node = @visible_nodes.find { |candidate| candidate.title == target }
          node && entry_route(node.id)
        end
      end

      def world_document(entries, pages, chronicles, era_narratives)
        {
          schema_version: SCHEMA_VERSION,
          id: @world_id,
          title: @world_title,
          revision: @revision,
          generated_at_year: @year,
          time_unit: @world.timeline.unit.to_s,
          home: pages.any? { |page| page[:id] == "home" } ? "home" : nil,
          entries: entries.sort_by { |entry| entry[:title] },
          pages: pages.sort_by { |page| page[:title] },
          chronicles: chronicles.sort_by { |document| [document[:from], document[:title]] },
          era_narratives: era_narratives.sort_by { |document| [document[:starts], document[:title]] },
          kinds: kind_index(entries),
          subkinds: subkind_index(entries),
          tags: @world.schema.tags.sort_by { |name, _| name.to_s }.map do |name, description|
            { id: name.to_s, title: humanize(name), description: description }
          end,
          relations: @world.schema.relations.values.sort_by { |relation| relation.name.to_s }.map do |relation|
            relation_definition(relation)
          end,
          spatial_frames: spatial_frame_documents,
        }
      end

      def entry_summary(node)
        sections = sections_for(node, :player)
        {
          id: node.id.to_s,
          source_id: node.respond_to?(:source_id) ? node.source_id : node.id.to_s,
          slug: slug(node.id),
          title: node.title,
          kind: node.kind.to_s,
          subkind: node.subkind.to_s,
          section: section_for(node),
          tags: node.respond_to?(:tags) ? node.tags.map(&:to_s) : [],
          prominence: node.respond_to?(:prominence) && node.prominence&.to_s,
          aliases: array_attr(node, :alias),
          status: node.respond_to?(:[]) && node[:status]&.to_s,
          region: node.respond_to?(:[]) && node[:region]&.to_s,
          narrative_role: node.respond_to?(:[]) && node[:narrative_role]&.to_s,
          is_article: node.respond_to?(:article?) && node.article?,
          playable_as: node.respond_to?(:playable_as) ? node.playable_as.map(&:to_s) : [],
          origin_blurb: node.respond_to?(:origin_blurb) && node.origin_blurb,
          veiled: node.respond_to?(:veiled?) && node.veiled?,
          veil_tagline: node.respond_to?(:veiled?) && node.veiled? ? node.veil_tagline : nil,
          positions: position_documents(node),
          summary: summary_for(node, sections),
          route: entry_route(node.id),
        }.compact
      end

      def entry_document(node, audience: :player)
        summary = entry_summary_for_audience(node, audience)
        edges = graph_edges_for(node.id)
        summary.merge(
          schema_version: SCHEMA_VERSION,
          world_id: @world_id,
          revision: @revision,
          generated_at_year: @year,
          time_unit: @world.timeline.unit.to_s,
          sections: sections_for(node, audience),
          facts: fact_documents(node, audience),
          connections: edges.map { |edge| connection_document(node.id, edge) },
          timeline_event_ids: event_ids_for(node.id),
          chronicles: chronicles_for(node.id),
          annotations: annotation_documents(node),
          media: media_documents(node),
          route_geometry: route_geometry_document(node),
        )
      end

      def entry_summary_for_audience(node, audience)
        return entry_summary(node) if audience == :player

        sections = sections_for(node, audience)
        {
          id: node.id.to_s,
          source_id: node.respond_to?(:source_id) ? node.source_id : node.id.to_s,
          slug: slug(node.id),
          title: node.title,
          kind: node.kind.to_s,
          subkind: node.subkind.to_s,
          tags: node.respond_to?(:tags) ? node.tags.map(&:to_s) : [],
          prominence: node.respond_to?(:prominence) && node.prominence&.to_s,
          aliases: array_attr(node, :alias),
          status: node.respond_to?(:[]) && node[:status]&.to_s,
          region: node.respond_to?(:[]) && node[:region]&.to_s,
          dm: node.respond_to?(:dm?) && node.dm?,
          is_article: node.respond_to?(:article?) && node.article?,
          playable_as: node.respond_to?(:playable_as) ? node.playable_as.map(&:to_s) : [],
          origin_blurb: node.respond_to?(:origin_blurb) && node.origin_blurb,
          veiled: node.respond_to?(:veiled?) && node.veiled?,
          veil_tagline: node.respond_to?(:veiled?) && node.veiled? ? node.veil_tagline : nil,
          positions: position_documents(node),
          summary: summary_for(node, sections),
          route: entry_route(node.id),
        }.compact
      end

      def sections_for(node, audience)
        blocks = node.authored_blocks.select do |block|
          block.visible_at?(@year, audience: audience == :player ? :player : :all)
        end
        main, sectioned = blocks.sort_by(&:order).partition { |block| block.section == :main }
        sections = []
        if node.respond_to?(:veiled?) && node.veiled?
          sections << {
            id: "#{node.id}:veil",
            format: "prose",
            section: "main",
            markdown: node.veil_tagline,
            owner_id: node.id.to_s,
            owner_kind: node.kind.to_s,
          }
        end
        sections.concat(main.map do |block|
          block_document(block, node.id, audience, owner: node)
        end)

        (moments_for(node.id) + relationships_for(node.id)).each do |owner|
          next if audience == :player && owner.dm?

          owner.prose_blocks.sort_by(&:order).each do |block|
            next if audience == :player && block.dm?

            sections << block_document(block, node.id, audience, owner: owner)
          end
        end
        sections.concat(sectioned.map do |block|
          block_document(block, node.id, audience, owner: node)
        end)
        sections
      end

      def block_document(block, subject, audience, owner:)
        return card_block_document(block, subject, audience, owner: owner) if block.cards?

        {
          id: "#{owner.id}:#{block.section}:#{block.order}",
          format: "prose",
          section: block.section.to_s,
          heading: block.heading || (block.section == :main ? nil : humanize(block.section)),
          markdown: resolve_site_text(block.text, subject: subject, audience: audience).strip,
          at_year: block.at_year,
          owner_id: owner.id.to_s,
          owner_kind: owner.respond_to?(:kind) ? owner.kind.to_s : "relationship",
        }.compact
      end

      def card_block_document(block, subject, audience, owner:)
        {
          id: "#{owner.id}:#{block.section}:#{block.order}",
          format: "cards",
          section: block.section.to_s,
          heading: block.heading || humanize(block.section),
          cards: block.cards.map do |card|
            target = @world[card.target]
            {
              entry_id: card.target.to_s,
              title: target&.title || humanize(card.target),
              route: entry_route(card.target),
              description: resolve_site_text(
                card.description, subject: subject, audience: audience
              ).strip,
            }
          end,
          at_year: block.at_year,
          owner_id: owner.id.to_s,
          owner_kind: owner.respond_to?(:kind) ? owner.kind.to_s : "relationship",
        }.compact
      end

      def page_summary(page)
        content = authored_page_sections(page)
        {
          id: page.id.to_s,
          source_id: page.source_id,
          slug: slug(page.id),
          title: page.title,
          summary: page.summary || summarize(prose_markdown(content)),
          category: page[:category]&.to_s,
          route: page.id == :home ? "/#{@world_id}" : "/#{@world_id}/page/#{slug(page.id)}",
        }
      end

      def authored_page_document(page)
        page_summary(page).merge(
          schema_version: SCHEMA_VERSION,
          world_id: @world_id,
          revision: @revision,
          source_status: page[:source_status],
          linked_entities: Array(page[:linked_entity_ids]).filter_map do |id|
            node = @world[id]
            next unless site_visible?(node, :player)

            { id: id.to_s, title: node.title, route: entry_route(id) }
          end,
          sections: authored_page_sections(page),
        )
      end

      def authored_page_sections(page)
        page.prose_blocks.sort_by { |block| block[:order] }.map do |block|
          {
            id: "#{page.id}:#{block[:order]}",
            format: "prose",
            section: block[:heading] ? slug(block[:heading]) : "main",
            heading: block[:heading],
            markdown: resolve_site_text(block[:text], subject: page.id, audience: :player).strip,
          }.compact
        end
      end

      def chronicle_summary(document)
        from, to = document[:tick_range]
        {
          id: document.id.to_s,
          source_id: document.source_id,
          slug: slug(document.id),
          title: document.title,
          summary: document.summary || summarize(document.prose_blocks.map(&:text).join("\n\n")),
          format: document[:format]&.to_s,
          focus: document[:focus]&.to_s,
          focal_era: document[:focal_era]&.to_s,
          from: from,
          to: to,
          temporal_description: document[:temporal_description],
          route: chronicle_route(document.id),
          cover: media_documents(document).find { |reference| reference[:role] == "cover" },
        }.compact
      end

      def chronicle_document(document)
        chronicle_summary(document).merge(
          schema_version: SCHEMA_VERSION,
          world_id: @world_id,
          revision: @revision,
          time_unit: @world.timeline.unit.to_s,
          narrative_style: document[:narrative_style]&.to_s,
          touched_eras: Array(document[:touched_eras]).map(&:to_s),
          entrypoint_id: document[:entrypoint]&.to_s,
          entities: Array(document[:entity_ids]).filter_map do |id|
            node = @world[id]
            next unless site_visible?(node, :player)

            { id: id.to_s, title: node.title, route: entry_route(id) }
          end,
          events: Array(document[:event_ids]).filter_map do |id|
            record = @world.event_record(id)
            event_record_document(record) if record
          end,
          relationships: Array(document[:relationship_ids]).filter_map do |id|
            relation = @world.relationship_for_source(id)
            relationship_source_document(relation) if relation
          end,
          role_assignments: document[:role_assignments].to_h.transform_keys(&:to_s),
          sections: narrative_sections(document),
          content: narrative_markdown(document),
          annotations: annotation_documents(document),
          media: media_documents(document),
        )
      end

      def era_narrative_summary(document)
        era = @world.timeline.era_named(document[:era])
        {
          id: document.id.to_s,
          source_id: document.source_id,
          slug: slug(document.id),
          title: document.title,
          summary: document.summary || document[:thesis] || summarize(document.prose_blocks.map(&:text).join("\n\n")),
          era: document[:era]&.to_s,
          starts: era&.start_year,
          ends: era&.end_year,
          route: era_narrative_route(document.id),
          cover: media_documents(document).find { |reference| reference[:role] == "cover" },
        }.compact
      end

      def era_narrative_document(document)
        era_narrative_summary(document).merge(
          schema_version: SCHEMA_VERSION,
          world_id: @world_id,
          revision: @revision,
          time_unit: @world.timeline.unit.to_s,
          thesis: document[:thesis],
          tone: document[:tone],
          source_chronicles: Array(document[:source_chronicle_ids]).filter_map do |id|
            chronicle = @world.chronicle(id)
            chronicle_summary(chronicle) if chronicle
          end,
          sections: narrative_sections(document),
          content: narrative_markdown(document),
          annotations: annotation_documents(document),
          media: media_documents(document),
        ).compact
      end

      def narrative_sections(document)
        document.prose_blocks.sort_by(&:order).map do |block|
          block_document(block, document.id, :player, owner: document)
        end
      end

      def narrative_markdown(document)
        narrative_sections(document).filter_map { |section| section[:markdown] }.join("\n\n")
      end

      def annotation_documents(owner)
        return [] unless owner.respond_to?(:annotations)

        owner.annotations.map do |annotation|
          {
            id: annotation.id,
            anchor: annotation.anchor,
            source_anchor: annotation.source_anchor,
            anchor_index: annotation.anchor_index,
            text: annotation.text,
            type: annotation.kind.to_s,
            display: annotation.display.to_s,
          }.compact
        end
      end

      def media_documents(owner)
        return [] unless owner.respond_to?(:media_references)

        owner.media_references.map do |reference|
          {
            asset_id: reference.asset_id,
            role: reference.role.to_s,
            url: reference.url,
            anchor: reference.anchor,
            anchor_index: reference.anchor_index,
            caption: reference.caption,
            size: reference.size&.to_s,
            justification: reference.justification&.to_s,
            source_entity_id: reference.source_entity&.to_s,
            reference_id: reference.reference_id,
          }.compact
        end
      end

      def event_record_document(record)
        {
          id: record.id,
          tick: record.tick,
          era: record.era&.to_s,
          kind: record.event_kind.to_s,
          subject_id: record.subject&.to_s,
          action: record.action,
          description: record.description,
          significance: record.significance,
          tags: record.tags.map(&:to_s),
          participant_ids: record.participants.map(&:to_s),
          participant_effects: record.participant_effects,
          caused_by: record.caused_by,
        }.compact
      end

      def relationship_source_document(relation)
        {
          source_id: relation.source_id,
          relation: relation.verb.to_s,
          source: {
            id: relation.source.to_s,
            title: @world[relation.source]&.title || humanize(relation.source),
            route: entry_route(relation.source),
          },
          target: {
            id: relation.target.to_s,
            title: @world[relation.target]&.title || humanize(relation.target),
            route: entry_route(relation.target),
          },
          from: relation.from_year,
          to: relation.to_year,
          props: (relation.props unless relation.props.empty?),
          source_metadata: relation.source_metadata,
        }.compact
      end

      def chronicles_for(entity_id)
        @world.chronicles.values.select do |document|
          Array(document[:entity_ids]).include?(entity_id.to_sym)
        end.map { |document| chronicle_summary(document) }
      end

      def graph_document
        raw = JSON.parse(Graph.new(@world).render(at: @year, audience: :player, pretty: false))
        nodes = raw.fetch("nodes").select { |node| @visible_ids.include?(node.fetch("id").to_sym) }
        edges = raw.fetch("edges").select do |edge|
          @visible_ids.include?(edge.fetch("src").to_sym) && @visible_ids.include?(edge.fetch("tgt").to_sym)
        end
        existing = edges.map { |edge| [edge["src"], edge["rel"], edge["tgt"]] }.to_set
        @world.embed_edges(audience: :player).each do |source, relation, target|
          next unless @visible_ids.include?(source) && @visible_ids.include?(target)
          next if existing.include?([source.to_s, relation.to_s, target.to_s])

          edges << {
            "src" => source.to_s,
            "rel" => relation.to_s,
            "tgt" => target.to_s,
            "from" => @world.timeline.total_span.begin,
            "to" => nil,
            "dm" => false,
            "live_at_render" => true,
          }
        end
        {
          schema_version: SCHEMA_VERSION,
          world_id: @world_id,
          revision: @revision,
          generated_at_year: @year,
          time_unit: @world.timeline.unit.to_s,
          nodes: nodes,
          edges: edges.sort_by { |edge| [edge["src"], edge["rel"], edge["tgt"], edge["from"]] },
        }
      end

      def fact_documents(node, audience)
        Facts.new(@world).present(node, at: @year, audience: audience).filter_map do |row|
          definition = row.definition
          if %i[entity entities].include?(definition.type)
            targets = Array(row.value).filter_map do |id|
              target = @world[id]
              next unless site_visible?(target, audience)

              { entry_id: id.to_s, title: target.title, route: entry_route(id) }
            end.sort_by { |target| target[:title] }
            next if targets.empty?

            {
              id: definition.name.to_s,
              label: definition.label,
              type: definition.type.to_s,
              links: targets,
            }
          else
            {
              id: definition.name.to_s,
              label: definition.label,
              type: definition.type.to_s,
              value: format_fact_value(definition, row.value),
            }
          end
        end
      end

      def format_fact_value(definition, value)
        case definition.type
        when :year
          point = @world.year_of(value)
          @world.timeline.unit == :year ? "#{point} CE" : "#{@world.timeline.unit} #{point}"
        when :integer then value
        else value.to_s
        end
      end

      def timeline_document
        {
          schema_version: SCHEMA_VERSION,
          world_id: @world_id,
          revision: @revision,
          now: @year,
          unit: @world.timeline.unit.to_s,
          eras: @world.timeline.eras.map do |era|
            {
              id: era.name.to_s,
              title: era.title || humanize(era.name),
              description: era.description,
              starts: era.start_year,
              ends: era.end_year,
            }.compact
          end,
          events: public_events,
        }
      end

      def public_events
        @public_events ||= @world.moments.values.reject(&:genesis?).reject(&:dm?).filter_map do |moment|
          next unless @visible_ids.include?(moment.id) || (moment.home && @visible_ids.include?(moment.home))

          text = moment.prose_blocks.reject(&:dm?).map do |block|
            resolve_site_text(block.text, subject: moment.home || moment.id, audience: :player).strip
          end.reject(&:empty?)
          {
            id: moment.id.to_s,
            title: moment.title,
            year: moment.year,
            ends: moment.to_year == moment.year ? nil : moment.to_year,
            era: @world.timeline.era_at(moment.year)&.name&.to_s,
            home_id: moment.home&.to_s,
            entry_id: (@visible_ids.include?(moment.id) ? moment.id.to_s : moment.home&.to_s),
            summary: summarize(text.join("\n\n")),
            markdown: text.join("\n\n"),
          }.compact
        end.sort_by { |event| [event[:year], event[:title]] }
      end

      def event_ids_for(id)
        public_events.select do |event|
          event[:entry_id] == id.to_s || event[:home_id] == id.to_s || event_touches?(event[:id], id)
        end.map { |event| event[:id] }
      end

      def event_touches?(event_id, id)
        moment = @world.moment(event_id.to_sym)
        moment && moment.effects.any? { |effect| effect.subject == id.to_sym || effect.target == id.to_sym }
      end

      def graph_edges_for(id)
        @site_graph.fetch(:edges).select { |edge| edge["src"] == id.to_s || edge["tgt"] == id.to_s }
      end

      def connection_document(id, edge)
        outgoing = edge["src"] == id.to_s
        other_id = outgoing ? edge["tgt"] : edge["src"]
        other = @world[other_id.to_sym]
        {
          direction: outgoing ? "outgoing" : "incoming",
          relation: edge["rel"],
          relation_title: humanize(edge["rel"]),
          entry_id: other_id,
          title: other&.title || humanize(other_id),
          route: entry_route(other_id),
          from: edge["from"],
          to: edge["to"],
          live: edge["live_at_render"],
          properties: edge["props"],
        }.compact
      end

      def kind_index(entries)
        entries.group_by { |entry| entry[:kind] }.map do |kind, members|
          { id: kind, title: humanize(kind), count: members.size }
        end.sort_by { |kind| kind[:title] }
      end

      def subkind_index(entries)
        entries.group_by { |entry| [entry[:kind], entry[:subkind]] }.map do |(kind, subkind), members|
          definition = @world.schema.subkind_def(kind, subkind)
          {
            id: subkind,
            kind: kind,
            title: definition&.label || humanize(subkind),
            count: members.size,
          }
        end.sort_by { |subkind| [subkind[:kind], subkind[:title]] }
      end

      def relation_definition(relation)
        {
          id: relation.name.to_s,
          title: humanize(relation.name),
          category: relation.category.to_s,
          temporal: relation.temporal,
          symmetric: relation.symmetric,
          inverse: relation.inverse&.to_s,
          description: relation.description,
          causal: CAUSAL_RELATIONS.include?(relation.name.to_s),
          properties: relation.properties.values.sort_by { |property| property.name.to_s }.map do |property|
            {
              id: property.name.to_s,
              type: property.type.to_s,
              values: property.values.empty? ? nil : property.values.map(&:to_s),
              required: property.required?,
              minimum: property.minimum,
              minimum_exclusive: property.minimum_exclusive,
              maximum: property.maximum,
              maximum_exclusive: property.maximum_exclusive,
              requires: property.requires.empty? ? nil : property.requires.map(&:to_s),
              exclusive_with: property.exclusive_with.empty? ? nil : property.exclusive_with.map(&:to_s),
            }.compact
          end,
        }.compact
      end

      def spatial_frame_documents
        @world.spatial_frames.values.sort_by { |frame| frame.name.to_s }.map do |frame|
          {
            id: frame.name.to_s,
            coordinates: frame.coordinates.to_s,
            origin_id: frame.origin.to_s,
            parent_id: frame.parent&.to_s,
            radial_unit: frame.radial_unit&.to_s,
            prime_meridian_id: frame.prime_meridian&.to_s,
          }.compact
        end
      end

      def position_documents(node)
        return [] unless node.respond_to?(:positions)

        node.positions.map do |position|
          {
            frame_id: position.frame.to_s,
            relative_to_id: position.relative_to&.to_s,
            coordinates: position.coordinates.transform_keys(&:to_s),
          }.compact
        end
      end

      def route_geometry_document(node)
        return unless node.respond_to?(:route_geometry) && node.route_geometry

        geometry = node.route_geometry
        {
          frame_id: geometry.frame.to_s,
          points: geometry.points.values.map do |point|
            {
              id: point.id.to_s,
              kind: point.kind.to_s,
              entity_id: point.entity_id&.to_s,
              coordinates: point.coordinates.empty? ? nil : point.coordinates.transform_keys(&:to_s),
            }.compact
          end,
          paths: geometry.paths.values.map do |path|
            { id: path.id.to_s, through: path.points.map(&:to_s) }
          end,
        }
      end

      def write_editorial(internal_out)
        dir = Pathname.new(internal_out).join("worlds")
        dir.mkpath
        provenance = Provenance.new(@world, root: @root).rows.group_by do |row|
          [row.owner_type, row.owner]
        end
        entries = visible_nodes(:all).to_h do |node|
          rows = provenance.fetch([provenance_owner_type(node), node.id], [])
          [node.id.to_s, editorial_entry(node, rows)]
        end
        narratives = @world.narrative_documents.to_h do |document|
          rows = provenance.fetch([document.document_type, document.id], [])
          [document.id.to_s, editorial_narrative(document, rows)]
        end
        write_json(dir.join("#{@world_id}.json"), {
          schema_version: SCHEMA_VERSION,
          id: @world_id,
          title: @world_title,
          revision: @revision,
          spatial_frames: spatial_frame_documents,
          entries: entries,
          narratives: narratives,
        })
      end

      def provenance_owner_type(owner)
        return :moment if owner.is_a?(Moment)
        return :relationship if owner.is_a?(RelationInstance)

        :entity
      end

      def editorial_narrative(document, rows)
        {
          id: document.id.to_s,
          type: document.document_type.to_s,
          title: document.title,
          status: document.status&.to_s,
          reviewed: document[:reviewed],
          source_file: relative_source(document),
          questions: document.questions.sort_by(&:order).map do |question|
            { text: question.text, raised: question.raised, on: question.on }.compact
          end,
          log: document.log_entries,
          provenance: rows.map { |row| provenance_document(row) },
          document: NarrativeQuery.new(
            @world,
            id: document.id,
            type: document.document_type,
          ).data,
        }.compact
      end

      def editorial_entry(node, rows)
        {
          id: node.id.to_s,
          title: node.title,
          status: node.respond_to?(:[]) && node[:status]&.to_s,
          reviewed: node.respond_to?(:[]) && node[:reviewed],
          source_file: relative_source(node),
          dm: node.respond_to?(:dm?) && node.dm?,
          questions: node.respond_to?(:questions) ? node.questions.sort_by(&:order).map do |question|
            { text: question.text, raised: question.raised, on: question.on }.compact
          end : [],
          log: node.respond_to?(:log_entries) ? node.log_entries : [],
          missing_facts: Facts.new(@world).missing(node, at: @year).map do |row|
            { id: row.definition.name.to_s, label: row.definition.label }
          end,
          provenance: rows.map { |row| provenance_document(row) },
          entry: entry_document(node, audience: :all),
        }.compact
      end

      def provenance_document(row)
        {
          section: row.section.to_s,
          origin: row.origin&.to_s,
          drafted_by: row.drafter&.to_s,
          declared: row.declared?,
          reviewed: row.reviewed,
          stale: row.stale?,
        }.compact
      end

      def relative_source(node)
        return nil unless node.respond_to?(:source_file) && node.source_file

        Pathname.new(node.source_file).expand_path.relative_path_from(@root).to_s
      rescue ArgumentError
        node.source_file.to_s
      end

      def section_for(node)
        page_path(node).split("/")[1]
      end

      def array_attr(node, key)
        return [] unless node.respond_to?(:[])

        Array(node[key]).map(&:to_s)
      end

      def world_description(entries)
        home = public_authored_pages.find { |page| page.id == :home }
        return page_summary(home)[:summary] if home

        entries.find { |entry| !entry[:summary].to_s.empty? }&.fetch(:summary, "") || ""
      end

      def summarize(markdown)
        plain = markdown.to_s
                        .gsub(/!\[([^\]]*)\]\([^)]*\)/, "\\1")
                        .gsub(/\[([^\]]+)\]\([^)]*\)/, "\\1")
                        .gsub(/[`*_>#|]/, " ")
                        .gsub(/\s+/, " ")
                        .strip
        return plain if plain.length <= 220

        boundary = plain.rindex(/\s/, 217) || 217
        "#{plain[0...boundary]}…"
      end

      def prose_markdown(sections)
        sections.filter_map { |section| section[:markdown] }.join("\n\n")
      end

      def summary_for(node, sections)
        return node.summary if node.respond_to?(:summary) && !node.summary.to_s.strip.empty?

        text = prose_markdown(sections)
        text = node.veil_tagline if text.empty? && node.respond_to?(:veiled?) && node.veiled?
        summarize(text)
      end

      def entry_route(id) = "/#{@world_id}/entry/#{slug(id)}"
      def chronicle_route(id) = "/#{@world_id}/chronicle/#{slug(id)}"
      def era_narrative_route(id) = "/#{@world_id}/era-narrative/#{slug(id)}"
      def slug(value) = value.to_s.downcase.tr("_ ", "--").gsub(/[^a-z0-9-]/, "").gsub(/-+/, "-")
      def humanize(value) = value.to_s.split("_").map { |part| part == "dm" ? "DM" : part.capitalize }.join(" ")

      def write_json(path, document)
        path.dirname.mkpath
        path.write(JSON.pretty_generate(document) + "\n")
      end
    end
  end
end
