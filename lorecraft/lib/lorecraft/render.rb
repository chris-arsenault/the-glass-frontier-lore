# frozen_string_literal: true

require "json"
require "pathname"
require_relative "markers"

module Lorecraft
  # Render targets turn the in-memory world into disposable artifacts. Markdown
  # provides a directory-shaped compatibility view, graph JSON exposes nodes and
  # relationship intervals, the timeline is a life-of-entity effect strip, and
  # the site renderer builds public and editorial reader data.
  module Render
    def self.for(target)
      case target.to_sym
      when :markdown then Markdown
      when :wiki then Wiki
      when :site then Site
      when :graph then Graph
      when :timeline then Timeline
      else raise Error, "unknown render target #{target.inspect}"
      end
    end

    # Maps an entity/moment kind to its directory under player/ when an explicit
    # `path` was not declared. Parity for imported content comes from the stored
    # `path`; this is the fallback for freshly-authored nodes.
    KIND_DIRS = {
      concept: "concepts", phenomenon: "concepts", ability: "concepts",
      resource: "concepts", species: "concepts/species", culture: "concepts/cultures",
      geographic_location: "locations/regions", installation: "locations/landmarks",
      faction: "npcs/factions", npc: "npcs/heroes", creature: "creatures/fauna",
      artifact: "artifacts/relics", transport: "ships", incident: "history/moments",
      conflict: "history/moments", edict: "history/moments", rumor: "history/moments",
      cosmology: "cosmology", era: "history/eras"
    }.freeze

    # Shared helpers for resolving page paths and rewriting prose bindings into
    # links, at a given render era and audience.
    class Base
      def initialize(world)
        @world = world
      end

      def page_path(node)
        explicit = node.respond_to?(:static_attrs) && node.static_attrs[:path]
        return explicit if explicit

        if node.respond_to?(:dm?) && node.dm?
          "dm/#{node.id}.md"
        else
          dir = KIND_DIRS[node.kind] || "misc"
          "player/#{dir}/#{node.id}.md"
        end
      end

      # All page paths keyed by id (built once; needed to resolve refs).
      def path_index
        @path_index ||= @world.pages.to_h { |n| [n.id, page_path(n)] }
      end

      def title_for(id)
        n = @world[id]
        n.respond_to?(:title) ? n.title : id.to_s.split("_").map(&:capitalize).join(" ")
      end

      # The moments (history beats) that belong on this entity's page, oldest
      # first. Genesis bootstraps are excluded (no narrative).
      def moments_for(id)
        @world.moments.values.reject(&:genesis?).select { |m| m.home == id.to_sym }.sort_by(&:year)
      end

      # The relationships sourced from this entity (its outgoing connections).
      def relationships_for(id)
        @world.relation_instances.values.select { |r| r.source == id.to_sym }
      end

      # Rewrite markers in `text` into markdown, relative to `from_path`, at
      # render year `year`. The resolution context is held for the duration of
      # the scan so the `on_*` callbacks can reach it, and saved/restored because
      # transclusion re-enters this method.
      def resolve_prose(text, from_path:, year:, audience: :all, stack: [])
        prev = [@from_path, @year, @audience, @embed_stack]
        @from_path = from_path
        @year = year
        @audience = audience
        @embed_stack = stack
        out = text.dup
        Markers.scan(text) { |match, marker| out = out.sub(match, marker.resolve(self).to_s) }
        out
      ensure
        @from_path, @year, @audience, @embed_stack = prev
      end

      # Transclude the target's prose for one section. The cycle guard is a
      # backstop — the linter fails the build on an embed cycle — so it renders a
      # visible marker rather than recursing forever.
      def on_embed(marker)
        id = marker.id
        return "[embed cycle: #{id}]" if @embed_stack.include?(id)

        target = @world.entity(id)
        return "[missing embed: #{id}]" unless target

        blocks = target.prose_blocks
                       .select { |b| b.section == marker.section && b.visible_at?(@year, audience: @audience) }
                       .sort_by(&:order)
        blocks.map { |b| resolve_embedded(b.text.strip, @embed_stack + [id]) }.join("\n\n")
      end

      # How an embedded block's own markers get resolved. Overridden by renderers
      # whose link syntax differs, so a transclusion is rendered by the target
      # format rather than by whoever owns the text.
      def resolve_embedded(text, stack)
        resolve_prose(text, from_path: @from_path, year: @year, audience: @audience, stack: stack)
      end

      # --- marker resolution: this renderer links to other pages in the tree --

      def on_future(marker) = "[future:#{marker.name}]"

      # A computed span is plain text in every target — there is nothing to link
      # — so every renderer inherits these unchanged.
      def on_elapsed(marker)
        span = span_for(marker)
        marker.ago? ? span.ago(marker.style) : span.public_send(marker.style)
      end

      # A future anchor becomes exact the moment its event is written with a year;
      # until then the author's estimate stands in.
      def span_for(marker)
        return @world.elapsed(marker.from, marker.to) unless marker.future

        dated = marker.future_id && @world.dated?(marker.future_id)
        return @world.elapsed(marker.future_id, marker.to) if dated

        Elapsed.new(0, marker.about)
      end

      def on_year(marker) = @world.year_of(marker.at).to_s

      def on_duration(marker) = "#{Elapsed.words(marker.years)} #{marker.years == 1 ? 'year' : 'years'}"

      def on_ref(marker)
        if marker.id && path_index[marker.id]
          link(marker[:text] || title_for(marker.id), path_index[marker.id], @from_path, marker[:anchor])
        elsif marker[:path]
          link(marker[:text] || marker[:path], marker[:path], @from_path, marker[:anchor])
        else
          marker[:text] || marker.id.to_s
        end
      end

      def on_rel(marker)
        targets = begin
          @world.at(@year).out(@rel_subject_for, marker.verb)
        rescue StandardError
          []
        end
        targets = [marker[:target]].compact if marker[:target]
        targets.filter_map { |t| link(title_for(t), path_index[t], @from_path, nil) if path_index[t] }
               .join(", ")
      end

      def link(text, target_path, from_path, anchor)
        rel = relative_path(from_path, target_path)
        rel += "##{anchor}" if anchor
        "[#{text}](#{rel})"
      end

      def relative_path(from_path, to_path)
        from_dir = Pathname.new(from_path).dirname
        Pathname.new(to_path).relative_path_from(from_dir).to_s
      end
    end

    # ---- markdown tree (parity target) ----------------------------------
    class Markdown < Base
      FRONTMATTER_ORDER = %i[
        title type subkind alias tags prominence region status narrative_role
        species culture era date registry prominence_xrefs public_entry dm
      ].freeze

      SKIP_ATTRS = %i[path].freeze

      def render(out:, at: :now, audience: :all)
        year = @world.timeline.year_for(at)
        root = Pathname.new(out)
        written = []
        @world.pages.each do |node|
          next if audience == :player && node.respond_to?(:dm?) && node.dm?
          # Shells are known to the graph/index but deliberately have no page.
          next if node.respond_to?(:[]) && node[:status].to_s == "shell"

          rel = page_path(node)
          file = root.join(rel)
          file.dirname.mkpath
          file.write(page_markdown(node, year: year, audience: audience))
          written << rel
        end
        written
      end

      # Render a single page to a markdown string (used by tests/parity diff).
      def page_markdown(node, year: nil, audience: :all)
        year ||= @world.timeline.now_year
        from_path = page_path(node)
        +frontmatter(node) + "\n# #{node.title}\n\n" + body(node, from_path, year, audience)
      end

      private

      def frontmatter(node)
        attrs = node.static_attrs.merge(node.respond_to?(:fact_values) ? node.fact_values : {})
        attrs[:type] = node.kind
        attrs[:subkind] = node.subkind
        attrs[:dm] = true if node.respond_to?(:dm?) && node.dm?
        if node.respond_to?(:public_entry) && node.public_entry
          # Emit the target's actual page slug (filename stem), not the internal
          # underscored id, so the reference matches the public file on disk.
          tgt = @world[node.public_entry]
          attrs[:public_entry] =
            (tgt && tgt.respond_to?(:[]) && tgt[:path]) ? File.basename(tgt[:path], ".md") : node.public_entry.to_s.tr("_", "-")
        end

        keys = (FRONTMATTER_ORDER & attrs.keys) + (attrs.keys - FRONTMATTER_ORDER - SKIP_ATTRS)
        lines = keys.reject { |k| SKIP_ATTRS.include?(k) }.map do |k|
          "#{k}: #{format_value(attrs[k])}"
        end
        "---\n#{lines.join("\n")}\n---\n"
      end

      def format_value(v)
        case v
        when Array then "[#{v.map(&:to_s).join(', ')}]"
        when true then "true"
        when false then "false"
        else v.to_s
        end
      end

      def body(node, from_path, year, audience)
        @rel_subject_for = node.id
        blocks = node.authored_blocks.select { |b| b.visible_at?(year, audience: audience.equal?(:all) ? :all : :player) }
        main = blocks.select { |b| b.section == :main }
        sectioned = blocks.reject { |b| b.section == :main }

        parts = main.map { |b| render_authored_block(b, from_path, year, audience) }
        sectioned.each do |b|
          heading = b.heading || humanize(b.section)
          parts << "## #{heading} <!-- #{humanize(b.section)} -->\n\n" +
                   render_authored_block(b, from_path, year, audience)
        end
        player = !audience.equal?(:all)
        (moments_for(node.id) + relationships_for(node.id)).each do |owner|
          next if player && owner.respond_to?(:dm?) && owner.dm?

          owner.prose_blocks.each do |b|
            next if player && b.dm?

            parts << resolve_prose(b.text, from_path: from_path, year: year).strip
          end
        end
        # Everything about the ENTRY rather than the world goes last, and only on
        # the internal tree. A reader gets prose; a reviewer gets prose plus the
        # lineage that says who wrote it, what is unresolved, and what changed.
        parts << entry_lineage(node) unless player
        parts.compact.join("\n\n") + "\n"
      end

      def entry_lineage(node)
        sections = [open_questions(node), drafting(node), entry_log(node)].compact
        return nil if sections.empty?

        "---\n\n<!-- Not world content. `lorecraft queue` / `provenance` read the same declarations. -->\n\n" +
          sections.join("\n\n")
      end

      def open_questions(node)
        return nil unless node.respond_to?(:questions) && !node.questions.empty?

        lines = node.questions.sort_by(&:order).map do |q|
          ["- #{q.text}", q.raised && " *(raised #{q.raised})*",
           q.on && "\n  - on: “#{q.on}”",].compact.join
        end
        "### Open Questions\n\n#{lines.join("\n")}"
      end

      # Who wrote it and whether anyone has read it — the risk a reviewer needs
      # stated, not buried in a separate audit.
      def drafting(node)
        read = node.respond_to?(:[]) && node[:reviewed]
        drafters = node.authored_blocks.map { |b| b.drafted_by || @world.schema.default_drafter }.compact.uniq
        return nil if read.nil? && drafters.empty?

        bits = []
        bits << "drafted by #{drafters.map { |d| ":#{d}" }.join(', ')}" unless drafters.empty?
        bits << (read ? "read by a human on #{read}" : "never read by a human")
        "### Drafting\n\n#{bits.join('; ')}."
      end

      def entry_log(node)
        return nil unless node.respond_to?(:log_entries) && !node.log_entries.empty?

        "### Entry Log\n\n#{node.log_entries.map { |e| "- #{e}" }.join("\n")}"
      end

      def humanize(sym)
        sym.to_s.split("_").map { |w| w == "dm" ? "DM" : w.capitalize }.join(" ")
      end

      def render_authored_block(block, from_path, year, audience)
        if block.cards?
          block.cards.map do |card|
            target = @world[card.target]
            title = target&.title || humanize(card.target)
            target_path = path_index[card.target]
            linked = target_path ? link(title, target_path, from_path, nil) : title
            description = resolve_prose(
              card.description, from_path: from_path, year: year,
              audience: audience.equal?(:all) ? :all : :player
            ).strip
            "- **#{linked}**: #{description}"
          end.join("\n")
        else
          resolve_prose(
            block.text, from_path: from_path, year: year,
            audience: audience.equal?(:all) ? :all : :player
          ).strip
        end
      end
    end

    # ---- graph JSON ------------------------------------------------------
    class Graph < Base
      def render(at: :now, audience: :all, pretty: true)
        year = @world.timeline.year_for(at)
        data = { generated_at_year: year, nodes: nodes(audience), edges: edges(year, audience) }
        pretty ? JSON.pretty_generate(data) : JSON.generate(data)
      end

      private

      def nodes(audience)
        @world.pages.filter_map do |n|
          next if audience == :player && n.respond_to?(:dm?) && n.dm?

          {
            id: n.id, kind: n.kind, subkind: n.subkind, title: n.title,
            prominence: (n.prominence if n.respond_to?(:prominence)),
            tags: (n.tags if n.respond_to?(:tags)),
            dm: (n.respond_to?(:dm?) && n.dm?),
            path: page_path(n)
          }.compact
        end
      end

      def edges(year, audience)
        Edges.new(@world, at: year, audience: audience).rows.map do |edge|
          {
            src: edge.subject,
            rel: edge.relation,
            tgt: edge.target,
            from: edge.from,
            to: edge.to,
            dm: edge.dm,
            live_at_render: edge.live,
          }
        end
      end
    end

    # ---- life-of-entity timeline strip ----------------------------------
    class Timeline < Base
      def render(entity:, **)
        id = entity.to_sym
        rows = @world.all_effects.select { |e| touches?(e[:effect], id) }
                     .map { |e| describe(e) }
        header = "# Timeline — #{title_for(id)}\n\n"
        header + (rows.empty? ? "_No recorded moments._\n" : rows.uniq.join("\n") + "\n")
      end

      private

      def touches?(eff, id) = eff.subject == id || eff.target == id

      def describe(entry)
        eff = entry[:effect]
        era = @world.timeline.era_at(entry[:year])
        when_s = era ? "#{era.name} +#{entry[:year] - era.start_year}" : "year #{entry[:year]}"
        verb = eff.relation ? "#{eff.verb} #{eff.relation} → #{eff.target}" : "#{eff.verb} #{eff.attr || eff.subject}"
        "- **#{when_s}** (#{entry[:source]}): #{verb}"
      end
    end
  end
end

require_relative "render/wiki"
require_relative "render/site"
