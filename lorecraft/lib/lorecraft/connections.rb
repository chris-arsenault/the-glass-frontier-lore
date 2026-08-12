# frozen_string_literal: true

require "pathname"

module Lorecraft
  # A source-oriented view of every typed edge that touches one entity.
  class Connections
    Connection = Struct.new(
      :direction, :relation, :neighbor_id, :neighbor_title, :neighbor_kind,
      :neighbor_source, :from, :to, :live, :dm, :origin_id, :origin_source,
      keyword_init: true
    )

    def initialize(world, entity:, root: Dir.pwd, at: :now, audience: :all)
      @world = world
      @entity = world.entity(entity.to_sym) || raise(Error, "unknown entity: #{entity}")
      if audience.to_sym == :player && @entity.dm?
        raise Error, "unknown entity: #{entity}"
      end

      @root = Pathname.new(root).expand_path
      @edges = Edges.new(world, at: at, audience: audience)
    end

    attr_reader :entity

    def data
      {
        generated_at_year: @edges.year,
        entity: {
          id: @entity.id,
          title: @entity.title,
          kind: @entity.kind,
          subkind: @entity.subkind,
          source_file: relative_source(@entity),
        },
        count: rows.size,
        connections: rows.map(&:to_h),
      }
    end

    def rows
      @rows ||= @edges.touching(@entity.id).map do |edge|
        outgoing = edge.subject == @entity.id
        neighbor_id = outgoing ? edge.target : edge.subject
        neighbor = @world[neighbor_id]
        origin = @world[edge.origin]
        Connection.new(
          direction: outgoing ? :outgoing : :incoming,
          relation: edge.relation,
          neighbor_id: neighbor_id,
          neighbor_title: title_for(neighbor_id),
          neighbor_kind: neighbor&.respond_to?(:kind) ? neighbor.kind : nil,
          neighbor_source: relative_source(neighbor),
          from: edge.from,
          to: edge.to,
          live: edge.live,
          dm: edge.dm,
          origin_id: edge.origin,
          origin_source: relative_source(origin),
        )
      end.sort_by do |row|
        [row.direction == :outgoing ? 0 : 1, row.relation.to_s, row.neighbor_title.downcase, row.from]
      end
    end

    def report
      source = relative_source(@entity) || "(generated or inline definition)"
      lines = ["Connections — #{@entity.title} (#{@entity.id}) at #{@edges.year}", "  source: #{source}"]
      if rows.empty?
        lines << "  No typed connections."
        return lines.join("\n")
      end

      %i[outgoing incoming].each do |direction|
        selected = rows.select { |row| row.direction == direction }
        next if selected.empty?

        lines << "#{direction.to_s.capitalize}:"
        selected.each do |row|
          arrow = direction == :outgoing ? "->" : "<-"
          interval = "[#{row.from}, #{row.to || '∞'})"
          state = if row.live
                    "live"
                  elsif row.from > @edges.year
                    "future"
                  else
                    "historical"
                  end
          flags = [state]
          flags << "DM" if row.dm
          neighbor = [row.neighbor_title, row.neighbor_kind].compact.join("; ")
          lines << "  #{row.relation} #{arrow} #{row.neighbor_id} (#{neighbor}) " \
                   "#{interval} #{flags.join(', ')}"
          lines << "    neighbor: #{row.neighbor_source}" if row.neighbor_source
          if row.origin_id && row.origin_id != row.neighbor_id && row.origin_id != @entity.id
            origin = row.origin_source ? " — #{row.origin_source}" : ""
            lines << "    established by: #{row.origin_id}#{origin}"
          end
        end
      end
      lines.join("\n")
    end

    private

    def title_for(id)
      node = @world[id]
      node.respond_to?(:title) ? node.title : id.to_s.tr("_", " ").split.map(&:capitalize).join(" ")
    end

    def relative_source(node)
      return nil unless node&.respond_to?(:source_file) && node.source_file

      Pathname.new(node.source_file).expand_path.relative_path_from(@root).to_s
    rescue ArgumentError
      node.source_file.to_s
    end
  end
end
