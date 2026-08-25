export type Optional<T> = T | undefined;

export type DescriptiveIdentity = Record<string, string>;

export interface IdentityKeyDefinition {
  id: string;
  required: boolean;
  merge: "append" | "replace";
  separator: string;
}

export interface IdentitySourceDefinition {
  id: string;
  relation: Optional<string>;
  direction: "outgoing" | "incoming";
  cardinality: "one" | "many";
  required: boolean;
  kinds: string[];
  subkinds: string[];
  projection: Record<string, string>;
  precedence: number;
}

export interface IdentitySourceReference {
  slot: string;
  id: string;
  via: "direct" | "relation";
  relation: Optional<string>;
}

export interface IdentityLocalValue {
  operation: "extend" | "override";
  text: string;
}

export interface IdentityProvenanceRecord {
  key: string;
  text: string;
  operation: "extend" | "override" | "replace";
  owner_type: "entity" | "relationship";
  owner_id: string;
  source_slot: Optional<string>;
  source_id: Optional<string>;
  source_key: Optional<string>;
  suppressed: boolean;
}

export interface DescriptiveIdentityFields {
  descriptive_identity: Optional<DescriptiveIdentity>;
  identity_sources: Optional<IdentitySourceReference[]>;
  identity_local: Optional<Record<string, IdentityLocalValue>>;
  identity_provenance: Optional<Record<string, IdentityProvenanceRecord[]>>;
}
