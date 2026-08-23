# frozen_string_literal: true

module Lorecraft
  # A named coordinate frame used for fixed, schematic map placement. Frames
  # describe how authored numbers should be read; they do not model motion.
  SpatialFrame = Struct.new(
    :name, :origin, :parent, :coordinates, :radial_unit, :prime_meridian,
    :source_file, :source_line,
    keyword_init: true
  )

  # One entity's fixed position in a declared frame. Absolute positions carry
  # coordinates; relative positions carry offsets from another positioned entity.
  SpatialPosition = Struct.new(
    :entity_id, :frame, :relative_to, :coordinates, :source_file, :source_line,
    keyword_init: true
  )

  RoutePoint = Struct.new(
    :id, :kind, :entity_id, :coordinates, :source_line,
    keyword_init: true
  ) do
    def anchor? = kind == :anchor
  end

  RoutePath = Struct.new(:id, :points, :source_line, keyword_init: true)

  # Fixed geometry attached to one route entity. Anchors resolve canonical
  # entities; local points describe bends and junctions that need no lore entry.
  class RouteGeometry
    attr_reader :entity_id, :frame, :points, :paths, :source_file, :source_line

    def initialize(entity_id:, frame:, source_file: nil, source_line: nil)
      @entity_id = entity_id.to_sym
      @frame = frame.to_sym
      @source_file = source_file
      @source_line = source_line
      @points = {}
      @paths = {}
    end

    def build(&block)
      Builder.new(self).instance_eval(&block) if block
      self
    end

    class Builder
      def initialize(geometry)
        @geometry = geometry
      end

      def anchor(entity_id, as: nil)
        id = (as || entity_id).to_sym
        add_point(
          RoutePoint.new(
            id: id,
            kind: :anchor,
            entity_id: entity_id.to_sym,
            coordinates: {},
            source_line: caller_locations(1, 1).first.lineno
          )
        )
      end

      def point(id, **coordinates)
        add_point(
          RoutePoint.new(
            id: id.to_sym,
            kind: :point,
            coordinates: symbolize(coordinates),
            source_line: caller_locations(1, 1).first.lineno
          )
        )
      end

      def path(id, through:)
        id = id.to_sym
        raise DefinitionError, "duplicate route path #{id} on #{@geometry.entity_id}" \
          if @geometry.paths.key?(id)

        @geometry.paths[id] = RoutePath.new(
          id: id,
          points: Array(through).map(&:to_sym),
          source_line: caller_locations(1, 1).first.lineno
        )
      end

      private

      def add_point(point)
        if @geometry.points.key?(point.id)
          raise DefinitionError, "duplicate route point #{point.id} on #{@geometry.entity_id}"
        end

        @geometry.points[point.id] = point
      end

      def symbolize(values) = values.to_h.transform_keys(&:to_sym)
    end
  end
end
