export type Optional<T> = T | undefined;
export type Nullable<T> = T | null;

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
  entry_count: number;
  page_count: number;
  home: Nullable<string>;
  description: string;
}

export interface EntrySummary {
  id: string;
  slug: string;
  title: string;
  kind: string;
  section: Optional<string>;
  tags: string[];
  prominence: Optional<string>;
  aliases: string[];
  status: Optional<string>;
  region: Optional<string>;
  narrative_role: Optional<string>;
  summary: string;
  route: string;
}

export interface PageSummary {
  id: string;
  slug: string;
  title: string;
  summary: string;
  route: string;
}

export interface KindSummary {
  id: string;
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
}

export interface WorldIndex {
  schema_version: number;
  id: string;
  title: string;
  revision: string;
  generated_at_year: number;
  home: Nullable<string>;
  entries: EntrySummary[];
  pages: PageSummary[];
  kinds: KindSummary[];
  tags: TagDefinition[];
  relations: RelationDefinition[];
}

export interface ProseSection {
  id: string;
  section: string;
  heading: Optional<string>;
  markdown: string;
  at_year: Optional<number>;
  owner_id: Optional<string>;
  owner_kind: Optional<string>;
}

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
}

export interface EntryDocument extends EntrySummary {
  schema_version: number;
  world_id: string;
  revision: string;
  generated_at_year: number;
  sections: ProseSection[];
  connections: EntryConnection[];
  timeline_event_ids: string[];
  dm: Optional<boolean>;
}

export interface PageDocument extends PageSummary {
  schema_version: number;
  world_id: string;
  revision: string;
  sections: ProseSection[];
}

export interface GraphNode {
  id: string;
  kind: string;
  title: string;
  prominence: Optional<string>;
  tags: string[];
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
  live_at_render: boolean;
}

export interface GraphDocument {
  schema_version: number;
  world_id: string;
  revision: string;
  generated_at_year: number;
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
  eras: EraDocument[];
  events: TimelineEvent[];
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
  provenance: ProvenanceRecord[];
  entry: EntryDocument;
}
