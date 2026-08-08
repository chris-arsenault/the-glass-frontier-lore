# frozen_string_literal: true

require "set"
require_relative "markers"

module Lorecraft
  # The lore quality gate — the in-memory successor to lint.py. Where the
  # Validator enforces hard structural invariants (and raises), the Linter
  # reports graded findings: errors (must fix), warnings (should review), and
  # futures (shells noted, not problems). It runs entirely against the world
  # object graph plus the on-disk meta files; no database.
  #
  # Checks that depended on Memgraph embeddings (semantic duplication L2/L3) are
  # intentionally absent — they died with the graph.
  class Linter
    Finding = Struct.new(:level, :message)

    # Phrases that usually mean hidden truth has leaked into a player page.
    DM_LEAK_PHRASES = [
      "technically true", "in truth", "what they don't know", "the real reason",
      "the truth is", "in reality", "what really happened", "secretly", "unbeknownst"
    ].freeze

    PROMINENCE_RANK = { forgotten: 0, marginal: 1, recognized: 2, renowned: 3, mythic: 4 }.freeze

    # How far a name may travel (craft/authoring-principles.md — "prominence
    # gates cross-references"). The gate is on the entity being *named*: a
    # renowned name goes anywhere, a forgotten one only where something already
    # links to it. What a reference must satisfy, by the target's prominence:
    #
    #   renowned, mythic  no condition — referenced from anywhere
    #   recognized        :broad  — a recognized+ entry, or one connected to it
    #   marginal          :near   — a direct connection or a shared neighbour
    #                               (the "nearby entities and specialists" case)
    #   forgotten         :linked — a direct connection, nothing else
    REACH = { recognized: :broad, marginal: :near, forgotten: :linked }.freeze

    UNMET = {
      broad: "named from a low-prominence entry with no connection to it",
      near: "named with no relationship to it and nothing in common",
      linked: "named with no relationship to it"
    }.freeze

    # Relations that should never point both ways between the same pair.
    ANTISYMMETRIC = %i[governs leads created destroyed built designed trains regulates chairs].freeze
    SPATIAL_HIERARCHY = %i[orbits on_surface_of in_orbit_of inner_of located_in part_of].freeze
    LOCATION_KINDS = %i[geographic_location installation].freeze

    def initialize(world, root: Dir.pwd)
      @world = world
      @root = Pathname.new(root)
      @findings = []
    end

    def run
      check_titles
      check_dm_phrase_leakage
      check_markers
      check_prominence_reach
      check_double_article
      check_resonance_vocab
      check_dm_public_entry
      check_shell_consistency
      check_causal_cycles
      check_antisymmetry
      check_partof_cycles
      check_orphans
      check_location_spatial
      @findings
    end

    private

    def err(m) = @findings << Finding.new(:error, m)
    def warn(m) = @findings << Finding.new(:warn, m)
    def future(m) = @findings << Finding.new(:future, m)

    def entities = @world.entities.values
    def pages = entities.reject { |e| shell?(e) }
    def shell?(e) = e[:status].to_s == "shell"
    def label(e) = "#{e.kind} #{e.id}"

    # Plain text of every prose block on an entity (markers stripped to labels).
    def prose_text(owner)
      owner.prose_blocks.map { |b| Markers.strip(b.text) }.join("\n\n")
    end

    def check_titles
      pages.each { |e| err("#{label(e)}: missing title") unless e[:title] }
    end

    def check_dm_phrase_leakage
      pages.each do |e|
        next if e.dm? || e[:contains_dm].to_s == "true"

        text = prose_text(e).downcase
        DM_LEAK_PHRASES.each do |phrase|
          err("#{label(e)}: possible DM leakage — contains phrase '#{phrase}'") if text.include?(phrase)
        end
      end
    end

    # The linter is a marker resolver too: each `on_*` reports on the marker
    # instead of rendering it. `@owner` and `@root` carry the context.
    def check_markers
      (pages + @world.moments.values).each do |owner|
        @owner = owner
        owner.prose_blocks.each do |b|
          Markers.scan(b.text) { |_m, marker| marker.resolve(self) }
        end
      end
    end

    # The resolver callbacks are public: `marker.resolve(self)` dispatches to
    # them from outside, so they cannot be private.
    public

    def on_future(marker)
      slug = marker.name.downcase.gsub(/[^a-z0-9]+/, "_").gsub(/\A_|_\z/, "")
      target = @world.entity(slug.to_sym)
      # Stale only when a *written page* exists (shells legitimately remain
      # future placeholders).
      if target && !shell?(target)
        err("#{@owner.id}: stale future '#{marker.name}' — page :#{slug} exists, use ref")
      else
        future("#{@owner.id}: '#{marker.name}' — no entry yet")
      end
    end

    # ref(path:) targets a non-entity file — confirm it exists on disk.
    def on_ref(marker)
      path = marker[:path]
      return if path.nil? || path.start_with?("http", "#")

      err("#{@owner.id}: ref path → missing file #{path}") unless (@root + path).exist?
    end

    # Relation verbs are the validator's business, not the linter's.
    def on_rel(_marker) = nil

    private

    # Moment prose counts against the entity the moment belongs to — half a
    # world's prose lives in moments, and a name-drop there travels just as far.
    def check_prominence_reach
      (pages + @world.moments.values).each do |owner|
        src = owner.respond_to?(:of) ? owner.of && @world.entity(owner.of) : owner
        next unless src && !shell?(src)
        next if src[:registry].to_s == "true"
        # Threads, loops and themes are engine scaffolding, not entries anyone
        # reads. They carry no prominence and their reach is not gated.
        next unless @world.schema.wiki_kind?(src.kind)

        xrefs = Array(src[:prominence_xrefs]).map { |x| x.to_s.tr("-", "_").to_sym }.to_set
        refs_in(owner).each do |target_id|
          next if target_id == src.id || xrefs.include?(target_id)

          tgt = @world.entity(target_id)
          rule = tgt && REACH[tgt.prominence&.to_sym]
          next if rule.nil? || reaches?(rule, src, tgt)

          warn("#{label(src)}: #{tgt.prominence} #{target_id} #{UNMET[rule]}")
        end
      end
    end

    def reaches?(rule, src, tgt)
      case rule
      when :broad then rank(src) >= PROMINENCE_RANK[:recognized] || adjacent?(src.id, tgt.id)
      when :near then adjacent?(src.id, tgt.id) || common_neighbour?(src.id, tgt.id)
      when :linked then adjacent?(src.id, tgt.id)
      end
    end

    def rank(e) = PROMINENCE_RANK[e.prominence&.to_sym] || 0

    # Typed edges, either direction — the graph's own answer to "are these two
    # things connected?", independent of what the prose asserts.
    def neighbours
      @neighbours ||= Hash.new { |h, k| h[k] = Set.new }.tap do |adj|
        @world.relationships.each { |s, _v, t| adj[s] << t; adj[t] << s }
      end
    end

    def adjacent?(a, b) = neighbours[a].include?(b)

    def common_neighbour?(a, b) = neighbours[a].intersect?(neighbours[b])

    def check_double_article
      pages.each do |e|
        warn("#{label(e)}: double article ('the The …')") if prose_text(e).match?(/\b[Tt]he\s+The\s+/)
      end
    end

    def check_resonance_vocab
      pages.each do |e|
        text = prose_text(e).downcase
        if text.match?(/(?:high|low)-band\s+(?:frequenc|resonance)/)
          err("#{label(e)}: non-standard resonance term — use structural/kinetic/signal + broad/mid/narrow")
        end
      end
    end

    def check_dm_public_entry
      entities.each do |e|
        next unless e.dm? && !shell?(e)

        err("#{label(e)}: DM entry missing public_entry") if e.public_entry.nil?
      end
    end

    def check_shell_consistency
      entities.each do |e|
        warn("#{label(e)}: marked shell but has a path") if shell?(e) && e[:path]
        err("#{label(e)}: status '#{e[:status]}' but no path/render target") \
          if %w[complete draft].include?(e[:status].to_s) && e[:path].nil?
      end
    end

    def check_causal_cycles
      cyc = find_cycle(edges_of(%i[causes caused]))
      err("causal cycle: #{cyc.join(' → ')}") if cyc
    end

    def check_partof_cycles
      cyc = find_cycle(edges_of(%i[part_of]))
      err("spatial PART_OF cycle: #{cyc.join(' → ')}") if cyc
    end

    def check_antisymmetry
      seen = @world.relationships.map { |s, v, t| [v, s, t] }.to_set
      @world.relationships.each do |s, v, t|
        next unless ANTISYMMETRIC.include?(v)

        warn("antisymmetry: #{s} and #{t} both #{v} each other") if seen.include?([v, t, s]) && s.to_s < t.to_s
      end
    end

    def check_orphans
      degree = Hash.new(0)
      @world.relationships.each { |s, _v, t| degree[s] += 1; degree[t] += 1 }
      pages.each do |e|
        next if shell?(e)

        warn("orphan: #{label(e)} has no relationships") if degree[e.id].zero?
      end
    end

    def check_location_spatial
      have = @world.relationships.select { |_s, v, _t| SPATIAL_HIERARCHY.include?(v) }
                   .map { |s, _v, _t| s }.to_set
      pages.each do |e|
        next unless LOCATION_KINDS.include?(e.kind)

        warn("location #{e.id} has no spatial hierarchy relationship (where is it?)") unless have.include?(e.id)
      end
    end

    # --- helpers ---------------------------------------------------------

    def refs_in(owner)
      out = []
      owner.prose_blocks.each do |b|
        Markers.scan(b.text) { |_m, marker| out << marker.id if marker.kind == :ref && marker.id }
      end
      out.uniq
    end

    def edges_of(verbs)
      vs = verbs.to_set
      adj = Hash.new { |h, k| h[k] = [] }
      @world.relationships.each { |s, v, t| adj[s] << t if vs.include?(v) }
      adj
    end

    # DFS cycle detection; returns the cycle path (ids) or nil.
    def find_cycle(adj)
      color = {}
      stack = []
      result = nil
      visit = lambda do |n|
        return if result

        color[n] = :gray
        stack.push(n)
        adj[n].each do |m|
          if color[m] == :gray
            i = stack.index(m)
            result = stack[i..] + [m]
            return
          elsif color[m].nil?
            visit.call(m)
          end
        end
        stack.pop
        color[n] = :black
      end
      adj.keys.each { |n| visit.call(n) if color[n].nil? }
      result
    end
  end
end
