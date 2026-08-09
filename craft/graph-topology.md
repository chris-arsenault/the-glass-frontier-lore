# Graph Topology Guide

Target topology derived from analysis of a mature canonry graph (241 entities, 1257 active edges, score 199-204). Every world here feeds the same narrative engine and must reach similar structural properties.

Targets only. Where a world actually stands is a measurement, not craft — run `make topology WORLD=<id>` for the live numbers, and record a gap you are not closing yet as a `question` on the entity it concerns.

## Target Metrics

| Metric | Target |
|--------|--------|
| Entities with fewer than 3 typed edges | 0 |
| Median degree per prominence tier | rises with prominence |
| 2-hop kind reachability | 100% all kinds |
| Relationship type variety | 20+ types with 5+ edges each |
| Components with mythic dropped | 1 |
| Components with mythic and renowned dropped | 1 |

There is no target for edges per entity or for mean degree. Both average over a
population that prominence stratifies on purpose: a mythic name may be
referenced from anywhere and a forgotten one only from what already links to it,
so the tiers have different degrees by design and one figure across all of them
describes no entity in the graph. Worse, the average moves the right way for the
wrong reason — adding well-connected marginal entities under a thin roof raises
it while the graph gets more top-heavy. Read `make topology` tier by tier.

## Core Principles

### 1. Every entity must have typed relationships

No entity should exist in the graph with zero outgoing or incoming typed edges (excluding MENTIONS, HAS_SECTION, HAS_ARCHETYPE). This is the most basic requirement. The narrative engine traverses the graph — isolated nodes are invisible to it.

**When creating an entity, add at least 3 typed relationships.** Check with `world.at(:now).out(:id)` — or read the entity out of `make topology`, which lists anything left at zero degree.

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

The bridges that go thin first, in every world so far: artifact↔anything, concept↔faction, npc↔artifact, concept↔incident. Check those four before declaring a pass finished.

### 3. High-degree hub nodes provide structural connectivity

In the canonry graph, era entities have mean degree 48 — they connect to nearly everything via `created_during` and `active_during`. This is the primary mechanism for temporal and thematic connectivity.

In our graph, **themes, threads, and loops serve the same structural role as eras do in the canonry graph.** They are high-degree hub nodes that entities connect to via FILLS_BEAT, AT_STAGE, etc. This is good — but the graph must also be well-connected **with those hub nodes removed.** If you delete all theme/thread/loop nodes and the graph fragments, the entity-to-entity topology is too thin.

**Test:** Mentally remove all meta-structure nodes (themes, threads, loops, and eras if we add them). Do the remaining entities still form a connected graph with reasonable degree? If not, the entity-to-entity relationships are insufficient. The narrative engine traverses both meta-structure paths and direct entity paths — both must work independently.

Hub nodes provide thematic/temporal shortcuts. Direct entity relationships provide the ground-truth connectivity the engine needs for local traversal.

### 4. Degree is stratified by prominence, and that is where to read it

Prominence gates how far a name travels, so it also fixes how many edges an
entity can plausibly carry. Median degree should rise from `forgotten` to
`mythic`. No entity should sit below 3 edges, and none besides an era should
exceed 40.

`make topology` prints the minimum, median and maximum for each tier. Two
failures show up there and nowhere else:

**An inverted graph.** The top tiers have the lowest medians. The world's biggest
names are being written about in prose and never wired, while the small entities
written to connect things carry all the edges. The names still read as central
and the graph no longer agrees.

**A thin tier floor.** A `mythic` or `renowned` entity with one or two edges is a
name every entry may reach for and nothing can reach through. Fix these before
anything else — one edge added at the top of the graph does more for reachability
than ten added at the bottom.

The tier minimums matter more than the medians. A tier's median can look healthy
while its minimum is 1.

### 5. Temporal coherence over edge count

The canonry graph achieved high edge density through procedural generation that didn't enforce temporal consistency — NPCs born in era 1 would participate in era 5 events, factions would thrive at a location after being destroyed, etc. The history didn't read coherently even though the graph topology scored well.

Our graph is hand-crafted. We should prioritize temporal coherence over hitting raw edge count targets. Fewer relationships that make chronological sense are worth more than many that don't. Concretely:

- **Check temporal bounds before adding relationships.** An edge's `since:`/`till:` has to sit inside the window both endpoints exist in. A faction dissolved in one era cannot act in the next; the validator rejects the edge, but it is cheaper to notice while writing.
- **Prefer era-appropriate connections.** When choosing which entities to link, pick ones that coexist temporally. An NPC active in the present day should relate to present-day factions and locations, not pre-Glassfall ones (unless the relationship is explicitly historical, like "studies ruins of").
- **Accept lower edge counts as the cost of coherence.** If an entity genuinely only has 3 coherent relationships, that is better than 6 with temporal nonsense. The floor of 3, the kind-reachability target and the component counts still apply — every entity must connect to *something*, all kinds must be reachable in 2 hops, and the graph must hold together with its famous entities removed. Above the floor, individual counts flex.

The narrative engine benefits more from a graph it can traverse without producing contradictions than from one with high connectivity but broken timelines.

### 6. Relationship strength is a dimension

The canonry graph uses strength values (0.0-1.0) on every relationship. Distribution peaks at 0.4-0.6 (most relationships are medium-strength). This lets the narrative engine weight traversals — strong connections are followed more readily than weak ones.

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
| **rumor** | Investigatable hooks with uncertain truth. May reference any entity type. Anomalous signals and broadcasts are rumors — a strange transmission out of a hazard zone is something to investigate, not a kind of its own. | references(any), heard_at(installation), investigated_by←(npc/faction) |
| **edict** | Laws, taboos, enforced systems. Comes into use once a world has governance detail to enforce. | enforced_in(installation/geographic_location), issued_by(faction), violates←(npc/faction) |

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

Edges are authored in a world's `world/` directory (years are absolute ticks). A `relate` instance, or an event effect:

```ruby
relate :coremark_in_shear, :operates_in, :coremark, :the_shear, since: 2320
relate :continuity_gov_sithari, :governs, :the_continuity, :sithari, since: 2245
relate :bloom_coop, :cooperates_with, :bloom_coalition, :displacement_council,
       since: 2380, till: 2396
```

Validation rejects edges whose interval falls outside either endpoint's existence.

### Point-in-time queries

```
ruby lorecraft/bin/lorecraft graph --at 2340   # whole-world projection at a year
```

In Ruby: `world.at(2340).out(:sithari)` / `.in(:sithari)` — state folded to that tick. Non-temporal edges are always active.

## When Adding Relationships

Before adding a relationship, consider archetype fill state by hand — if the relationship would make an entity the sole representative of its archetype in yet another context, prefer a `#{future "Name"}` marker instead.

After adding relationships to an entity, query its neighborhood (`world.at(:now).out(id)`) and verify:
- At least 3 typed relationships (not counting MENTIONS/HAS_SECTION)
- Connections to at least 2 different entity kinds
- At least one temporal relationship (era or occurrence link)
- Temporal-typed edges have `valid_from` set

## Where Topology Goes Wrong

Every metric in the table above can be satisfied by a graph that is a tree with famous roots: entities reach one another through a handful of mythic hubs and nothing at the same scale is joined. `make web WORLD=<id>` removes the top prominence tiers and reports what separates. `craft/connecting-entities.md` is the procedure for closing those gaps with new entities rather than with edges.

The same four failures turn up in every world, in roughly this order:

1. **Thin edge density.** Entities get written and never wired. Density is the last metric to come up because it only moves when someone goes back over finished entries.
2. **A kind that reaches nothing.** Usually `culture` or `ability` — the reference kinds whose content sits inside other entries as prose instead of existing as an entity other entries can link to.
3. **Empty kinds mistaken for unneeded kinds.** `rumor`, `edict`, `transport` and `conflict` stay empty long past the point where the world has the material for them.
4. **Reference material buried in prose.** Abilities and resources described inside a concept entry carry none of the connectivity they would as entities.

Two dimensions the engine supports and no world here uses yet: relationship strength (0.0–1.0, to weight traversals) and spatial distance on location edges.
