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
    HIGH_THRESHOLD = 3 # renowned+

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
      check_stale_futures
      check_prominence_xrefs
      check_double_article
      check_resonance_vocab
      check_dm_public_entry
      check_shell_consistency
      check_path_refs_exist
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

    def check_stale_futures
      (pages + @world.events.values).each do |owner|
        owner.prose_blocks.each do |b|
          Markers.scan(b.text) do |_m, bind|
            next unless bind[:kind] == :future

            slug = bind[:name].downcase.gsub(/[^a-z0-9]+/, "_").gsub(/\A_|_\z/, "")
            target = @world.entity(slug.to_sym)
            # Stale only when a *written page* exists (shells legitimately remain
            # [future:] placeholders).
            if target && !shell?(target)
              err("#{owner.id}: stale future '#{bind[:name]}' — page :#{slug} exists, use ref")
            else
              future("#{owner.id}: '#{bind[:name]}' — no entry yet")
            end
          end
        end
      end
    end

    def check_prominence_xrefs
      pages.each do |e|
        next if e[:registry].to_s == "true"

        rank = PROMINENCE_RANK[e.prominence&.to_sym]
        next unless rank && rank >= HIGH_THRESHOLD

        xrefs = Array(e[:prominence_xrefs]).map { |x| x.to_s.tr("-", "_").to_sym }.to_set
        refs_in(e).each do |target_id|
          tgt = @world.entity(target_id)
          next unless tgt

          tr = PROMINENCE_RANK[tgt.prominence&.to_sym]
          next unless tr && tr < HIGH_THRESHOLD
          next if xrefs.include?(target_id)

          warn("#{label(e)}: #{e.prominence}-prominence entry links to #{target_id} (#{tgt.prominence})")
        end
      end
    end

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

    # ref(path:) targets a non-entity file — confirm it exists on disk.
    def check_path_refs_exist
      (pages + @world.events.values).each do |owner|
        owner.prose_blocks.each do |b|
          Markers.scan(b.text) do |_m, bind|
            next unless bind[:kind] == :ref && bind[:path]
            next if bind[:path].start_with?("http", "#")

            err("#{owner.id}: ref path → missing file #{bind[:path]}") unless (@root + bind[:path]).exist?
          end
        end
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
        Markers.scan(b.text) { |_m, bind| out << bind[:id] if bind[:kind] == :ref && bind[:id] }
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
