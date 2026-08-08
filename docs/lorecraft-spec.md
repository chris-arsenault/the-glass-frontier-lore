# Lorecraft — Specification (v0.1)

The design spec the engine was built from, kept as a record. `lorecraft/README.md`
describes the engine as it actually is; where the two disagree, the README wins.
Paths here predate the multi-world layout — content now lives under
`worlds/<id>/world/` rather than a single root `world/`.

A single Ruby internal DSL that is the **sole source of truth** for a narrative world.
No graph DB, no markdown on disk. Both are render targets. The world is an in-memory
object graph with a real temporal model; state is the fold of an ordered event log.

---

## 1. Core model

```
Schema        — declares entity types, relation types (with domain/range/rules),
                effect verbs, and the era timeline. Compiler authority.
Entity        — a node with a stable symbol id, static attributes, owned prose,
                and dynamic state derived by replaying events.
Relation      — a typed, directed (optionally symmetric), optionally temporal edge.
                Anonymous by default; promotable to a named, addressable instance.
Event         — occurs at an absolute tick; carries effects that mutate dynamic state.
                Drivers of all change. Owns prose.
Prose         — paragraph-level node (1→N), owned by an entity / relation-instance /
                event, optionally era-scoped, containing `ref`/`rel` bindings.
Timeline      — ordered eras with FIXED boundaries → every (era, year) maps to an
                absolute integer tick.
```

### State is split (compiler-enforced)
- **Static attributes**: declared on the entity. Constant (or with their own explicit
  intervals). NEVER targeted by event effects. e.g. `name`, `region`, `biology`.
- **Dynamic state**: NEVER set directly on an entity. Only ever changed by event
  `effects`. e.g. `controls`, `status`, `members`. Querying it = fold events ≤ T.

Setting dynamic state on an entity, or an effect touching a static attr → compile error.

### Genesis events
Initial dynamic state is bootstrapped by `genesis` events (sanctioned). They look like
normal events but require no narrative provenance and conventionally sit at era start.
This avoids forcing backstory for every standing fact.

---

## 2. Time

Eras are declared in order with fixed boundaries. `(era, year)` → absolute tick.
`now` is the default query time for all queries and renders.

```ruby
timeline do
  era :the_drift,        starts: 0,   length: 100   # ticks 0..99
  era :the_long_quiet,   length: 60                 # ticks 100..159
  era :the_reconnection, length: 40                 # ticks 160..199
  now era: :the_reconnection, year: 14              # tick 174
end
```

A point `{era: :the_long_quiet, year: 9}` → `100 + 9 = 109`.
Spans are `[from_tick, to_tick)` half-open intervals.

---

## 3. Schema

```ruby
schema do
  entity_type :faction, :location, :npc, :event_e, :artifact,
              :creature, :ship, :concept, :cosmology

  # relations
  relation :controls,
    domain: :faction, range: :location,
    temporal: true, cardinality: :many, inverse: :controlled_by
  relation :rival_of,
    domain: :faction, range: :faction,
    symmetric: true, temporal: true
  relation :member_of,
    domain: :npc, range: :faction,
    temporal: true, cardinality: :one, inverse: :members

  # effect verbs allowed inside events, and what they may touch
  effect :set        # set/replace a dynamic attr or temporal relation
  effect :clear      # end a temporal relation / unset dynamic attr
  effect :destroy    # entity ceases to exist after this tick
  effect :create     # entity begins to exist at this tick
  effect :transfer   # convenience: clear(from) + set(to) on a relation
end
```

Compiler validates every declaration + every effect against this schema:
domain/range, cardinality, symmetry (auto-creates inverse, flags contradictions),
temporal-only verbs on temporal relations, static/dynamic separation.

---

## 4. Entity declaration

```ruby
faction :sable_concord do
  # static
  name    "The Sable Concord"
  founded at: { era: :the_drift, year: 12 }
  tags    :salvage, :coalition

  # prose: paragraph-level, ordered, optionally era-scoped, bindings inline
  prose <<~MD
    The Concord rose from #{ref :ashfall_reach} salvage crews — a loose coalition
    that hardened into a polity over a single brutal decade.
  MD
  prose section: :history, at: { era: :the_reconnection }, <<~MD
    By the time the rings spoke again, the Concord #{rel :controls} held more
    glassreach than any rival had in living memory.
  MD

  # derived (entity-oriented): recomputed at query_time, not stored
  derive(:territory_count) { controls(at: query_time).count }
end

location :glasswright_quarter do
  name   "The Glasswright Quarter"
  region :ashfall_reach          # static relation-ish attr
end
```

No `controls` is declared on the entity — territory is a **consequence of events**.

---

## 5. Events mutate state

```ruby
# bootstrap standing facts without backstory
genesis :drift_settlement, at: { era: :the_drift, year: 12 } do
  effects do
    create :sable_concord
    set :sable_concord, controls: :ashfall_reach
  end
end

event :seizure_of_glasswright_quarter, at: { era: :the_long_quiet, year: 9 } do
  actor :sable_concord
  prose <<~MD
    The siege lasted forty days. When it ended the Quarter answered to the Concord.
  MD
  effects do
    set     :sable_concord, controls: :glasswright_quarter
    destroy :glasswright_quarter   # location gone after tick 109
  end
end

event :the_glasswright_war, type: :war,
      span: { from: {era: :the_long_quiet, year: 4}, to: {era: :the_long_quiet, year: 9} } do
  participants :sable_concord, :glasswright_guild   # ordered → war.participants[0]
  outcome :sable_concord, :victory
end
```

State-at-T = fold of every effect with `tick <= T`, applied in tick order
(ties broken by declaration order). `sable_concord.controls(at: :now)` replays
to the answer. Causality errors (effect references a not-yet-created or
already-destroyed entity at its tick) are raised during the fold.

---

## 6. Navigation & query (entity-oriented)

```ruby
world = Lorecraft.load("world/**/*.rb")

war = world[:the_glasswright_war]
war.participants[0].name              # => "The Sable Concord"
war.participants[0].controls          # at :now → [<Location ...>]
war.participants[0].controls(at: { era: :the_drift, year: 50 })  # historical

concord = world[:sable_concord]
concord.controls.map(&:name)
concord.territory_count               # derived
concord.rivals                        # inverse of rival_of, auto-provided
concord.prose(section: :history, at: :now)

# graph-ish traversal
world.query { from(:sable_concord).out(:controls).at(:now) }
world.query { events_touching(:glasswright_quarter) }
```

`a.b.0.name` style works because every relation accessor returns resolved
**objects** (ordered where the relation says so), never symbols/strings. A rename
of an entity id is one edit; all `ref`/`rel`/relation bindings resolve by symbol.

---

## 7. Named-when-needed relations

Anonymous unless the edge owns prose or is referenced; then promote:

```ruby
relate :concord_guild_rivalry, :rival_of, :sable_concord, :glasswright_guild,
       since: { era: :the_drift, year: 88 } do
  prose <<~MD
    What began as a contract dispute over salvage rights curdled into eighty years
    of sabotage, propaganda, and the occasional open street battle.
  MD
end

world[:concord_guild_rivalry]         # addressable, owns prose, referenceable
```

---

## 8. Validation pass (what the compiler rejects)

1. **Unresolved reference** — any `ref`/`rel`/relation/effect target with no matching id.
2. **Type constraint** — relation domain/range mismatch; effect verb misused.
3. **Static/dynamic violation** — dynamic state set on entity; effect touches static attr.
4. **Temporal causality** — entity used before `create`/`founded` or after `destroy`;
   event span outside any valid era; relation interval inverted.
5. **Symmetry/inverse contradiction** — A `rival_of` B but B `ally_of` A.
6. **Cardinality** — `:one` relation with two live values at the same tick.
7. **Dangling forward-ref at build** — referenced-before-defined is fine *within* a load;
   unresolved at end of load is an error (replaces `[future:]`).

---

## 9. Render targets

```ruby
world.render(:wiki, at: :now, out: "build/wiki")   # your existing dir-by-type layout,
                                                    # cross-links, per-type index.md
world.render(:graph, format: :json)                # node/edge projection for inspection
world.render(:timeline, entity: :glasswright_quarter)  # life-of-entity event strip
```

`render(:wiki)` assembles each entity page by collecting its owned prose paragraphs in
declared order, resolving `ref`/`rel` to links/labels **at the render era**, and walking
relations live at that era. The on-disk markdown you have today becomes a pure artifact.

---

## 10. File / module layout

```
lorecraft/                      # the engine (gem-shaped)
  lib/lorecraft.rb              # entry: Lorecraft.load / .define
  lib/lorecraft/schema.rb       # schema DSL + registry
  lib/lorecraft/timeline.rb     # era table, tick conversion
  lib/lorecraft/entity.rb       # entity object, static attrs, prose, derive
  lib/lorecraft/relation.rb     # relation defs + instances (named/anon)
  lib/lorecraft/event.rb        # event + effects DSL
  lib/lorecraft/world.rb        # registry, two-pass load, query API
  lib/lorecraft/resolver.rb     # temporal fold: state-at-T
  lib/lorecraft/validator.rb    # the rejection rules in §8
  lib/lorecraft/render/wiki.rb
  lib/lorecraft/render/graph.rb
world/                          # YOUR content (the only source of truth)
  schema.rb
  timeline.rb
  factions/sable_concord.rb
  locations/glasswright_quarter.rb
  events/glasswright_war.rb
build/                          # generated, gitignored
```

---

## 11. Open / deferred (not blocking v0.1)
- Fuzzy era boundaries (you chose fixed — locked).
- Multi-world / variant timelines (branching what-ifs).
- Incremental recompile / caching for large worlds.
- FalkorDB re-introduction as an *export* target (dropped for now).