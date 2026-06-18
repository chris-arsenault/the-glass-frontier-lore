# Lorecraft

A Ruby internal DSL that is the **single source of truth** for the Glass Frontier
world. No graph database, no markdown-on-disk as the store — the world is an
in-memory object graph with a real temporal model, and markdown + the graph
projection are *render targets*.

This replaces the previous Memgraph + `graph_cli.py` + prose-on-disk arrangement,
which required keeping prose and a separate graph in sync by hand.

## Why

- **One source of truth.** Entities, prose, and relationships live in one place.
  No dual-write, no "every prose change must be accompanied by a graph update,"
  no snapshot/restore ritual around an external database.
- **Real time.** State is the fold of an ordered event log. `controls(at: …)`
  for any era falls out for free; history is queryable, not narrative-only.
- **Static vs dynamic, enforced.** Constant facts are declared on the entity;
  anything that changes is changed only by event effects. The compiler rejects
  violations.
- **Forward-refs resolve or fail.** A `ref` to a missing entity is a load-time
  error; `future("Name")` is the explicit, non-erroring placeholder for shells.

## Quick start

```ruby
world = Lorecraft.load("world/**/*.rb")
world.validate!                                   # spec §8 + repo rules
world.at(era: :the_accord, year: 5).out(:coremark, :operates_in)
world.render(:markdown, out: "build/tree")        # regenerate the wiki tree
world.render(:graph)                              # JSON node/edge projection
```

CLI:

```
ruby lorecraft/bin/lorecraft validate
ruby lorecraft/bin/lorecraft render build/tree [--audience player] [--at 2435]
ruby lorecraft/bin/lorecraft graph [out.json]
ruby lorecraft/bin/lorecraft timeline the_glassfall
ruby lorecraft/bin/lorecraft stats
```

## Authoring

```ruby
faction :coremark do
  name "Coremark"
  tags :trade, :salvage
  prominence :renowned
  prose <<~PROSE
    The largest salvage operator in #{ref :the_shear}, Coremark runs
    industrial extraction the smaller crews can't match.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    ...
  PROSE
  derive(:holdings) { |state| state.out(:coremark, :operates_in).size }
end

genesis :rekindling_baseline, at: { era: :the_rekindling, year: 0 } do
  effects { set :coremark, operates_in: :the_shear }
end

event :the_silent_bloom, at: { era: :the_silent_bloom, year: 0 }, type: :incident do
  prose "An industrial accident tore reality across the mid-drift habs."
  effects { create :bloom_zones }
end
```

- **Prose bindings:** `ref :id` (cross-link, resolved at render era), `rel :verb`
  (the live target(s) of one of the owner's relations), `future "Name"` (shell
  placeholder → `[future:Name]`).
- **Time:** CE years are absolute ticks; eras have fixed boundaries (see
  `world/timeline.rb`). `now` is the default query/render era.
- **Visibility:** `dm!(public_entry: :x)` marks a hidden-truth entity; the player
  audience excludes it and the validator forbids public prose from referencing it.

## Layout

```
lorecraft/
  lib/lorecraft/        engine: schema, timeline, entity, event, relation,
                        resolver (fold), validator, render/{markdown,graph,timeline}
  bin/lorecraft         CLI
  tools/import.rb       one-shot migration: markdown + graph snapshot → world/
  tools/parity.rb       round-trip check: render world/ and diff vs the originals
  test/                 minitest suite (+ smoke.rb end-to-end demo)
world/                  THE CONTENT — the only source of truth
  schema.rb timeline.rb <type>/<id>.rb _shells.rb _edges.rb
build/                  generated artifacts (gitignored)
```

## Migration status

`tools/import.rb` reproduces the entire current corpus: **71/71 entity pages
round-trip** (frontmatter, prose, sections, and cross-links all preserved — see
`tools/parity.rb`), plus 51 shell stubs and 183 typed relationship edges pulled
from the graph snapshot. The Memgraph database and `graph_cli.py` are no longer
required to author or build the world.

Not yet ported (follow-ups): per-type `index.md` generation, the hand-written
meta pages (Home/Timeline/Tags/Design-Principles/World-Seeds), and the GitHub
`[[wiki]]` flattening — all downstream of the markdown render and unblocked by it.
