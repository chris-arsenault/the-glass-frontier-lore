# frozen_string_literal: true

module Lorecraft
  # A bounded shortest path over relationship intervals live at one year.
  # Traversal is undirected for discovery, while every step retains the edge's
  # canonical source, target, and direction.
  class PathQuery
    DEFAULT_MAX_HOPS = 6
    MAX_HOPS = 20

    Step = Struct.new(
      :from_id, :from_title, :from_kind, :relation, :to_id, :to_title,
      :to_kind, :direction, :canonical_subject, :canonical_target,
      :from_year, :to_year, :dm, :origin,
      keyword_init: true
    )

    def initialize(world, from:, to:, at: :now, audience: :all,
                   max_hops: DEFAULT_MAX_HOPS)
      @world = world
      @from = entity!(from, audience)
      @to = entity!(to, audience)
      @audience = audience.to_sym
      @edges = Edges.new(world, at: at, audience: audience)
      @max_hops = Integer(max_hops)
      unless (1..MAX_HOPS).cover?(@max_hops)
        raise Error, "max hops must be between 1 and #{MAX_HOPS}"
      end
    end

    def steps
      return @steps if defined?(@steps)
      return @steps = [] if @from.id == @to.id

      queue = [[@from.id, []]]
      visited = { @from.id => true }
      until queue.empty?
        current, path = queue.shift
        next if path.size >= @max_hops

        adjacency.fetch(current, []).each do |neighbor, edge, direction|
          next if visited[neighbor]

          next_path = path + [step(current, neighbor, edge, direction)]
          return @steps = next_path if neighbor == @to.id

          visited[neighbor] = true
          queue << [neighbor, next_path]
        end
      end
      @steps = nil
    end

    def data
      found = !steps.nil?
      {
        generated_at_year: @edges.year,
        audience: @audience,
        max_hops: @max_hops,
        excluded_relations: Edges::BOOKKEEPING_RELATIONS,
        from: node_data(@from),
        to: node_data(@to),
        found: found,
        hop_count: found ? steps.size : nil,
        steps: found ? steps.map(&:to_h) : [],
      }
    end

    def report
      result = data
      lines = ["Path — #{@from.title} (#{@from.id}) to #{@to.title} (#{@to.id}) at #{@edges.year}",
               "  live typed edges; both traversal directions; max #{@max_hops} hops",
               "  excludes: #{Edges::BOOKKEEPING_RELATIONS.join(', ')}",]
      unless result[:found]
        lines << "  No path found within #{@max_hops} hops."
        return lines.join("\n")
      end

      lines << "  #{@from.id} (#{@from.title}; #{@from.kind})"
      steps.each do |item|
        arrow = item.direction == :outgoing ? "--#{item.relation}-->" : "<--#{item.relation}--"
        interval = "[#{item.from_year}, #{item.to_year || '∞'})"
        type = item.to_kind ? "; #{item.to_kind}" : ""
        lines << "    #{arrow} #{item.to_id} (#{item.to_title}#{type}) #{interval}"
      end
      lines << "  #{steps.size} hop(s)"
      lines.join("\n")
    end

    private

    def adjacency
      @adjacency ||= begin
        graph = Hash.new { |hash, key| hash[key] = [] }
        live_edges.each do |edge|
          graph[edge.subject] << [edge.target, edge, :outgoing]
          graph[edge.target] << [edge.subject, edge, :incoming]
        end
        graph.each_value do |neighbors|
          neighbors.sort_by! { |neighbor, edge, direction| [edge.relation.to_s, neighbor.to_s, direction.to_s] }
        end
        graph
      end
    end

    def live_edges
      @edges.rows.select(&:live).reject do |edge|
        Edges::BOOKKEEPING_RELATIONS.include?(edge.relation)
      end
    end

    def step(current, neighbor, edge, direction)
      from_node = @world[current]
      to_node = @world[neighbor]
      Step.new(
        from_id: current,
        from_title: title_for(current),
        from_kind: from_node&.respond_to?(:kind) ? from_node.kind : nil,
        relation: edge.relation,
        to_id: neighbor,
        to_title: title_for(neighbor),
        to_kind: to_node&.respond_to?(:kind) ? to_node.kind : nil,
        direction: direction,
        canonical_subject: edge.subject,
        canonical_target: edge.target,
        from_year: edge.from,
        to_year: edge.to,
        dm: edge.dm,
        origin: edge.origin,
      )
    end

    def entity!(id, audience)
      normalized = id.to_s.tr("-", "_").to_sym
      entity = @world.entity(normalized)
      hidden = audience.to_sym == :player && entity&.dm?
      raise Error, "unknown entity: #{id}" if entity.nil? || hidden

      entity
    end

    def node_data(node)
      { id: node.id, title: node.title, kind: node.kind, subkind: node.subkind }
    end

    def title_for(id)
      node = @world[id]
      node.respond_to?(:title) ? node.title : id.to_s.tr("_", " ").split.map(&:capitalize).join(" ")
    end
  end
end
