# System Architecture

The technical systems that support this lore repository. This is a living document — update it when systems change.

## Infrastructure

| Component | Location | Purpose |
|-----------|----------|---------|
| Memgraph | `192.168.66.3:7688` | Graph database — structured truth layer |
| Embedding service | `192.168.66.3:5361` | nomic-embed-text-v1.5, 768-dim, OpenAI-compatible API |
| GitHub Wiki | auto-published on push | Player-facing wiki generated from player/ content |
| Neo4j | `192.168.66.3:7687` | Separate project (not this repo) |

## Graph Data Model

### Unified Node Pattern

Everything in the graph follows one pattern:

```
(:Entity {id, title, type, prominence, status, tags, [queryable attributes]})
  -[:HAS_SECTION {type}]-> (:Section {id, heading, prose_heading, entity_id, embedding})
```

Graph nodes carry **no free text** — just IDs, titles, typed attributes, and embeddings. All prose lives in markdown files. The graph is a structural mirror of the prose with embedded vectors for semantic queries.

This pattern applies to ALL content types: locations, factions, NPCs, concepts, themes, threads, loops, occurrences — no special node types.

### Entity Attributes

- `id` — filename stem, used as primary key
- `title` — from frontmatter
- `type` — entity kind (location, faction, npc, concept, occurrence, era, theme, thread, loop, etc.)
- `prominence` — forgotten/marginal/recognized/renowned/mythic
- `status` — complete (has file) / shell (index entry only)
- `tags` — from frontmatter, validated against taxonomy
- `valid_from`, `valid_to` — temporal bounds (year CE, nullable)
- `dm_only` — boolean
- `narrative_role` — viewpoint/titan (nullable). See `review-guidance/narrative-roles-guide.md`
- `file_path` — relative path to prose file

### Section Attributes

- `id` — `{entity_id}::{canonical-heading}`
- `heading` — canonical heading (from `<!-- Canonical -->` annotation)
- `prose_heading` — original prose heading (for display)
- `entity_id` — parent entity
- `embedding` — 768-dim vector from nomic-embed-text-v1.5

### Relationship Types

All relationships are semantically typed. Generic relationships (RELATED_TO) are banned.

**Structural:** HAS_SECTION, MENTIONS
**Spatial:** LOCATED_IN, PART_OF, ORBITS, HEADQUARTERED_IN, OPERATES_IN, TERMINUS_OF, HOSTS
**Causal:** CAUSED, CREATED, DESTROYED, EMERGED_DURING, DISAPPEARED_DURING, ORIGINATED_IN
**Organizational:** GOVERNS, LEADS, MEMBER_OF, TRAINS, REGULATES, CHAIRS, GOVERNED_BY
**Technical:** DESIGNED, BUILT, POWERS, CONDUCTED_BY, SOURCED_FROM, ATTUNED_TO, DEPENDS_ON
**Social:** COOPERATES_WITH, STUDIES, MAINTAINS, INHABITS, POSSESSES, TAUGHT, CARRIES, BORN_IN
**Narrative:** HAS_BEAT, FILLS_BEAT, AT_STAGE, RESONATES_WITH
**DM:** HIDING_FROM, SEEPING_THROUGH, EXTENDS
**Banned:** RELATED_TO

### Temporal Edges

Relationship types have a `temporal` flag in the taxonomy. Temporal relationships represent ongoing states that change over time — they carry `valid_from` and `valid_to` properties (integer year CE, nullable).

**Temporal (state relationships):** GOVERNS, GOVERNED_BY, LEADS, CHAIRS, REGULATES, MEMBER_OF, OPERATES_IN, HEADQUARTERED_IN, COOPERATES_WITH, INHABITS, POSSESSES, STUDIES, MAINTAINS, TRAINS, HOSTS, SUPPLIES, EMPLOYED_BY, OWNED_BY, LOCATED_IN, PRACTICED_BY, CARRIES

**Non-temporal (inherent or point-in-time):** All causal, spatial/astronomical, technical, narrative, and meta relationships.

Edge temporal bounds are independent of entity temporal bounds. An edge can have a narrower window than its entities (e.g., a faction that exists 2320–present may only govern a location 2340–2355). The G8 check validates that edge bounds don't exceed entity bounds.

### Taxonomy

Reference data stored as queryable nodes:

- `(:Taxonomy:Tag)` — controlled tag vocabulary, mirrors `player/tags.md`
- `(:Taxonomy:RelationType)` — relationship type definitions with category and description
- `(:Taxonomy:SectionHeading)` — canonical heading names
- `(:Taxonomy:EntityKind)` — entity types with `ALLOWS_HEADING` edges to valid headings

### Narrative Structures

Themes, threads, and loops are entities with sections (same as everything else). Their connections to other entities use typed edges:

- **Themes:** `(:Entity)-[:RESONATES_WITH]->(:Entity {type:"theme"})` — entity engages with a thematic core
- **Threads:** `(:Entity)-[:FILLS_BEAT {beat, order}]->(:Entity {type:"thread"})` — entity fills a narrative beat
- **Loops:** `(:Entity)-[:AT_STAGE {stage, instance}]->(:Entity {type:"loop"})` — entity is at a stage in a loop instance

## Embedding Pipeline

Section embeddings use entity-enriched prefix injection:

1. For each section, detect entity mentions in prose text (NER against entity registry — title/slug matching)
2. For primary entity + up to 5 mentioned entities, fetch graph attributes (type, prominence, temporal bounds, relationships)
3. Construct enriched prefix: `[ENTITY:id | type:X | prominence:Y | rel:target]`
4. Clean prose (strip markdown links and future markers)
5. Embed: `{prefix}\n\n[SECTION:{heading}]\n{clean_prose}`
6. Store vector on Section node, discard enriched string

Re-embedding happens when an entity's prose is updated via `graph_cli.py upsert-entity`.

## Vector Search

Memgraph vector index: `section_embeddings` on `:Section(embedding)`, 768-dim, cosine metric, capacity 10000.

```cypher
CALL vector_search.search("section_embeddings", 10, $vec)
YIELD node, similarity
```

Used for: semantic overlap detection, theme matching, loop stage matching, pre-write concept checks.

## Contradiction Detection

### Deterministic (run on every `make lint`)

| Check | What it catches |
|-------|----------------|
| G1: Dangling references | MENTIONS edges to titleless entities |
| G2: Causal cycles | CAUSED chain cycle detection |
| G3: Temporal paradox | Entity with valid_to causes entity with later valid_from |
| G4: Attribute collision | Prose frontmatter vs graph property mismatches |
| G5: Antisymmetry | Directional rels (GOVERNS, LEADS) can't be bidirectional |
| G6: Spatial cycles | PART_OF cycle detection |
| G7: Orphan detection | Complete entities with zero edges |
| G8: Edge temporal coherence | Temporal edges missing valid_from; edge bounds exceeding entity bounds |
| Banned relationships | RELATED_TO or other banned types in graph |
| Untyped entities | Entity nodes missing type attribute |
| Title match | Prose title must match graph title |
| Section 1:1 match | Prose headings must match graph sections |

### Semantic (run on every `make lint`)

| Check | What it catches |
|-------|----------------|
| L2: Section similarity | Same-heading sections from different entities with cosine > 0.92 |

## CLI

All graph operations go through `graph_cli.py`:

| Command | Purpose |
|---------|---------|
| `upsert-entity <file>` | Sync prose → graph (entity, sections, embeddings, MENTIONS) |
| `add-rel <src> <TYPE> <tgt> [--from Y] [--to Y]` | Add typed relationship with optional temporal bounds |
| `rm-rel <src> <TYPE> <tgt>` | Remove relationship |
| `query-neighborhood <id>` | Show entity connections (with temporal bounds) |
| `query-at <id> --year Y` | Show entity neighborhood at a point in time |
| `query-similar <section-id>` | Vector search for similar sections |
| `overlap "<concept>"` | Semantic overlap check for pre-write planning |
| `check` | Run all contradiction checks |
| `stats` | Graph statistics |
| `snapshot [name]` | Save graph state for recovery |
| `restore <name>` | Restore from snapshot |
| `snapshots` | List available snapshots |

## Linting

`lint.py` runs 20+ checks across prose and graph. `make lint` also runs wiki generation with link validation.

Key categories: frontmatter validation, tag taxonomy compliance, dead links, DM leakage phrase detection, stale future markers, duplicate file stems, heading annotations, double-article detection, non-standard resonance vocabulary, graph-prose sync (all checks above).

## Wiki Generation

`wiki_gen.py` transforms `player/` content into GitHub wiki pages on push to main. Handles: flattened page names, `[[wiki links]]`, `[future:]` → stub markers, frontmatter metadata boxes, sidebar navigation. Excludes `dm/` content.

## File Structure

```
player/                     # all player-facing lore
  cosmology/                # fundamental world structure
  concepts/                 # systems, species, cultures, tech
  locations/                # settlements, regions, landmarks
    settlements/
    regions/
    landmarks/
  npcs/                     # factions, heroes, monsters
    factions/
    heroes/
    monsters/
  history/                  # eras, events
    eras/
    events/
  artifacts/                # relics, common items
    relics/
    common/
  creatures/                # fauna, anomalies
  ships/                    # military, civilian
  design-principles.md      # meta worldbuilding philosophy
  world-seeds.md            # ideas for future development
  timeline.md               # major events chronology
  tags.md                   # controlled tag vocabulary
  causality.md              # entity-to-entity causal chains

dm/                         # DM-only knowledge (not wiki-published)
  themes/                   # thematic cores — authorial scaffolding
  threads/                  # plot threads with beat sequences
  loops/                    # narrative loops with instances
review-guidance/            # writing quality docs
research/                   # reference research (thematic craft, etc.)
work-tracking/              # temporary operational docs
  open-questions.md
  work-queue.md
  snapshots/                # graph snapshots (gitignored)
```
