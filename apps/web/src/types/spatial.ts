import type { Optional } from "./canon";

export interface RelationPropertyDefinition {
  id: string;
  type: "boolean" | "entity" | "enum" | "frame" | "integer" | "number" | "text";
  values: Optional<string[]>;
  required: boolean;
  minimum: Optional<number>;
  minimum_exclusive: Optional<number>;
  maximum: Optional<number>;
  maximum_exclusive: Optional<number>;
  requires: Optional<string[]>;
  exclusive_with: Optional<string[]>;
}

export interface SpatialFrameDefinition {
  id: string;
  coordinates: "polar" | "surface";
  origin_id: string;
  parent_id: Optional<string>;
  radial_unit: Optional<string>;
  prime_meridian_id: Optional<string>;
}

export interface SpatialPosition {
  frame_id: string;
  relative_to_id: Optional<string>;
  coordinates: Record<string, number | string>;
}

export interface RouteGeometryPoint {
  id: string;
  kind: "anchor" | "point";
  entity_id: Optional<string>;
  coordinates: Optional<Record<string, number | string>>;
}

export interface RouteGeometryPath {
  id: string;
  through: string[];
}

export interface RouteGeometry {
  frame_id: string;
  points: RouteGeometryPoint[];
  paths: RouteGeometryPath[];
}
