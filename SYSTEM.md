# System Architecture

The technical systems that support this lore repository. This is a living document — update it when systems change.

Each world is authored as a **[Lorecraft](lorecraft/README.md) DSL** (Ruby) under `worlds/<id>/world/`. Lorecraft loads those files into an in-memory object graph with a real temporal model; markdown and the graph projection are *render targets*, not stores. There is no database. (Until 2026‑06 the truth layer was a Memgraph graph kept in sync with markdown by hand; that arrangement, and its Python tooling — `graph_cli.py`, `lint.py`, `wiki_gen.py`, `review.py` — has been retired.)

## Multiple Worlds

The engine is world-agnostic. `worlds.yml` at the repo root declares the tenants — id, title, status, and whether CI publishes the world's wiki — and names the default. `Lorecraft::Worlds` reads it; every command resolves exactly one world through `--world <id>`, `LORECRAFT_WORLD`, or that default.

A world load is two globs: `craft/schema/base.rb` first, then `worlds/<id>/world/**/*.rb`. The base declares the entity kinds, effect verbs and relation taxonomy every world shares; the world's own `schema.rb` adds its tags, section headings, and any relation that only means something in that setting. `schema do … end` blocks merge into one Schema object, so the two files compose without the engine knowing which is which.

A world marked `status: scaffold` has a schema and a placeholder timeline and no entities. `make check-all` skips those — a vacuous pass would read as coverage.

## Infrastructure

| Component | Location | Purpose |
|-----------|----------|---------|
| Lorecraft engine | `lorecraft/` (Ruby) | Loads a world, validates, queries time, renders |
| World manifest | `worlds.yml` | Which worlds exist, which is default, which publishes |
| GitHub Wiki | auto-published on push | Player-facing wiki for one world (currently the Glass Frontier) |

Requires Ruby 3.x. `gem install minitest` for the test suite.

## Object Model

```
World ── Schema     (kinds, relation taxonomy, effect verbs, tag/section vocab)
      ── Timeline   (ordered eras with fixed boundaries; CE year = absolute tick)
      ── Entity*    (id, kind, static attributes, owned prose, derives)
      ── Event*     (tick/span, effects, prose — addressable, page-bearing)
      ── Relation*  (named edges, promotable; otherwise edges come from effects)
```

- **Static attributes** are declared on the entity and never change (`title`, `tags`, `prominence`, `region`, `narrative_role`, `status`, `path`, …).
- **Dynamic state** (relationship edges, mutable attrs) is *never* stored — it is the fold of the event log at a query tick. `world.at(point).out(id, :verb)` replays history to the answer.
- The static/dynamic split is compiler-enforced: an effect touching a static attribute is a validation error.

## Time

Eras are declared in order with fixed boundaries; every `(era, year)` maps to one absolute integer tick. CE years *are* the ticks, so edge temporal bounds (`since:`/`till:`) need no conversion. `now` is the default query/render era. Each world declares its own eras in `worlds/<id>/world/timeline.rb`.

## Relationships

Edges are semantically typed against the schema taxonomy (`craft/schema/base.rb` plus the world's additions, 60+ types with `category` + `temporal` flags — LOCATED_IN, GOVERNS, CAUSED, OPERATES_IN, …). Unknown types are rejected by the validator; there are no generic/banned edges to police because only declared types load.

Edges are produced by event effects (`set`/`clear`/`transfer`) or by named `relate` instances; both carry an optional `[from, to)` interval and a `dm` flag. Temporal relations model ongoing states (a faction governs a place 2340–2355); non-temporal relations are inherent (PART_OF, ORBITS, CAUSED).

Prose carries inline bindings — `ref :id` (cross-link, resolved at render era), `rel :verb` (live target(s) of the owner's relation), `future "Name"` (placeholder for a thing with no entity yet). These are the successor to graph MENTIONS edges.

## Validation (`make validate`)

Hard invariants; raises on any violation:

- Unresolved `ref`/effect/`relate` target; unknown relation type; declared domain/range mismatch.
- Static/dynamic violation (effect sets a static attribute).
- Temporal causality (use of an entity before `create` / after `destroy`).
- `:one` cardinality with two live targets; mutually-exclusive relations live at once.
- Tag not in the world's declared vocabulary; non-canonical prose section; **DM-leak** (public prose referencing a DM-only entity).

## Lint (`make lint`)

Graded findings — errors / warnings / futures — over the in-memory graph:

| Check | Catches |
|-------|---------|
| DM-phrase leakage | "the truth is", "secretly", … in player prose |
| Stale future | `future "X"` where a written page `:x` exists |
| Prominence reach | renowned/mythic entry linking to a lower-prominence entity not in `prominence_xrefs` |
| Double-article / resonance vocab | "the The …"; non-standard "high/low-band" terms |
| DM `public_entry` | DM page missing its `public_entry` |
| Shell consistency | shell with a path; complete with none |
| Causal / PART_OF cycles | cycles in `causes` / `part_of` |
| Antisymmetry | A and B both `governs`/`leads`/… each other |
| Orphans / location spatial | complete entity with no edges; location with no spatial-hierarchy edge |

**Retired with the graph:** embedding-based semantic duplication (old L2/L3), archetype-gap reports, and the vector index — these required Memgraph + an embedding service and have no in-memory equivalent.

## Render targets

The **wiki is the only markdown output**, and it is generated by CI — never committed here.

- `make wiki WORLD=<id>` → GitHub wiki into `build/<id>/wiki`: flat `Title.md` with `[[wiki links]]`, authored `page`s (Home, …), generated **Tags / Timeline / Causality** pages, generated per-type indexes, sidebar, future stubs. Player audience only (DM, shells, and DM edges excluded). CI (`.github/workflows/wiki.yml`) runs this on push for the published world.
- `make graph WORLD=<id>` → node/edge JSON projection at a tick (the Memgraph-projection replacement).
- `lorecraft timeline <id> --world <world>` → life-of-entity event strip.
- A dir-by-type markdown renderer (`Render::Markdown`) also exists for ad-hoc export to `build/`, but is not part of the published pipeline.

Only one world can occupy a repository's GitHub wiki, so the others are validated but not published. When a second world has canon worth reading, this becomes a site build with a directory per world.

## Layout

```
worlds.yml             # the manifest — tenants, default, publish flags
worlds/<id>/
  world/               # SOURCE OF TRUTH for this world
    schema.rb          # this world's tags, sections, setting-specific relations
    timeline.rb        # eras (descriptions) — drives the generated Timeline page
    pages.rb           # authored `page` constructs (Home, …) — not entities
    <type>/<id>.rb     # one file per entity (kind → directory)
    _shells.rb _edges.rb # shell stubs; relationship edges
  guidance/            # this world's substitutions into craft/
  work-tracking/       # review status, comments, queue (per-world)
  research/            # audits and analysis of this world
craft/
  schema/base.rb       # kinds, relation taxonomy, effect verbs — loaded by every world
  *.md                 # world-agnostic writing craft
lorecraft/
  lib/lorecraft/       # engine: schema, timeline, entity, event, relation, page, worlds,
                       # resolver (fold), validator, linter, render/{markdown,wiki,graph,timeline}
  bin/lorecraft        # CLI
  tools/               # each_world.rb; import.rb, parity.rb (one-shot migration record)
  test/                # minitest suite
docs/                  # repo docs
build/<id>/            # generated output (gitignored)
```
