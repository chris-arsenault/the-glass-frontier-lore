import type {
  RelationPropertyDefinition,
  RouteGeometry,
  SpatialFrameDefinition,
  SpatialPosition,
} from "./spatial";

export type {
  RelationPropertyDefinition,
  RouteGeometry,
  RouteGeometryPath,
  RouteGeometryPoint,
  SpatialFrameDefinition,
  SpatialPosition,
} from "./spatial";

export type Optional<T> = T | undefined;
export type Nullable<T> = T | null;
export type TimeUnit = "year" | "tick";

export interface CanonManifest {
  schema_version: number;
  title: string;
  revision: string;
  default_world: string;
  worlds: WorldSummary[];
}

export interface WorldSummary {
  id: string;
  title: string;
  revision: string;
  generated_at_year: number;
  time_unit: TimeUnit;
  entry_count: number;
  page_count: number;
  chronicle_count: number;
  era_narrative_count: number;
  home: Nullable<string>;
  description: string;
}

export interface EntrySummary {
  id: string;
  slug: string;
  title: string;
  kind: string;
  subkind: Optional<string>;
  section: Optional<string>;
  tags: string[];
  prominence: Optional<string>;
  aliases: string[];
  status: Optional<string>;
  region: Optional<string>;
  narrative_role: Optional<string>;
  is_article: boolean;
  playable_as: string[];
  origin_blurb: Optional<string>;
  veiled: boolean;
  veil_tagline: Optional<string>;
  gm_notes: Optional<GmNote[]>;
  positions: SpatialPosition[];
  summary: string;
  route: string;
}

/**
 * How to run the entry, published with it. The kind says when the note
 * applies: on the entity turning up unbidden, on something the players said,
 * or on the scene it is already part of.
 */
export interface GmNote {
  kind: "appears" | "triggered_by" | "complicates";
  text: string;
}

export interface PageSummary {
  id: string;
  source_id: string;
  slug: string;
  title: string;
  summary: string;
  category: Optional<string>;
  route: string;
}

export interface PublicAnnotation {
  id: string;
  anchor: string;
  source_anchor: Optional<string>;
  anchor_index: Optional<number>;
  text: string;
  type: string;
  display: string;
}

export interface MediaReference {
  asset_id: string;
  role: "entity" | "cover" | "inline";
  url: Optional<string>;
  anchor: Optional<string>;
  anchor_index: Optional<number>;
  caption: Optional<string>;
  size: Optional<string>;
  justification: Optional<string>;
  source_entity_id: Optional<string>;
  reference_id: Optional<string>;
}

export interface ChronicleSummary {
  id: string;
  source_id: string;
  slug: string;
  title: string;
  summary: string;
  format: Optional<string>;
  focus: Optional<string>;
  focal_era: string;
  from: number;
  to: Optional<number>;
  temporal_description: Optional<string>;
  route: string;
  cover: Optional<MediaReference>;
}

export interface EraNarrativeSummary {
  id: string;
  source_id: string;
  slug: string;
  title: string;
  summary: string;
  era: string;
  starts: number;
  ends: number;
  route: string;
  cover: Optional<MediaReference>;
}

export interface KindSummary {
  id: string;
  title: string;
  count: number;
}

export interface SubkindSummary {
  id: string;
  kind: string;
  title: string;
  count: number;
}

export interface TagDefinition {
  id: string;
  title: string;
  description: Nullable<string>;
}

export interface RelationDefinition {
  id: string;
  title: string;
  category: string;
  temporal: boolean;
  symmetric: boolean;
  inverse: Optional<string>;
  description: Optional<string>;
  causal: boolean;
  properties: RelationPropertyDefinition[];
}

export interface WorldIndex {
  schema_version: number;
  id: string;
  title: string;
  revision: string;
  generated_at_year: number;
  time_unit: TimeUnit;
  home: Nullable<string>;
  entries: EntrySummary[];
  pages: PageSummary[];
  chronicles: ChronicleSummary[];
  era_narratives: EraNarrativeSummary[];
  kinds: KindSummary[];
  subkinds: SubkindSummary[];
  tags: TagDefinition[];
  relations: RelationDefinition[];
  spatial_frames: SpatialFrameDefinition[];
}

interface AuthoredSectionBase {
  id: string;
  section: string;
  heading: Optional<string>;
  at_year: Optional<number>;
  owner_id: Optional<string>;
  owner_kind: Optional<string>;
}

export interface ProseSection extends AuthoredSectionBase {
  format: "prose";
  markdown: string;
}

export interface AuthoredCard {
  entry_id: string;
  title: string;
  route: string;
  description: string;
}

export interface CardSection extends AuthoredSectionBase {
  format: "cards";
  cards: AuthoredCard[];
}

export type AuthoredSection = ProseSection | CardSection;

export interface EntryConnection {
  direction: "outgoing" | "incoming";
  relation: string;
  relation_title: string;
  entry_id: string;
  title: string;
  route: string;
  from: number;
  to: Nullable<number>;
  live: boolean;
  properties: Optional<Record<string, unknown>>;
}

export interface EntryFactLink {
  entry_id: string;
  title: string;
  route: string;
}

export interface EntryFact {
  id: string;
  label: string;
  type: "text" | "integer" | "year" | "entity" | "entities";
  value: Optional<string | number>;
  links: Optional<EntryFactLink[]>;
}

export interface EntryDocument extends EntrySummary {
  schema_version: number;
  world_id: string;
  revision: string;
  generated_at_year: number;
  time_unit: TimeUnit;
  sections: AuthoredSection[];
  facts: EntryFact[];
  connections: EntryConnection[];
  timeline_event_ids: string[];
  chronicles: ChronicleSummary[];
  annotations: PublicAnnotation[];
  media: MediaReference[];
  route_geometry: Nullable<RouteGeometry>;
  dm: Optional<boolean>;
}

export interface PageDocument extends PageSummary {
  schema_version: number;
  world_id: string;
  revision: string;
  source_status: Optional<string>;
  linked_entities: ChronicleEntity[];
  sections: AuthoredSection[];
}

export interface GraphNode {
  id: string;
  kind: string;
  subkind: string;
  title: string;
  prominence: Optional<string>;
  tags: string[];
  playable_as: Optional<string[]>;
  origin_blurb: Optional<string>;
  veiled: Optional<boolean>;
  veil_tagline: Optional<string>;
  positions: Optional<SpatialPosition[]>;
  route_geometry: Optional<RouteGeometry>;
  dm: boolean;
  path: string;
}

export interface GraphEdge {
  src: string;
  rel: string;
  tgt: string;
  from: number;
  to: Nullable<number>;
  dm: boolean;
  props: Optional<Record<string, unknown>>;
  live_at_render: boolean;
}

export interface GraphDocument {
  schema_version: number;
  world_id: string;
  revision: string;
  generated_at_year: number;
  time_unit: TimeUnit;
  nodes: GraphNode[];
  edges: GraphEdge[];
}

export interface EraDocument {
  id: string;
  title: string;
  description: Optional<string>;
  starts: number;
  ends: number;
}

export interface TimelineEvent {
  id: string;
  title: string;
  year: number;
  ends: Optional<number>;
  era: Optional<string>;
  home_id: Optional<string>;
  entry_id: Optional<string>;
  summary: string;
  markdown: string;
}

export interface TimelineDocument {
  schema_version: number;
  world_id: string;
  revision: string;
  now: number;
  unit: TimeUnit;
  eras: EraDocument[];
  events: TimelineEvent[];
}

export interface ChronicleEntity {
  id: string;
  title: string;
  route: string;
}

export interface ChronicleEvent {
  id: string;
  tick: number;
  era: Optional<string>;
  kind: string;
  subject_id: Optional<string>;
  action: Optional<string>;
  description: Optional<string>;
  significance: Optional<number>;
  tags: string[];
  participant_ids: string[];
  participant_effects: unknown[];
  caused_by: Optional<unknown>;
}

export interface ChronicleRelationshipEndpoint {
  id: string;
  title: string;
  route: string;
}

export interface ChronicleRelationship {
  source_id: string;
  relation: string;
  source: ChronicleRelationshipEndpoint;
  target: ChronicleRelationshipEndpoint;
  from: number;
  to: Optional<number>;
  props: Optional<Record<string, unknown>>;
  source_metadata: Record<string, unknown>;
}

export interface ChronicleDocument extends ChronicleSummary {
  schema_version: number;
  world_id: string;
  revision: string;
  time_unit: TimeUnit;
  narrative_style: Optional<string>;
  touched_eras: string[];
  entrypoint_id: Optional<string>;
  entities: ChronicleEntity[];
  events: ChronicleEvent[];
  relationships: ChronicleRelationship[];
  role_assignments: Record<string, string | { role: string; primary: boolean }>;
  sections: AuthoredSection[];
  content: string;
  annotations: PublicAnnotation[];
  media: MediaReference[];
}

export interface EraNarrativeDocument extends EraNarrativeSummary {
  schema_version: number;
  world_id: string;
  revision: string;
  time_unit: TimeUnit;
  thesis: Optional<string>;
  tone: Optional<string>;
  source_chronicles: ChronicleSummary[];
  sections: AuthoredSection[];
  content: string;
  annotations: PublicAnnotation[];
  media: MediaReference[];
}

export interface EditorialQuestion {
  text: string;
  raised: Optional<string>;
  on: Optional<string>;
}

export interface ProvenanceRecord {
  section: string;
  origin: Optional<string>;
  drafted_by: Optional<string>;
  declared: boolean;
  reviewed: Optional<string>;
  stale: boolean;
}

export interface EditorialEntry {
  id: string;
  title: string;
  status: Optional<string>;
  reviewed: Optional<string>;
  source_file: Optional<string>;
  dm: boolean;
  questions: EditorialQuestion[];
  log: string[];
  missing_facts: Array<{ id: string; label: string }>;
  provenance: ProvenanceRecord[];
  entry: EntryDocument;
}
