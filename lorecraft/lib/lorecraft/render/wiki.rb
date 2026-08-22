# frozen_string_literal: true

require "fileutils"
require "set"
require_relative "../markers"

module Lorecraft
  module Render
    # GitHub-wiki generator. Produces a flat set of `Title.md` pages with
    # `[[wiki links]]`, resolved directly from prose ref/future bindings. Renders
    # entity pages, authored `page` constructs, and fully GENERATED meta pages
    # (Tags, Timeline, Causality) + per-type indexes + a sidebar. Player audience
    # only — DM entities, shells, and DM edges are excluded.
    #
    # Nothing is read from disk: the wiki is a pure projection of `world/`.
    class Wiki < Base
      SECTION_LABELS = {
        "concepts" => "Concepts", "cosmology" => "Cosmology", "locations" => "Locations",
        "npcs" => "NPCs", "history" => "History", "artifacts" => "Artifacts",
        "creatures" => "Creatures", "ships" => "Ships"
      }.freeze

      CAUSAL_VERBS = %i[causes caused caused_by].freeze

      def initialize(world, root: Dir.pwd)
        super(world)
        @root = Pathname.new(root)
      end

      def render(out:, at: :now, **)
        year = @world.timeline.year_for(at)
        dir = Pathname.new(out)
        FileUtils.rm_rf(dir)
        dir.mkpath
        written = []
        write = lambda { |name, body| (dir + name).write(body); written << name }

        public_entities.each { |n| write.call(wiki_filename(n.title), content_page(n, year)) }
        @world.authored_pages.each_value do |p|
          next unless %i[all player].include?(p.audience)

          write.call("#{p.wiki_name}.md", authored_page(p, year))
        end
        write.call("Tags.md", tags_page)
        write.call("Timeline.md", timeline_page)
        write.call("Causality.md", causality_page)
        write.call("Reference-Articles.md", reference_articles_page) unless reference_articles.empty?
        index_pages.each { |name, body| write.call(name, body) }
        write.call("_Sidebar.md", sidebar)
        written
      end

      private

      def public_entities
        @world.pages.reject { |n| !wiki_visible?(n) }
      end

      def reference_articles
        @reference_articles ||= public_entities.select do |node|
          node.respond_to?(:article?) && node.article?
        end
      end

      def world_entities
        @world_entities ||= public_entities - reference_articles
      end

      def shell?(n) = n.respond_to?(:[]) && n[:status].to_s == "shell"
      def wiki_filename(title) = "#{title.gsub(' ', '-')}.md"

      # A node belongs in the player wiki only if it has a title, is not DM-only,
      # is not a shell, and its kind is a wiki kind (excluding the non-reader
      # theme, thread, and loop kinds).
      def wiki_visible?(node)
        return false unless node.respond_to?(:title)
        return false if node.respond_to?(:dm?) && node.dm?
        return false if shell?(node)
        return false if node.respond_to?(:kind) && !@world.schema.wiki_kind?(node.kind)

        true
      end

      # Resolve prose bindings directly to GitHub wiki links. Context is held for
      # the scan and restored after, because transclusion re-enters this method.
      # The wiki is always the player's view, so embedded DM blocks stay out.
      def wikitext(text, subject, year, stack = [])
        prev = [@subject, @year, @audience, @embed_stack]
        @subject = subject
        @year = year
        @audience = :player
        @embed_stack = stack
        out = text.dup
        Markers.scan(text) { |match, marker| out = out.sub(match, marker.resolve(self).to_s) }
        out
      ensure
        @subject, @year, @audience, @embed_stack = prev
      end

      # An embedded block's refs render as wiki links, not tree links.
      def resolve_embedded(text, stack) = wikitext(text, @subject, @year, stack)

      # --- marker resolution: this renderer emits GitHub wiki syntax ----------
      #
      # Public because `marker.resolve(self)` dispatches to them from outside.
      public

      # A stub is an authoring state, and a reader has no use for it: "*(stub)*"
      # in the middle of a sentence is the register failure the writing rules ban
      # everywhere else. The name reads as a name, and the note goes into the
      # comment channel, where a markdown reader never sees it and anyone reading
      # the generated source does.
      def on_future(marker) = "#{marker.name}<!-- stub: no entry yet -->"

      def on_ref(marker)
        node = marker.id && @world[marker.id]
        unless wiki_visible?(node)
          return marker[:text] || marker.id&.to_s || marker[:path] || "" # DM / shell / non-entity
        end
        # A page does not link to itself. Transcluded prose is written from its
        # owner's viewpoint and often names the entry it has been embedded into.
        return marker[:text] || node.title if marker.id == @subject

        marker[:text] && marker[:text] != node.title ? "[[#{marker[:text]}|#{node.title}]]" : "[[#{node.title}]]"
      end

      def on_rel(marker)
        @world.at(@year).out(@subject, marker.verb).filter_map do |t|
          n = @world[t]
          "[[#{n.title}]]" if wiki_visible?(n)
        end.join(", ")
      end

      private

      def content_page(node, year)
        body = +""
        body << node.veil_tagline << "\n\n" if node.respond_to?(:veiled?) && node.veiled?
        node.authored_blocks.each do |b|
          next if b.dm? || !b.visible_at?(year, audience: :player)

          body << "## #{b.heading}\n\n" if b.section != :main && b.heading
          body << wiki_block(b, node.id, year) << "\n\n"
        end
        # An entity's history (moments, oldest first) and connections
        # (relationships) render as further plain paragraphs on its page.
        connection_paragraphs(node, year).each { |para| body << para << "\n\n" }
        metadata_box(node, year) + body.strip + "\n"
      end

      # Prose paragraphs from this entity's moments + relationships (player
      # audience: DM moments/relationships and DM prose blocks excluded).
      def connection_paragraphs(node, year)
        owners = moments_for(node.id) + relationships_for(node.id)
        owners.reject(&:dm?).flat_map do |owner|
          owner.prose_blocks.reject(&:dm?).map { |b| wikitext(b.text, node.id, year).strip }
        end.reject(&:empty?)
      end

      def wiki_block(block, subject, year)
        return wikitext(block.text, subject, year).strip unless block.cards?

        block.cards.map do |card|
          target = @world[card.target]
          title = target&.title || card.target.to_s
          description = wikitext(card.description, subject, year).strip
          "- **[[#{title}]]**: #{description}"
        end.join("\n")
      end

      def authored_page(page, year)
        body = +""
        page.prose_blocks.each do |b|
          body << "## #{b[:heading]}\n\n" if b[:heading]
          body << wikitext(b[:text], page.id, year).strip << "\n\n"
        end
        body.strip + "\n"
      end

      def metadata_box(node, year)
        parts = ["**Type:** #{node.kind}", "**Subkind:** #{node.subkind}"]
        parts << "**Reference Article:** yes" if node.respond_to?(:article?) && node.article?
        if node.respond_to?(:playable_as) && !node.playable_as.empty?
          parts << "**Playable As:** #{node.playable_as.join(', ')}"
        end
        parts << "**Tags:** #{node.tags.join(', ')}" unless node.tags.empty?
        parts << "**Region:** #{node[:region]}" if node[:region]
        parts << "**Alias:** #{Array(node[:alias]).join(', ')}" if node[:alias] && !Array(node[:alias]).empty?
        Facts.new(@world).present(node, at: year, audience: :player).each do |row|
          value = wiki_fact_value(row)
          parts << "**#{row.definition.label}:** #{value}" unless value.empty?
        end
        "> #{parts.join(' | ')}\n\n"
      end

      def wiki_fact_value(row)
        case row.definition.type
        when :entity, :entities
          Array(row.value).filter_map do |id|
            target = @world[id]
            "[[#{target.title}]]" if wiki_visible?(target)
          end.sort.join(", ")
        when :year
          "#{@world.year_of(row.value)} CE"
        else
          row.value.to_s
        end
      end

      # ---- generated meta pages -------------------------------------------

      def tags_page
        rows = @world.schema.tags.sort.map { |name, desc| "| `#{name}` | #{desc} |" }
        "# Tags\n\nControlled vocabulary for entry tags.\n\n" \
          "| Tag | Meaning |\n|-----|---------|\n#{rows.join("\n")}\n"
      end

      def timeline_page
        out = +"# Timeline\n\nMajor eras of this world, oldest first.\n\n"
        @world.timeline.eras.each do |era|
          out << "## #{era.title || era.name}\n\n"
          out << "#{era.description.strip}\n\n" if era.description
        end
        out
      end

      def reference_articles_page
        rows = reference_articles.sort_by(&:title).map { |node| "- [[#{node.title}]]" }
        "# Reference Articles\n\n#{rows.join("\n")}\n"
      end

      # Causal DAG, generated from the world's causal edges (DM edges excluded).
      def causality_page
        edges = causal_edges
        out = +"# Causality\n\nCause-and-effect relationships between entities.\n\n"
        if edges.empty?
          out << "_No causal relationships recorded._\n"
        else
          edges.sort_by { |s, t| [s.to_s, t.to_s] }.each do |s, t|
            sn = @world[s]
            tn = @world[t]
            next unless wiki_visible?(sn) && wiki_visible?(tn)

            out << "- [[#{sn.title}]] → [[#{tn.title}]]\n"
          end
        end
        out
      end

      # [cause, effect] pairs from non-DM causal edges (caused_by reversed).
      def causal_edges
        game_ids = @world.game_world_nodes.map(&:id).to_set
        @world.all_effects.reject { |e| e[:dm] }.filter_map do |e|
          eff = e[:effect]
          next unless eff.verb == :set && CAUSAL_VERBS.include?(eff.relation)
          next unless game_ids.include?(eff.subject) && game_ids.include?(eff.target)

          eff.relation == :caused_by ? [eff.target, eff.subject] : [eff.subject, eff.target]
        end.uniq
      end

      def index_pages
        by_section = Hash.new { |h, k| h[k] = [] }
        world_entities.each do |n|
          section = page_path(n).split("/")[1] # player/<section>/...
          by_section[section] << n if SECTION_LABELS.key?(section)
        end
        by_section.map do |section, nodes|
          label = SECTION_LABELS[section]
          rows = nodes.sort_by(&:title).map do |n|
            "| [[#{n.title}]] | #{n.kind} | #{n.prominence || '—'} | #{n.tags.join(', ')} |"
          end
          body = "# #{label} Index\n\n| Entry | Type | Prominence | Tags |\n|---|---|---|---|\n#{rows.join("\n")}\n"
          ["#{label}-Index.md", body]
        end
      end

      def sidebar
        meta = ["[[Timeline]]", "[[Tags]]", "[[Causality]]"]
        meta << "[[Reference Articles]]" unless reference_articles.empty?
        out = +"**[[Home]]**\n\n#{meta.join(' | ')}\n\n---\n\n"
        by_section = Hash.new { |h, k| h[k] = [] }
        world_entities.each do |n|
          section = page_path(n).split("/")[1]
          by_section[section] << n.title if SECTION_LABELS.key?(section)
        end
        SECTION_LABELS.each do |section, label|
          next unless by_section.key?(section)

          out << "**[[#{label}|#{label} Index]]**\n\n"
          by_section[section].sort.each { |t| out << "- [[#{t}]]\n" }
          out << "\n"
        end
        out
      end
    end
  end
end
