# Encyclopedia Namespace and Atlas Topology Audit

Status: engine and migrated content repaired through the structural gate;
sapient and non-sapient lifeform ownership corrected; technology ownership
corrected; resource is the next unresolved extraction category. New lore is
limited to the names and concise identity text required to distinguish
reusable types from their Atlas subjects.

This audit covers the uncommitted Lorecraft Encyclopedia implementation and the
Glass Frontier entries migrated with it. It records both the repair baseline
and the later approved removal of generic sapient-species nodes from the Atlas.

## Technology category result

The fourteen reusable technologies now live only in the Encyclopedia. Thirteen
former Atlas positions contain distinct named vessels, instruments, records,
or machines classified with `type_of`. KITE's position contains the dated
First Repeatable Kite Tuning incident instead of a fictitious engine instance.
The complete mapping and content-ownership decisions are recorded in
`worlds/glass-frontier/research/technology-encyclopedia-review.md`.

The thirteen mapped neighborhoods retain all 57 old relationships not incident
to KITE. KITE was the approved general-component exception: its dated Signal
Famine relationship moved to the incident and its other eight type-level edges
left the Atlas graph. Atlas entity counts remain 502; named relationships are
1,424. The game graph contains 497 entities, 1,427 edges, and 1,415
non-bookkeeping edges. Chronicle focus remains 84 of 86, with only the existing
Deep Shear and Kesh deficits. The new incident is isolated in non-bookkeeping
topology because its sole Atlas edge is `active_during`; that is the measured
cost of removing the KITE hub.

## Sapient-species category result

The six established sapient species — Dwarves, Elves, Fae, Gnomes, Humans,
and Orcs — now exist only in the Encyclopedia. No same-id Atlas stubs remain.
Elves owns the existing public species article and DM-only truth blocks; the
Atlas retains the distinct `disappearance_of_the_elves` incident and particular
elven NPCs.

The sixteen generic lifeforms that were incorrectly retained as veiled Atlas
species have also been split. Breach Lichen, Heshari, Signal-Fed Life, and the
other general subjects now live in the Encyclopedia. Their Atlas graph
positions are occupied by eleven named creatures and five named NPCs, each
veiled and classified with `type_of`. The migration preserved the complete
typed edge set under the explicit old-id to named-instance mapping. No veiled
Atlas species remain.

Removing the six nodes also removed their 29 incident named relations. The
later non-sapient review removed the generic Farborn Atlas node and its twelve
type-level relations, then replaced ten same-id creature nodes and Navren with
distinctly named Atlas populations or stock. The Atlas now contains 502
entities and 1,432 named relations. The game graph has 497 entities, 1,435
edges, and 1,423 non-bookkeeping edges. Its component count remains four and
its isolated-node set is unchanged.

The lost species degree is real. `disappearance_of_the_elves`, `readers`, and
`the_dissident` fell from degree three to degree two and remain there. The
Shear Compact office at `glasswake` and Clarisant chapter at `sithari` supply
valid named Atlas neighbors. The attempted `kesh --depends_on--> resonance`
repair was invalid and has been removed. Removing the generic Farborn node
also exposed a real deficit at `deep_shear`. Validation passes; lint now reports
only `kesh` and `deep_shear` at nine Chronicle focus choices each. The focus
threshold was not weakened, and neither deficit is padded with a reusable type.

The veiled-kind distribution now contains 31 creatures and 29 NPCs instead of
16 generic species nodes. `species` was removed from the required Atlas hook
kinds, and the shared per-kind cap rose from 24 to 32 so correct named-instance
classification does not fail a quota written for the former shape.

The Encyclopedia now contains 70 public and internal entries. The reusable
preflight is `lorecraft/tools/atlas_removal_impact.rb`. Its saved projection for
this category is `build/glass-frontier/sapient-species-atlas-removal.json` and
records the immediate removal result before the three later Atlas relationship
repairs. Use the same tool to project and verify later category removals.

## Repair baseline before category review

At the repair baseline, the 53 migrated subjects existed independently in both catalogs. Each
original Atlas node is restored under its stable id with its original Atlas
relationships, and each reusable article lives in the Encyclopedia. Every
restored Atlas node declares its same-id Encyclopedia companion with `type_of`.
The Atlas graph contains no Encyclopedia entry or classification edge.

That restored world matched the pre-migration structural measurements: 509
Atlas entities, 1,471 named Atlas relationships, and all 86 playable locations
meeting the ten-choice Chronicle focus floor. The Encyclopedia contains 54
entries: 18 lifeforms, 14 technologies, 8 resources, 5 phenomena, 4 cultures,
3 roles, and 2 practices. At that point the eighteenth lifeform was the DM-only
Elves stub; it was not one of the 53 migrations. The later category migration
made Elves public and removed all six established species from the Atlas.

The migration no longer stores NPC classification twice. Thirty-one legacy
`species` strings and 28 legacy `culture` strings were removed. NPC species
use singular `type_of`; cultures and ordinary roles use `belongs_to` or the
equivalent Encyclopedia-kind shorthand. An undeclared string field whose name
is an Encyclopedia kind now fails while loading the DSL, and any remaining
legacy NPC `species` string fails validation. Declared Atlas fields that happen
to share a name, such as a settlement's textual `role`, remain Atlas facts.

All removed cross-namespace relationship, mixed fact, identity-source, and
Atlas selector syntax is gone. The simplified descriptive-identity contract
also required dropping 108 relation-local identity dictionaries; relation
ids, endpoints, verbs, prose, visibility, properties, and temporal bounds were
preserved. Character-origin ownership moved from the restored Atlas species
and cultures to their Encyclopedia companions.

## Finding

The implementation keeps Atlas and Encyclopedia entries in separate
registries and excludes Encyclopedia entries from the ordinary Atlas graph.
It then adds a second relationship system whose endpoints may belong to either
registry. The migration copied every old Atlas relationship touching a moved
entry into that system.

That is not a clean separation of the data sources. It is a copy of the old
Atlas graph in another relationship store, with Atlas and Encyclopedia joined
at 184 edges. The relationship records survive, but the Atlas topology does
not: the moved nodes and their edges no longer exist in the graph used by
Atlas traversal and Chronicle focus selection.

The corrected boundary is:

- Atlas owns the named-entity graph and its topology.
- Encyclopedia entries are reusable types and do not participate in Atlas
  relationships.
- No graph relationship crosses from Atlas to Encyclopedia or from
  Encyclopedia to Atlas.
- A particular Atlas entity may identify its reusable type through a dedicated
  attribute such as `type_of`. This is a namespaced reference value, not a
  graph edge.
- Reverse lookup from an Encyclopedia type to its Atlas instances is a derived
  index over that attribute, not a reciprocal relationship.
- An Encyclopedia-only relationship system should exist only if actual
  type-level uses justify it. The migrated Atlas edges do not supply that
  justification.
- The lifeform review applies this boundary to every migrated lifeform; its
  resolved mapping is recorded in the lifeform review ledger.

## Proposal conflict

The accepted game-side design correctly describes the Encyclopedia as a
separate catalog that does not add reusable material to the named-entity
graph. It also says Atlas and Encyclopedia require separate persistence,
relationship, lookup, and API namespaces.

The same design nevertheless defines `ReferenceEndpoint` with both `atlas`
and `encyclopedia` namespaces, exports cross-namespace reference
relationships, and proposes a dedicated `atlas_encyclopedia_relationship`
table. The initial Lorecraft implementation followed that part of the
proposal.

The clarified contract supersedes that part of the proposal: separate storage
is not sufficient when a relationship system still joins the two sources.
The type link belongs in an explicit attribute on the particular Atlas entry.

The implementation also went materially beyond the proposal:

- The proposal names 12 narrow reference relationship types. The DSL now
  declares 42.
- Thirty added types copy ordinary Atlas verbs such as `inhabits`,
  `depends_on`, `studies`, `caused`, `maintains`, and `operates_in`.
- The proposal intentionally omits temporal `since` and `till` values. The DSL
  accepts them, and 53 migrated relationships use them.
- The proposal intentionally omits Encyclopedia facts. Later kind-level schema
  work reasonably added facts to Encyclopedia entries, but it also added
  generic fact types that resolve either namespace and Atlas fact fields that
  merge Atlas edges with reference relationships. Those mixed mechanisms erase
  the source boundary.

Relevant game-side sources:

- [Encyclopedia reference catalog](../../the-glass-frontier/docs/design/encyclopedia-reference-catalog.md)
- [Encyclopedia integration plan](../../the-glass-frontier/ENCYCLOPEDIA-INTEGRATION-PLAN.md)

## Pre-repair implementation

### Separate entry storage

`Lorecraft::World` has independent `entities` and `encyclopedia_entries`
registries. Encyclopedia entries have their own query commands and their own
export bundle. They do not enter `World#relationships`, Atlas `connections`,
`path`, `graph`, or focus selection.

This part matches the corrected boundary.

### Cross-namespace relationship system

`ReferenceRelationship` stores two namespaced endpoints plus a verb, note,
audience, descriptive identity, and optional temporal bounds. The schema can
allow Atlas or Encyclopedia kinds independently at either endpoint.

The system is exposed through:

- top-level `reference_relation` declarations;
- Encyclopedia entry `associate` declarations;
- `reference page`, `reference associated`, and `reference match` queries;
- the exported `EncyclopediaBundle.relationships` collection;
- exact Atlas association scoring during Encyclopedia matching;
- Atlas fact fields configured with `include_references: true`.

This is a graph-style relationship system even though it is excluded from the
ordinary Atlas graph.

### Mixed fact resolution

The generic fact types `reference` and `references` accept an id from either
Atlas or Encyclopedia. A duplicate id in both registries is rejected as
ambiguous.

`relation_field(... include_references: true)` reads ordinary Atlas edges and
reference relationships together. Five kind or subkind fact fields use this
mode. Glass Frontier also has two direct mixed-reference fields:
`major_cultures` and `used_by`.

These mechanisms produce one fact surface by combining the two sources. A
specific field that is declared to target the Encyclopedia would fit the
corrected contract; a field that discovers its target namespace from a shared
id does not.

### Cross-namespace descriptive identity

Atlas identity-source declarations may target Encyclopedia kinds. Thirty-one
Atlas NPCs currently inherit descriptive identity through 62 Encyclopedia
assignments covering species, culture, and trade.

Identity inheritance is not an Atlas graph edge, but the implementation uses
a generic mixed-namespace resolver and rejects the same id existing in both
registries. This repeats the shared-identity problem. Species, culture, role,
and other reusable types should be explicit namespaced attributes rather than
targets discovered through a mixed resolver.

### Atlas identities in availability selectors

An Encyclopedia selector may contain `reference(:id)`. The resolver searches
both namespaces and rejects an id present in both. Twenty-three migrated
entries contain 37 selector terms naming exact Atlas entries.

This is not a graph edge, but it couples an Encyclopedia entry directly to an
Atlas identity. The normal applicability path should be Atlas-owned context
tags matched by Encyclopedia selectors. Exact Atlas selectors should be
removed unless a later use case justifies a distinct, explicitly namespaced
attribute.

### Prose links

The ordinary `ref` marker resolves Atlas or Encyclopedia entries without an
explicit namespace. Current prose contains 135 Atlas-to-Encyclopedia links and
118 Encyclopedia-to-Atlas links.

These are reader navigation rather than graph edges, so they need not be
forbidden with structural relationships. They still use ambiguous shared-id
resolution. If cross-catalog navigation remains, it should use explicit
namespaced markers or carry the target namespace in the marker.

## Measured pre-repair migration state

The current Glass Frontier world contains:

| Measure | Value |
|---|---:|
| Migrated Encyclopedia entries | 53 |
| Reference relationships | 247 |
| Atlas to Encyclopedia | 117 |
| Encyclopedia to Atlas | 67 |
| Encyclopedia to Encyclopedia | 63 |
| Relationships with temporal bounds | 53 |
| Relationships with descriptive identity | 7 |
| Relationships with notes | 247 |
| Declared reference relationship types | 42 |
| Added copies of Atlas relationship verbs | 30 |

Only five relationship records use one of the proposal's original 12 verbs;
all five use `practiced_by`. The remaining 242 use copied Atlas verbs. The
implemented reference graph is therefore not primarily a new type-level
ontology. It is the former Atlas edge set moved into another store.

### Atlas topology change

The pre-migration `HEAD` world and the current working tree measure as follows:

| Measure | Before | Current | Change |
|---|---:|---:|---:|
| Atlas entities | 509 | 456 | -53 |
| Named Atlas relationship instances | 1,471 | 1,224 | -247 |
| Atemporal Atlas graph relationships | 1,488 | 1,237 | -251 |
| Chronicle locations meeting the ten-choice floor | 86 | 55 | -31 |
| Missing one-hop focus choices | 0 | 45 | +45 |

The four additional lost atemporal relationships are derived composition
edges rather than named relationship instances.

The previous preservation audit compared the 247 old relationship tuples with
the 247 new reference-relationship tuples and found them textually equal. That
was the wrong invariant. It proved that verbs, directions, notes, dates, and
identity text were copied. It did not prove that graph ownership or topology
was preserved.

## Where the implementation went wrong

### Relationship preservation was mistaken for topology preservation

An Atlas relationship is not preserved merely because another store contains
the same verb and endpoint names. The migrated relationship no longer affects
Atlas degree, traversal, focus choices, neighborhood queries, or topology
reports. Its operational meaning changed even when its text did not.

### Migration drove the schema

When existing Atlas verbs did not fit the proposed reference vocabulary, the
schema was expanded to accept those verbs across either namespace. The correct
response was to classify each old edge by ownership:

- keep it between concrete Atlas entities;
- express a particular entity's reusable class through `type_of`;
- express Encyclopedia applicability through context tags;
- keep a justified type-level fact inside the Encyclopedia; or
- leave an unstructured statement in prose when no durable structured field
  is warranted.

Adding a second version of the Atlas verb made every old edge mechanically
convertible and concealed the missing ownership decision.

### Generic namespace discovery weakened separation

Facts, identity sources, availability terms, prose links, and renderers often
search both registries by the same id. The game-side plan explicitly requires
separate named resolution and permits the same slug in both stores. The
Lorecraft implementation instead requires shared ids to be globally
unambiguous in several important paths.

### Tests checked internal consistency rather than the contract

The validation and tests establish that reference endpoints exist, relation
types accept their endpoint kinds, visibility does not leak, temporal bounds
resolve, and exports agree with the in-memory model. They do not assert the
clarified invariants:

- no relationship crosses the namespace boundary;
- no Encyclopedia relationship is merged into an Atlas fact;
- Atlas topology remains equivalent after a type migration;
- type membership is an attribute rather than a graph relationship;
- identifiers are resolved within an explicit namespace.

## Correct target model

### Atlas

A concrete person, population, specimen, organization, vessel, device,
deposit, installation, incident, or other particular thing remains an Atlas
entity. It owns:

- Atlas relationships;
- temporal state;
- placement and routes;
- prominence and Chronicle eligibility;
- particular prose and descriptive identity.

When it instantiates reusable reference material, it declares a namespaced
attribute:

```ruby
artifact :particular_id do
  type_of :reusable_type_id
end
```

`type_of` is singular and names the entity's primary reusable type. Other
classifications use `belongs_to :encyclopedia_kind, :entry_id`; the
Encyclopedia-kind name is also shorthand, as in `culture :sitharian`. Both are
exported as Atlas attributes, excluded from graph degree and traversal, and
available for separate derived reverse lookups.

### Encyclopedia

An Encyclopedia entry owns the reusable description, kind-level fields,
prevalence, usage cues, variations, and context-based availability.

It does not name Atlas entities through relationships. It does not acquire
Atlas time, graph degree, placement, prominence, or focus eligibility.

An Encyclopedia-internal graph should be deferred until a concrete authoring
or retrieval need demonstrates that fields such as `variant_of`, `requires`,
or `made_from` need graph behavior. The 63 migrated Encyclopedia-to-
Encyclopedia relationships are not sufficient evidence because they were
copied mechanically from the Atlas.

### Applicability

Atlas entries describe their place, environment, population, and
infrastructure through Atlas context tags. Encyclopedia selectors match those
tags. A location does not gain a graph edge to every animal, device, practice,
or material that might appear there.

The primary reusable type of a particular Atlas entity is represented by
`type_of`. Other memberships use `belongs_to`. Applicability, primary type, and
membership remain separate questions.

### Species, culture, and descriptive identity

NPCs and character origins may identify species, cultures, and ordinary roles
through `type_of` or kind-qualified `belongs_to` attributes. These attributes
do not populate descriptive identity. Descriptive identity is only a local
dictionary of strings under keys declared by the Atlas or Encyclopedia kind;
the GM decides how classification affects portrayal.

## Engine correction status

The engine contract now enforces the intended boundary:

1. Atlas entities have one optional `type_of` target and repeatable,
   kind-qualified `belongs_to` memberships. Every target is a known,
   audience-compatible Encyclopedia entry; membership kind must match.
2. `World#encyclopedia_instances`, `World#encyclopedia_members`, and
   `reference page` derive separate reverse Atlas lists from those attributes.
3. Neither classification enters Atlas relationships, graph, path, or connections.
4. The reference-relationship schema, storage, validation, query, fact merge,
   and export surfaces have been removed.
5. The Encyclopedia has no internal relationship graph.
6. Encyclopedia kind fields are scalar `text`, `integer`, or `year` values.
   Atlas `entity` and `entities` facts remain Atlas-only.
7. Descriptive identity is a local string dictionary under keys declared only
   at kind level. Sources, inheritance, merges, overrides, relationship
   identity, and identity provenance have been removed. Classification never
   supplies identity. The same id may still exist independently in both stores.
8. Availability selectors accept context tags or explicit
   `encyclopedia_reference` values. They cannot target Atlas ids.
9. Prose uses `ref` for Atlas and `encyclopedia_ref` for Encyclopedia. Embeds
   resolve only within their owner's namespace.
10. Undeclared string attributes named after an Encyclopedia kind are rejected,
    identical memberships cannot be declared twice, and legacy NPC `species`
    strings fail validation.

The migrated Glass Frontier sources now compile against this contract. No
`reference_relation`, `include_references`, identity-source, mixed fact-type,
or Atlas selector declaration remains. Structural validation passes. Lint
reports the two measured Chronicle focus deficits at `kesh` and `deep_shear`.

## Lifeform review result

The lifeform review is complete. Ten reusable creature types now point to
distinct named Atlas animals, herds, colonies, or recorded populations. Navren
points to Noll's named cultivated stands. Farborn remains only in the
Encyclopedia and classifies seven named Atlas creatures through membership.
General morphology, behavior, handling, and variation remain in the reusable
articles; Atlas prose owns the particular population or present-day problem.
The exact mapping and graph measurements are recorded in
`worlds/glass-frontier/research/lifeform-encyclopedia-review.md`.
