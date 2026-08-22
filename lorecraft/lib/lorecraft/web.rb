# frozen_string_literal: true

require "set"

module Lorecraft
  # Whether the graph is a web or a tree with famous roots.
  #
  # Degree and reachability say a world is well connected while everything is
  # reaching the same few hubs. Removing the most prominent entities answers the
  # question those measures cannot: what still holds together when the gods are
  # not available to explain it.
  #
  # An entity left alone once the top tiers are dropped touches nothing at its own
  # scale. A component that separates from the rest is an island whose only route
  # out runs through something renowned.
  class Web
    TIERS = [[:mythic], %i[mythic renowned]].freeze

    Cut = Struct.new(:dropped, :kept, :components, keyword_init: true) do
      def isolated = components.select { |c| c.size == 1 }.flatten
      def islands = components.select { |c| c.size > 1 }.sort_by { |c| -c.size }.drop(1)
    end

    def initialize(world)
      @world = world
    end

    def entities = @world.game_world_entities

    def prominence = @prominence ||= entities.to_h { |n| [n.id, n.prominence] }

    def adjacency
      @adjacency ||= Hash.new { |h, k| h[k] = Set.new }.tap do |adj|
        @world.game_world_relationships.each { |s, _v, t| adj[s] << t; adj[t] << s }
      end
    end

    def degree = @degree ||= entities.to_h { |n| [n.id, adjacency[n.id].size] }

    def hubs(limit = 10) = degree.sort_by { |_id, d| -d }.first(limit)

    # The graph with one or more prominence tiers removed. Structural entities
    # go at every cut: an era holds the whole world together through
    # `active_during` alone, so leaving it in answers nothing.
    def cut(dropped)
      kept = entities.reject { |e| e.structural? || dropped.include?(prominence[e.id]) }
                     .map(&:id).to_set
      Cut.new(dropped: dropped, kept: kept, components: components(kept))
    end

    def cuts = TIERS.map { |tier| cut(tier) }

    def report
      out = ["=== Web ===",
             "  game-world entities: #{entities.size}   edges: #{@world.game_world_relationships.size}",
             "",
             "  most connected:",]
      hubs.each { |id, d| out << format("    %3d  %-30s %s", d, id, prominence[id]) }

      cuts.each do |c|
        out << "" << "  without #{c.dropped.join(' + ')}: " \
                     "#{c.kept.size} entities, #{c.components.size} component(s), " \
                     "#{c.isolated.size} alone"
        c.isolated.sort_by(&:to_s).each { |id| out << "    alone   #{id} (#{prominence[id]})" }
        c.islands.each do |comp|
          named = comp.sort_by(&:to_s).first(5).join(", ")
          out << format("    island  %3d  %s%s", comp.size, named, comp.size > 5 ? " …" : "")
        end
      end
      out.join("\n")
    end

    private

    def components(ids)
      seen = Set.new
      ids.each_with_object([]) do |id, out|
        next if seen.include?(id)

        out << walk(id, ids, seen)
      end.sort_by { |c| -c.size }
    end

    def walk(start, ids, seen)
      stack = [start]
      comp = []
      until stack.empty?
        node = stack.pop
        next if seen.include?(node)

        seen << node
        comp << node
        adjacency[node].each { |m| stack << m if ids.include?(m) && !seen.include?(m) }
      end
      comp
    end
  end
end
