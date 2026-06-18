# frozen_string_literal: true

require "json"
require "pathname"
require_relative "markers"

module Lorecraft
  # Render targets turn the in-memory world into artifacts. Markdown is the
  # primary one — it regenerates the dir-by-type tree that used to BE the source
  # of truth, so existing downstream tooling (wiki generation) still works. The
  # graph JSON replaces the Memgraph projection; the timeline strip is a
  # life-of-entity view.
  module Render
    def self.for(target)
      case target.to_sym
      when :markdown then Markdown
      when :wiki then Wiki
      when :graph then Graph
      when :timeline then Timeline
      else raise Error, "unknown render target #{target.inspect}"
      end
    end

    # Maps an entity/event kind to its directory under player/ when an explicit
    # `path` was not declared. Parity for imported content comes from the stored
    # `path`; this is the fallback for freshly-authored nodes.
    KIND_DIRS = {
      concept: "concepts", phenomenon: "concepts", ability: "concepts",
      resource: "concepts", species: "concepts/species", culture: "concepts/cultures",
      geographic_location: "locations/regions", installation: "locations/landmarks",
      faction: "npcs/factions", npc: "npcs/heroes", creature: "creatures/fauna",
      artifact: "artifacts/relics", transport: "ships", incident: "history/events",
      conflict: "history/events", edict: "history/events", rumor: "history/events",
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

      # Rewrite ref/rel/future markers in `text` into markdown, relative to
      # `from_path`, at render tick `tick`.
      def resolve_prose(text, from_path:, tick:)
        out = text.dup
        Markers.scan(text) do |match, b|
          out = out.sub(match, render_binding(b, from_path, tick))
        end
        out
      end

      private

      def render_binding(b, from_path, tick)
        case b[:kind]
        when :future
          "[future:#{b[:name]}]"
        when :ref
          if b[:id] && path_index[b[:id]]
            link(b[:text] || title_for(b[:id]), path_index[b[:id]], from_path, b[:anchor])
          elsif b[:path]
            link(b[:text] || b[:path], b[:path], from_path, b[:anchor])
          else
            b[:text] || b[:id].to_s
          end
        when :rel
          targets = @world.at(tick).out(@rel_subject_for, b[:verb]) rescue []
          targets = [b[:target]].compact if b[:target]
          targets.map { |t| link(title_for(t), path_index[t], from_path, nil) if path_index[t] }
                 .compact.join(", ")
        end
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
        title type alias tags prominence region status narrative_role
        species culture era date registry prominence_xrefs public_entry dm
      ].freeze

      SKIP_ATTRS = %i[path].freeze

      def render(out:, at: :now, audience: :all)
        tick = @world.timeline.tick_for(at)
        root = Pathname.new(out)
        written = []
        @world.pages.each do |node|
          next if audience == :player && node.respond_to?(:dm?) && node.dm?
          # Shells are known to the graph/index but deliberately have no page.
          next if node.respond_to?(:[]) && node[:status].to_s == "shell"

          rel = page_path(node)
          file = root.join(rel)
          file.dirname.mkpath
          file.write(page_markdown(node, tick: tick, audience: audience))
          written << rel
        end
        written
      end

      # Render a single page to a markdown string (used by tests/parity diff).
      def page_markdown(node, tick: nil, audience: :all)
        tick ||= @world.timeline.now_tick
        from_path = page_path(node)
        +frontmatter(node) + "\n# #{node.title}\n\n" + body(node, from_path, tick, audience)
      end

      private

      def frontmatter(node)
        attrs = node.static_attrs.dup
        attrs[:type] = node.kind
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

      def body(node, from_path, tick, audience)
        @rel_subject_for = node.id
        blocks = node.prose_blocks.select { |b| b.visible_at?(tick, audience: audience.equal?(:all) ? :all : :player) }
        main = blocks.select { |b| b.section == :main }
        sectioned = blocks.reject { |b| b.section == :main }

        parts = main.map { |b| resolve_prose(b.text, from_path: from_path, tick: tick).strip }
        sectioned.each do |b|
          heading = b.heading || humanize(b.section)
          parts << "## #{heading} <!-- #{humanize(b.section)} -->\n\n" +
                   resolve_prose(b.text, from_path: from_path, tick: tick).strip
        end
        parts.join("\n\n") + "\n"
      end

      def humanize(sym)
        sym.to_s.split("_").map { |w| w == "dm" ? "DM" : w.capitalize }.join(" ")
      end
    end

    # ---- graph JSON (Memgraph replacement) ------------------------------
    class Graph < Base
      def render(at: :now, audience: :all, pretty: true)
        tick = @world.timeline.tick_for(at)
        data = { generated_at_tick: tick, nodes: nodes(audience), edges: edges(tick, audience) }
        pretty ? JSON.pretty_generate(data) : JSON.generate(data)
      end

      private

      def nodes(audience)
        @world.pages.filter_map do |n|
          next if audience == :player && n.respond_to?(:dm?) && n.dm?

          {
            id: n.id, kind: n.kind, title: n.title,
            prominence: (n.prominence if n.respond_to?(:prominence)),
            tags: (n.tags if n.respond_to?(:tags)),
            dm: (n.respond_to?(:dm?) && n.dm?),
            path: page_path(n)
          }.compact
        end
      end

      def edges(tick, audience)
        intervals(audience).map do |e|
          { src: e[:subject], rel: e[:relation], tgt: e[:target],
            from: e[:from], to: e[:to], dm: e[:dm],
            live_at_render: e[:from] <= tick && (e[:to].nil? || tick < e[:to]) }
        end
      end

      # All edges with [from,to) intervals (not just those live now).
      def intervals(audience)
        open = {}
        result = []
        @world.all_effects.each do |entry|
          eff = entry[:effect]
          next unless eff.relation
          next if audience == :player && entry[:dm]

          key = [eff.subject, eff.relation, eff.target]
          case eff.verb
          when :set then open[key] ||= { tick: entry[:tick], dm: entry[:dm] }
          when :clear
            if eff.target
              o = open.delete(key)
              result << close(key, o, entry[:tick]) if o
            else
              open.keys.select { |k| k[0] == eff.subject && k[1] == eff.relation }.each do |k|
                result << close(k, open.delete(k), entry[:tick])
              end
            end
          end
        end
        open.each { |key, o| result << close(key, o, nil) }
        result
      end

      def close(key, opened, to_tick)
        { subject: key[0], relation: key[1], target: key[2],
          from: opened[:tick], to: to_tick, dm: opened[:dm] }
      end
    end

    # ---- life-of-entity timeline strip ----------------------------------
    class Timeline < Base
      def render(entity:, **)
        id = entity.to_sym
        rows = @world.all_effects.select { |e| touches?(e[:effect], id) }
                     .map { |e| describe(e) }
        header = "# Timeline — #{title_for(id)}\n\n"
        header + (rows.empty? ? "_No recorded events._\n" : rows.uniq.join("\n") + "\n")
      end

      private

      def touches?(eff, id) = eff.subject == id || eff.target == id

      def describe(entry)
        eff = entry[:effect]
        era = @world.timeline.era_at(entry[:tick])
        when_s = era ? "#{era.name} +#{entry[:tick] - era.start_tick}" : "tick #{entry[:tick]}"
        verb = eff.relation ? "#{eff.verb} #{eff.relation} → #{eff.target}" : "#{eff.verb} #{eff.attr || eff.subject}"
        "- **#{when_s}** (#{entry[:source]}): #{verb}"
      end
    end
  end
end

require_relative "render/wiki"
