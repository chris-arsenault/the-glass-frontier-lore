# frozen_string_literal: true

require "pathname"

module Lorecraft
  # Read-only inventory of authored positions and route geometry. Missing
  # placement remains visible as editorial work; it is not a validation error.
  class PlacementAudit
    def initialize(world, entity: nil, root: Dir.pwd)
      @world = world
      @entity = entity && world.entity(entity.to_sym)
      raise Error, "unknown entity: #{entity}" if entity && !@entity

      @root = Pathname.new(root).expand_path
    end

    def data
      return entity_data(@entity) if @entity

      positioned = game_entities.select { |entity| !entity.positions.empty? }
      routes = game_entities.select(&:route_geometry)
      {
        frame_count: @world.spatial_frames.size,
        positioned_entity_count: positioned.size,
        route_geometry_count: routes.size,
        frames: @world.spatial_frames.values.sort_by { |frame| frame.name.to_s }.map do |frame|
          {
            id: frame.name,
            coordinates: frame.coordinates,
            origin: frame.origin,
            parent: frame.parent,
            radial_unit: frame.radial_unit,
            prime_meridian: frame.prime_meridian,
            positioned_entity_count: positioned.count do |entity|
              entity.positions.any? { |position| position.frame == frame.name }
            end,
            route_geometry_count: routes.count { |entity| entity.route_geometry.frame == frame.name },
          }.compact
        end,
        unplaced_locations: game_entities.select do |entity|
          @world.schema.location_kind?(entity.kind) && entity.positions.empty?
        end.map { |entity| entity_ref(entity) }.sort_by { |entity| entity[:title] },
      }
    end

    def report
      return report_entity(data) if @entity

      result = data
      lines = [
        "Spatial placement",
        "  #{result[:positioned_entity_count]} positioned entities; " \
          "#{result[:route_geometry_count]} routes with geometry; #{result[:frame_count]} frames",
      ]
      result[:frames].each do |frame|
        parent = frame[:parent] ? "; parent #{frame[:parent]}" : ""
        lines << "  #{frame[:id]}: #{frame[:coordinates]}; origin #{frame[:origin]}#{parent}; " \
                 "#{frame[:positioned_entity_count]} positioned; #{frame[:route_geometry_count]} routes"
      end
      lines << "Unplaced locations (#{result[:unplaced_locations].size}):"
      result[:unplaced_locations].each do |entity|
        lines << "  #{entity[:id]} — #{entity[:title]} (#{entity[:source_file]})"
      end
      lines.join("\n")
    end

    private

    def game_entities
      @game_entities ||= @world.game_world_nodes.grep(Entity)
    end

    def entity_data(entity)
      {
        entity: entity_ref(entity),
        positions: entity.positions.map do |position|
          {
            frame: position.frame,
            relative_to: position.relative_to,
            coordinates: position.coordinates,
          }.compact
        end,
        route_geometry: route_data(entity.route_geometry),
      }.compact
    end

    def route_data(geometry)
      return unless geometry

      {
        frame: geometry.frame,
        points: geometry.points.values.map do |point|
          {
            id: point.id,
            kind: point.kind,
            entity_id: point.entity_id,
            coordinates: point.coordinates.empty? ? nil : point.coordinates,
          }.compact
        end,
        paths: geometry.paths.values.map do |path|
          { id: path.id, through: path.points }
        end,
      }
    end

    def entity_ref(entity)
      {
        id: entity.id,
        title: entity.title,
        kind: entity.kind,
        source_file: relative_source(entity),
      }
    end

    def report_entity(result)
      entity = result[:entity]
      lines = ["Spatial placement — #{entity[:title]} (#{entity[:id]})"]
      if result[:positions].empty?
        lines << "  No authored positions."
      else
        result[:positions].each do |position|
          relative = position[:relative_to] ? " relative to #{position[:relative_to]}" : ""
          values = position[:coordinates].map { |key, value| "#{key}=#{value}" }.join(", ")
          lines << "  #{position[:frame]}#{relative}: #{values}"
        end
      end
      if (route = result[:route_geometry])
        lines << "Route geometry — #{route[:frame]}"
        route[:paths].each do |path|
          lines << "  #{path[:id]}: #{path[:through].join(' -> ')}"
        end
      end
      lines.join("\n")
    end

    def relative_source(entity)
      return unless entity.source_file

      Pathname.new(entity.source_file).expand_path.relative_path_from(@root).to_s
    rescue ArgumentError
      entity.source_file.to_s
    end
  end
end
