import type { Optional } from "./identity";

export type ContextScope = "world" | "place" | "scene" | "participant";

export interface ContextTagDefinition {
  id: string;
  description: string | null;
  scopes: ContextScope[];
  parent: Optional<string>;
  compatible_with: string[];
}

export type ContextTerm =
  | { scope: ContextScope; tag: string }
  | { scope: ContextScope; encyclopedia_external_key: string };

export interface ContextSelector {
  all: ContextTerm[];
  any: ContextTerm[];
  none: ContextTerm[];
}

export type EncyclopediaAvailability =
  | { mode: "global" }
  | { mode: "contextual"; selectors: ContextSelector[] };

export type EncyclopediaKind =
  | "lifeform"
  | "role"
  | "technology"
  | "resource"
  | "ability"
  | "phenomenon"
  | "culture";

export interface EncyclopediaMembership {
  kind: EncyclopediaKind;
  external_key: string;
}

export interface EncyclopediaAtlasEntry {
  external_key: string;
  title: string;
  kind: string;
  subkind: string;
  route: string;
}

export interface EncyclopediaAbilityTier {
  tier: string;
  effect: string;
  cost: Optional<string>;
}

export interface EncyclopediaEntry {
  external_key: string;
  slug: string;
  title: string;
  aliases: string[];
  kind: EncyclopediaKind;
  subkind: string;
  status: "draft" | "complete";
  summary: string;
  topics: string[];
  availability: EncyclopediaAvailability;
  prevalence: "common" | "uncommon" | "rare";
  character_role: Optional<"species" | "culture">;
  origin_blurb: Optional<string>;
  facts: Record<string, string | number>;
  descriptive_identity: Record<string, string>;
  tiers: EncyclopediaAbilityTier[];
  editorial: Optional<{
    reviewed: Optional<string>;
    questions: Array<{
      text: string;
      raised: Optional<string>;
      on: Optional<string>;
    }>;
    log: string[];
  }>;
  usage: {
    cues: string[];
    affordances: string[];
    pressures: string[];
    variations: string[];
  };
  sections: Array<{
    heading: string;
    text: string;
    audience: "player" | "gm";
  }>;
  instances: EncyclopediaAtlasEntry[];
  members: EncyclopediaAtlasEntry[];
}

export interface EncyclopediaBundle {
  entries: EncyclopediaEntry[];
}
