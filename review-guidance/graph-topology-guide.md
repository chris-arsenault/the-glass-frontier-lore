# Graph Topology Guide

Target topology derived from analysis of a mature canonry graph (241 entities, 1257 active edges, score 199-204). Our graph will eventually be used in the same narrative engine context and must achieve similar structural properties.

## Target Metrics

| Metric | Canonry Reference | Our Current | Target |
|--------|------------------|-------------|--------|
| Edges/entity | 5.2 | 3.0 | 4+ (coherence over count) |
| Mean degree (non-hub) | 8.4 | 3.8 | 5+ (coherence over count) |
| Median degree | 7.0 | 3.0 | 4+ |
| Zero-degree entities | ~10% | 33% (19/58) | <5% |
| 2-hop kind reachability | 100% all kinds | Broken (artifacts 0%, themes 0%) | 100% |
| Relationship type variety | 40 types in active use | 43 types but most have 1-2 edges | 20+ types with 5+ edges each |

## Core Principles

### 1. Every entity must have typed relationships

No entity should exist in the graph with zero outgoing or incoming typed edges (excluding MENTIONS, HAS_SECTION, HAS_ARCHETYPE). This is the most basic requirement. The narrative engine traverses the graph — isolated nodes are invisible to it.

**When creating or upserting an entity, add at least 3 typed relationships.** Check with `query-neighborhood` after upserting. If it shows only sections, the entity is disconnected.

### 2. Cross-kind bridges are more valuable than same-kind connections

The narrative engine needs to reach any entity kind from any other kind in 2 hops. This requires deliberate cross-kind relationships. The canonry graph achieves this through bridge relationship types:

| Bridge Rel | Connects | Our Equivalent |
|-----------|----------|----------------|
| `created_during` | everything → era | `EMERGED_DURING`, `ACTIVE_DURING` |
| `practitioner_of` | npc → ability/concept | `USES`, `PRACTICES` |
| `manifests_at` | concept → location | `MANIFESTS_AT`, `LOCATED_IN` |
| `resident_of` | npc → location | `LOCATED_IN`, `BASED_IN` |
| `owned_by` | artifact → faction/npc | `OWNED_BY`, `CREATED_BY` |
| `participant_in` | npc/faction → occurrence | `PARTICIPATED_IN` |
| `originated_in` | faction/concept → location | `FOUNDED_IN`, `ORIGINATED_IN` |
| `controls` | faction → location | `GOVERNS`, `CONTROLS` |
| `catalyst_of` | concept → occurrence | `CAUSED`, `TRIGGERED` |
| `commemorates` | concept → occurrence | `COMMEMORATES`, `REFERENCES` |
| `member_of` | npc → faction | `MEMBER_OF`, `LEADS` |
| `central_to` | artifact → concept | `CENTRAL_TO`, `EMBODIES` |

**Priority bridges we're missing:** artifact↔anything, concept↔faction, npc↔artifact, concept↔occurrence.

### 3. High-degree hub nodes provide structural connectivity

In the canonry graph, era entities have mean degree 48 — they connect to nearly everything via `created_during` and `active_during`. This is the primary mechanism for temporal and thematic connectivity.

In our graph, **themes, threads, and loops serve the same structural role as eras do in the canonry graph.** They are high-degree hub nodes that entities connect to via FILLS_BEAT, AT_STAGE, etc. This is good — but the graph must also be well-connected **with those hub nodes removed.** If you delete all theme/thread/loop nodes and the graph fragments, the entity-to-entity topology is too thin.

**Test:** Mentally remove all meta-structure nodes (themes, threads, loops, and eras if we add them). Do the remaining entities still form a connected graph with reasonable degree? If not, the entity-to-entity relationships are insufficient. The narrative engine traverses both meta-structure paths and direct entity paths — both must work independently.

Hub nodes provide thematic/temporal shortcuts. Direct entity relationships provide the ground-truth connectivity the engine needs for local traversal.

### 4. Degree distribution should be smooth, not clustered

Target: most entities between 5-15 edges. A few high-degree hubs (eras, major factions, major locations) at 20-40. No entity besides eras should exceed 40. No entity should be below 3.

The canonry graph's non-era distribution: mean 8.4, median 7.0, max 38, stdev 6.3. This is a healthy bell curve with a slight right skew — a few well-connected hubs, most entities in a comfortable middle range.

### 5. Temporal coherence over edge count

The canonry graph achieved high edge density through procedural generation that didn't enforce temporal consistency — NPCs born in era 1 would participate in era 5 events, factions would thrive at a location after being destroyed, etc. The history didn't read coherently even though the graph topology scored well.

Our graph is hand-crafted. We should prioritize temporal coherence over hitting raw edge count targets. Fewer relationships that make chronological sense are worth more than many that don't. Concretely:

- **Check temporal bounds before adding relationships.** If an entity has `valid_from` / `valid_to`, verify the relationship is plausible within that window. A faction destroyed in the Contested Reach cannot participate in Accord-era events.
- **Prefer era-appropriate connections.** When choosing which entities to link, pick ones that coexist temporally. An NPC active in the present day should relate to present-day factions and locations, not pre-Glassfall ones (unless the relationship is explicitly historical, like "studies ruins of").
- **Accept lower edge counts as the cost of coherence.** The 5+ edges/entity target is aspirational. If an entity genuinely only has 3 coherent relationships, that's better than 6 with temporal nonsense. The kind-reachability and zero-degree targets still apply — every entity must connect to *something*, and all kinds must be reachable in 2 hops. But individual edge counts can flex.

The narrative engine benefits more from a graph it can traverse without producing contradictions than from one with high connectivity but broken timelines.

### 6. Relationship strength is a dimension

The canonry graph uses strength values (0.0-1.0) on every relationship. Distribution peaks at 0.4-0.6 (most relationships are medium-strength). This lets the narrative engine weight traversals — strong connections are followed more readily than weak ones.

We don't currently use relationship strength. Consider adding it as relationships mature.

## Kind Taxonomy

Kinds are split into three categories. Each kind has a `category` tag on its taxonomy node.

### World Atlas (category: atlas) — named entities, primary graph content

These are the core of the narrative engine. Named things with identity, history, and relationships.

| Kind | Description | Priority Relationships |
|------|-------------|----------------------|
| **npc** | Named sentient individuals | member_of(faction), located_in(installation), participated_in(incident), employed_by(faction) |
| **geographic_location** | Natural places — planets, regions, biomes. Mostly static. | contains(geographic_location), part_of(geographic_location) |
| **installation** | Constructed places — cities, stations, habs, ruins. Can change over time. | located_in(geographic_location), governs←(faction), built_by←(faction/npc) |
| **faction** | Named organized groups — governments, guilds, syndicates | controls(installation), allied/enemy(faction), member_of←(npc), headquartered_in(installation) |
| **artifact** | Named unique objects of power or importance | owned_by(faction/npc), located_in(installation), embodies(ability/concept) |
| **creature** | Non- or semi-sentient notable entities. Distinct from NPC. | inhabits(geographic_location), depends_on(ability) |
| **transport** | Named ships, vehicles, stations with identity and history | owned_by(faction/npc), operates_in(geographic_location), depends_on(resource) |
| **incident** | Discrete, time-bound events. Happened and ended. | caused(entity), participated_in←(npc/faction), occurred_at(installation/geographic_location) |
| **conflict** | Ongoing large-scale tensions. Long-horizon. | involves←(faction), manifests_at(geographic_location/installation), caused_by(incident) |
| **rumor** | Investigatable hooks with uncertain truth. May reference any entity type. Note: anomalous signals and broadcasts are rumors — a strange transmission from the deep Shear is a rumor to investigate, not a separate kind. | references(any), heard_at(installation), investigated_by←(npc/faction) |
| **edict** | Laws, taboos, enforced systems. Empty for now — will matter when governance detail increases. | enforced_in(installation/geographic_location), issued_by(faction), violates←(npc/faction) |

### Player Reference (category: reference) — general knowledge, highly connected hubs

These describe how the world works. Accessible as general knowledge. Expected to be highly connected — many atlas entities should link to them. A reference entity with degree <3 is under-connected.

| Kind | Description | Priority Relationships |
|------|-------------|----------------------|
| **species** | Biological or synthetic lineage. Referenced by npc/creature. | inhabits(geographic_location), depends_on(ability) |
| **culture** | Shared norms, beliefs, aesthetics. Cross-cuts factions and species. | manifests_at(installation), originated_in(geographic_location) |
| **ability** | Natural or technological capabilities. Will have subtypes (resonance, faith-based, etc). | practiced_by←(npc/species), manifests_at(geographic_location/installation), depends_on(resource) |
| **resource** | World-specific materials — categories, not instances. Ringglass, stillwater, etc. | sourced_from(geographic_location), derived_from(resource), depends_on←(ability/artifact) |
| **phenomenon** | Environmental/cosmic effects — echo rivers, Bloom Zone distortion, resonance depletion. | manifests_at(geographic_location), depends_on(ability/resource) |
| **concept** | Remaining reference material — professions, meta-systems, worldbuilding overviews. | depends_on(concept), manifests_at(geographic_location) |

### Structural (category: structural) — engine mechanics

Not player-facing query buckets. Used for temporal filtering, hidden knowledge, and narrative guidance.

| Kind | Description |
|------|-------------|
| **era** | Temporal bins for filtering and context |
| **dm** | Hidden knowledge — secrets, true causes, DM-only motivations |
| **thread** | Narrative beat sequences |
| **loop** | Recurring narrative patterns |
| **theme** | Thematic questions that entries can engage with |

## Temporal Edges

Relationship types are classified as **temporal** or **non-temporal** in the taxonomy (`temporal` flag on RelationType nodes).

### Temporal relationships (state that changes over time)

These represent ongoing conditions with a start and optional end. They carry `valid_from` (year CE, required) and `valid_to` (year CE, nullable — omit for ongoing).

**Always temporal:** GOVERNS, GOVERNED_BY, LEADS, CHAIRS, REGULATES, MEMBER_OF, OPERATES_IN, HEADQUARTERED_IN, COOPERATES_WITH, INHABITS, POSSESSES, STUDIES, MAINTAINS, TRAINS, HOSTS, SUPPLIES, EMPLOYED_BY, OWNED_BY

**Sometimes temporal:** LOCATED_IN, PRACTICED_BY, CARRIES — physical structures don't move, but communities relocate and traditions change.

### Non-temporal relationships

Point-in-time events (CAUSED, CREATED, DESTROYED), structural/astronomical (PART_OF, ORBITS), physical properties (DEPENDS_ON, DERIVED_FROM), and all narrative/meta edges.

### When adding temporal edges

```
python3 graph_cli.py add-rel coremark OPERATES_IN the-shear --from 2320
python3 graph_cli.py add-rel the-continuity GOVERNS sithari --from 2245
python3 graph_cli.py add-rel bloom-coalition COOPERATES_WITH displacement-council --from 2355 --to 2362
```

The CLI warns when a temporal-typed edge is added without `--from`. The G8 check validates:
- Temporal edge has `valid_from`
- Edge bounds don't start before either entity exists
- Edge bounds don't extend past either entity's end

### Point-in-time queries

```
python3 graph_cli.py query-at sithari --year 2340
```

Shows the neighborhood filtered to edges and entities active at that year. Edges without temporal bounds are assumed always-active (shown but unfiltered).

## When Adding Relationships

Before adding a relationship, run `review.py gaps` to check archetype fill state. If the relationship would make an entity the sole representative of its archetype in yet another context, use a `[future:]` marker instead.

After adding relationships to an entity, run `query-neighborhood` and verify:
- At least 3 typed relationships (not counting MENTIONS/HAS_SECTION)
- Connections to at least 2 different entity kinds
- At least one temporal relationship (era or occurrence link)
- Temporal-typed edges have `valid_from` set

## Current Deficiencies

*Updated after topology remediation. Run `review.py topology` for live numbers.*

### Resolved
- ~~Zero-degree entities~~ — fixed (was 19, now 0)
- ~~Artifacts/themes isolated~~ — connected
- ~~Kind taxonomy too broad~~ — refined to 18 kinds in 3 categories

### Remaining
1. **Edge density 3.5 vs 4+ target** — improving but still below target.
2. **Culture kind poorly connected** — only reaches 11/15 kinds in 2 hops. Needs more cross-kind bridges as culture entities are added.
3. **Location split pending** — current `location` kind needs splitting into `geographic_location` and `installation` per taxonomy.
4. **New kinds empty** — transport, rumor, edict, conflict have no entities yet. These will populate as the world grows.
5. **Occurrence → incident/conflict split pending** — current occurrences need reclassifying.
6. **Ability extraction pending** — resonance bands, tuning techniques currently buried in concept entries, need extracting to `ability` kind.
7. **43 temporal edges missing bounds** — all existing state relationships (GOVERNS, LEADS, MEMBER_OF, etc.) lack `valid_from`/`valid_to`. Run `python3 graph_cli.py check` to see the full G8 backlog.

### Future (for scale)
8. **No relationship strength** — all edges equally weighted.
9. **No distance metric** — canonry uses spatial distance for location relationships.
10. **Ability subtypes** — resonance abilities are the current set. Faith-based abilities will come later.
