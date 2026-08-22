# Graph Topology Guide

Typed relationships let a reader, tool, or LLM move through a world by meaning
rather than by filename order or keyword similarity. This guide sets authoring
targets. Live measurements come from the DSL:

```sh
make topology WORLD=<id>
make web WORLD=<id>
make focus WORLD=<id>
```

Record a gap that will remain open as a `question` on the entity it concerns.
Do not copy live counts into guidance.

## Targets

| Metric | Target |
|---|---|
| Established non-structural entries with fewer than 3 world edges | 0 |
| Minimum and median degree by prominence | generally rise with prominence |
| Components after mythic entries are removed | 1 |
| Components after mythic and renowned entries are removed | 1 |
| Isolated entries after either prominence cut | 0 |

There is no target for mean degree. Prominence deliberately produces different
distributions: a mythic name can appear across the world, while a forgotten one
should connect only to its immediate context. One average hides that shape.

## What the commands count

`topology` reads the induced game-world graph. Reference articles and every edge
incident to them are absent. It includes historical edges and derived `embeds`
edges. The per-entry degree excludes
bookkeeping relations such as `active_during`, `emerged_during`,
`created_during`, `disappeared_during`, and `mentions`. Structural entries are
reported separately from prominence tiers. Veiled entries appear in raw totals
but do not count against the established-entry three-edge floor.

An entry below the three-edge floor appears in one of two lists:

- **disconnected:** it has too few world edges and no future markers;
- **waiting on unwritten entities:** future markers show where intended
  connections do not have nodes yet.

`web` treats edges as undirected for connectivity, removes structural entries
at every cut, then removes mythic entries and finally mythic plus renowned
entries. A remaining island depends on a famous hub for every route to the rest
of the world.

Neither command judges prose quality or whether an edge is a good fact.

`focus` uses the present public graph rather than the all-time graph. For every
entry explicitly playable as a chronicle location, it counts non-location
neighbors reached through one live, non-bookkeeping relationship. It separates
established and veiled choices, reports deficits below ten, and shows how many
playable locations share each veiled entry.

A world may declare `require_focus_choices!` in its schema. When it does,
`make check` fails if a playable location falls below the declared minimum or a
veiled entry falls outside the declared number of playable locations. The same
declaration can require most veiled entries to have one exact membership count
and require some to connect places that lack a direct location edge.

## 1. Give every entry local relationships

Create at least three meaningful incoming or outgoing typed edges for every
non-structural entry. Count the relationship in either direction; the point is
that another query can locate the entry through concrete world facts.

Use the narrowest declared verb. `located_in`, `member_of`, `depends_on`, and
`caused` answer different questions. The shared schema declares `related_to` as
banned, and validation rejects it, because a generic edge cannot guide a later
query.

Do not add edges merely to satisfy the floor. A future marker is more honest
than a false connection, and `topology` reports that distinction.

## 2. Connect different kinds through actual facts

Same-kind edges are useful, but a world becomes navigable when a query can move
between people, places, organizations, events, and reference material.

Common bridges in the shared schema include:

| From | Relationship | To |
|---|---|---|
| NPC | `member_of`, `employed_by` | faction |
| NPC | `located_in`, `operates_in` | location or installation |
| faction | `headquartered_in`, `governs`, `operates_in` | place |
| faction or NPC | `participated_in` | incident or conflict |
| faction or NPC | `possesses` | artifact |
| installation | `located_in`, `part_of` | geographic location |
| artifact or resource | `derived_from`, `depends_on` | resource or concept |
| culture or species | `inhabits` | geographic location |
| phenomenon | `manifests_at` | place |
| any causal source | `caused`, `causes`, `created`, `destroyed` | affected entity |

A world may declare additional verbs for setting-specific facts. Check its
`world/schema.rb` rather than inventing a near-synonym.

The gaps worth checking first are artifact to owner or place, concept to faction
or practice, NPC to artifact, and concept to incident. These connections often
exist in prose before anyone declares them as edges.

## 3. Do not confuse hubs with local structure

Eras, themes, threads, and loops can gather many edges because they organize
history or narrative material. Mythic and renowned entities gather edges because
their names travel widely. Those connections are useful, but they can make a
tree with famous roots look like a web.

Use `make web WORLD=<id>` to test the less-prominent graph directly. Repair an
island with a credible place, object, job, resource, danger, or dispute shared by
both sides. Follow `craft/connecting-entities.md`; do not add an unearned edge
between existing nodes just to merge components.

## 4. Read degree by prominence

`topology` prints minimum, median, and maximum world degree for each prominence
tier.

An inverted distribution, where famous entities have the lowest medians, means
prose treats those entities as central but the graph does not. A thin tier floor
means one widely usable name offers almost no path onward. Fix the minimum before
optimizing a median.

A high degree can also be wrong. If one person, place, or faction becomes the
default source of every detail, split the responsibility among more specific
entities instead of giving the hub another role.

## 5. Preserve time

`World#relationships` contains edges from every date, so topology can look
healthy even when no useful path exists at the year a task asks about. Check
historical compatibility while authoring:

- both endpoints must exist during a temporal edge's interval;
- `since:` is inclusive and `till:` is exclusive;
- an omitted `since:` begins at the world's first timeline year;
- `world.at(YEAR).out(:id, :verb)` and `.in` show only live edges;
- `ruby lorecraft/bin/lorecraft timeline ID --world <id>` shows the effects that
  touch one entity.

The schema's `temporal` flag tells consumers that a relation represents changing
state. The stored interval still comes from `relate since:/till:` or dated
moment effects.

Fewer chronological facts are better than many impossible ones. The validator
checks explicit existence intervals, but an author must still judge whether the
relationship belongs in that period.

## Kind taxonomy

The shared schema groups kinds by use.

### World atlas

Named things that form the primary graph:

`npc`, `geographic_location`, `installation`, `faction`, `artifact`, `creature`,
`transport`, `incident`, `conflict`, `rumor`, `edict`.

### Player reference

General knowledge that many atlas entries can share:

`species`, `culture`, `ability`, `resource`, `phenomenon`, `concept`.

### Structural

Chronology and authorial organization:

`era`, `theme`, `thread`, `loop`.

Era entries may remain reader-facing while `structural true` keeps their
bookkeeping degree out of prominence comparisons. The shared schema marks
`theme`, `thread`, and `loop` as non-reader kinds. DM visibility is a flag on an
entity or block, not a separate entity kind.

## Authoring sequence

1. Read the source and target entries and the world's relation declarations.
2. Choose the verb that states the actual fact.
3. Add `since:` and `till:` when the fact changes over time.
4. Run `make check WORLD=<id>` for type, audience, and causality errors.
5. Run `make topology WORLD=<id>` and inspect any entry below the floor.
6. Run `make web WORLD=<id>` when the change affects broader connectivity.

If a new field such as relationship strength or physical distance is needed,
extend the schema and its query/render behavior first. The current edge model
does not store either value.
