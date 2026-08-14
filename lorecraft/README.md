# Lorecraft

Lorecraft is the Ruby DSL and query engine behind Tsonu Canon. The DSL stores a
world's readable prose, entities, facts, relationships, time, and editorial
state in one versioned source. Loading those files produces an in-memory object
graph; the public reader, private editorial bundle, Markdown, wiki pages, and
graph JSON are generated views.

## Effective context for LLMs

Lorecraft lets a model work specifically in a world it was not trained on. It
does this at inference time, without changing model weights:

1. The repository instructions identify the world and its local guidance.
2. Command help describes the available queries when they become relevant.
3. Bounded commands find an id, load one authoritative guide, inspect one
   entry, or answer one graph or editorial question.
4. Stable ids and typed edges let the model move sideways through the corpus
   instead of following only page order or keyword similarity.
5. Validation rejects resolvability, type, time, vocabulary, and audience errors
   after the model edits the source.

This is a context-management pattern, not a larger context window. The useful
gain comes from progressive disclosure and executable constraints: the model
loads fewer unrelated passages, learns the local ontology as needed, and gets a
precise error when it violates part of that ontology.

Raw Markdown remains valuable as an output. As a canonical store, however, a
directory of pages cannot by itself distinguish a factual relationship from an
editorial link, compute state at a date, enforce a controlled field, prevent a
public page from naming DM truth, or keep a transcluded fact under one owner.
Lorecraft represents those distinctions before it renders Markdown.

The guarantee is bounded. Relation and fact schemas catch declared structural
mistakes; selected linters catch known prose defects. Free prose can still be
wrong, and entity bodies allow auxiliary static attributes when a world needs
them. Human review and the world's guidance remain part of the system.

## Just-in-time documentation

The CLI documents itself in task-sized topics:

```sh
ruby lorecraft/bin/lorecraft help             # route a task to a command
ruby lorecraft/bin/lorecraft help model       # context architecture
ruby lorecraft/bin/lorecraft help workflow    # bounded inspection sequence
ruby lorecraft/bin/lorecraft help authoring   # entry and edge example
ruby lorecraft/bin/lorecraft help schema-authoring # declaring kinds, facts, relationships
ruby lorecraft/bin/lorecraft help markers     # inline composition and dates
ruby lorecraft/bin/lorecraft help entry       # one entry and its local queries
ruby lorecraft/bin/lorecraft help time        # state, effects, and computed spans
ruby lorecraft/bin/lorecraft help audience    # public, DM, and editorial boundaries
ruby lorecraft/bin/lorecraft help composition # prose ownership and transclusion
ruby lorecraft/bin/lorecraft help review      # questions, logs, and human review
ruby lorecraft/bin/lorecraft help search      # discover an entry id
ruby lorecraft/bin/lorecraft help schema      # live schema command arguments
ruby lorecraft/bin/lorecraft help page        # one command in detail
```

The help text is executable documentation: tests assert that every advertised
command has a help entry. It complements the longer reference in
[`docs/lorecraft-spec.md`](../docs/lorecraft-spec.md).

For an unfamiliar world, start with `worlds`, then read `guide world` and the
one guide relevant to the task. Use `search` to resolve an unknown id, `page` to
see its current reader form, and `schema`, `connections`, or `path` only when
the edit depends on those dimensions. Read the reported canonical source before
editing and finish with `make check WORLD=<id>`. Search results and generated
views locate canon; they do not replace it.

## Choosing a query

Every content/query command selects one world through `--world ID`,
`LORECRAFT_WORLD`, or the default in `worlds.yml`. `help` does not load a world;
`worlds` lists the manifest.

| Need | Command | Result |
|---|---|---|
| discover worlds | `worlds` | manifest ids and status |
| find an entry id | `search QUERY` | ranked ids, types, sources, and summaries |
| inspect the live ontology | `schema kind NAME` / `schema relation NAME` | allowed facts and edges |
| read authoritative guidance | `guide list` / `guide NAME` | one current craft or world Markdown source |
| choose work | `queue [ID]` | global or entry-scoped questions and findings |
| read one resolved entry | `page ID` | reader-shaped Markdown on stdout |
| inspect its local graph | `connections ID` | typed neighbors, intervals, and source paths |
| connect two known entries | `path FROM TO` | bounded route over live typed edges |
| inspect one entity's changes | `timeline ID` | chronological effect strip |
| recover settled editorial reasoning | `log ID` | non-reader entry history |
| find missing structured facts | `facts [ID]` | global coverage or one entry's values |
| measure local graph coverage | `topology` | typed degree and thin entries |
| test dependence on famous hubs | `web` | components after prominence cuts |
| audit drafting and review | `provenance [ID]` | global or entry-owned block provenance |
| enforce hard invariants | `validate` | structural errors, nonzero on failure |
| enforce assembled quality rules | `lint` | errors, warnings, futures, span inventory |
| inspect corpus size | `stats` | entity, moment, edge, effect, and kind counts |
| project graph data | `graph [FILE]` | JSON intervals and state at a year |
| project directory Markdown | `render DIR` | compatibility/inspection tree |
| project flat reader Markdown | `wiki DIR` | optional player-only wiki export |

Run `ruby lorecraft/bin/lorecraft help COMMAND` for exact arguments and
audience behavior. Bounded queries that list `--format` can emit `text` for a
person or native `json` for another tool; the JSON comes from the same typed
result, not from parsing the text report. The normal repository gate is:

```sh
make check WORLD=glass-frontier
```

`connections` returns every historical interval touching one entity and marks
which rows are live at the selected year. `path` traverses only live rows in
either direction while preserving each edge's authored direction. It excludes
`active_during`, `emerged_during`, `created_during`, `disappeared_during`, and
`mentions`, whose shared structural nodes would create misleading shortcuts.

### Structured diagnostics

`validate --format json` and `lint --format json` emit schema version 1. Both
return `status` and `diagnostics`; lint also returns counts for `error`, `warn`,
`future`, and `info`. Every immutable diagnostic has `severity`, `code`,
`message`, `object_path`, `source_file`, `source_line`, `repair_instruction`,
`help_topic`, and `details`. Source paths are repository-relative when the
source belongs to the repository, and source lines identify the owning DSL
declaration.

Validation findings and error-level lint findings exit 1. A Ruby parse or world
load failure exits 2 and still returns the diagnostic envelope when JSON was
requested. The Ruby APIs are additive: `validation_diagnostics` and
`lint_diagnostics` provide typed records, while `validate` and `lint` retain
their established string and finding results. Ruby callers may pass `root:`;
`source_file` is relative to that root when possible. The CLI always uses the
repository root.

## Loading and querying

```ruby
target = Lorecraft::Worlds.find("glass-frontier")
world = Lorecraft.load(target.glob, prelude: target.prelude)

world.validate!
world.entity(:coremark)
world.at(:now).out(:coremark, :operates_in)
world.at(2340).in(:the_shear, :operates_in)
world.elapsed(:the_glassfall, :now).approximate
world.render(:graph, at: 2340, audience: :player)
```

`Lorecraft::Worlds` reads the repository manifest and supplies the world's DSL
glob plus the shared schema prelude. `World.load` evaluates the prelude first,
then the world's schema and timeline, then the remaining files in sorted order.
The order makes same-year effects deterministic.

## Authoring an entity

```ruby
npc :inez_bell do
  name "Inez Bell"
  subkind :official
  tags :governance, :legibility
  prominence :marginal
  occupation "Municipal seal and voter-roll keeper"

  prose <<~PROSE
    Bell works at #{ref :cairo_ridge, "Cairo Ridge"}.
  PROSE

  cards "Continue reading" do
    card :cairo, "The city whose records Bell keeps."
  end

  question "Where was Bell born?", raised: "2026-08-12"
  log "2026-08-12 — Moved her workplace to the ridge after the retreat entry established it."
end

relate :bell_at_ridge, :located_in, :inez_bell, :cairo_ridge
```

The entity owns constant facts and prose. The relation is a separate, typed
world fact. A card is an authored reading path and does not create a factual
edge. `question` records unresolved work; `log` records settled editorial
history and never renders for a reader.

Production worlds require a declared subkind. Common facts come from the shared
kind and subkind schema; a world can extend them, and a single entity can append
an exceptional `custom_fact`. Do not fill a missing expected fact with a guess
or an `unknown` placeholder. `facts` reports the absence outside reader prose.

## Facts and schema

```ruby
extend_kind :npc do
  field :born, type: :year
  calculated :age, from: :born, calculate: :elapsed_years
  relation_field :based_in, relation: :located_in, cardinality: :many

  subkind :official do
    field :jurisdiction, type: :text, expected: false
  end
end

relation :located_in,
  category: :spatial,
  temporal: true,
  domain: :npc,
  range: :geographic_location
```

Fact types are `text`, `integer`, `year`, `entity`, and `entities`. Fields can
read an authored value, derive a supported calculation, or query incoming or
outgoing typed relationships at the selected year. Subkind fields follow kind
fields and can replace a broad definition with a narrower one. A subkind may
use `omit_facts :field_name` when that inherited field does not apply to any
member of the narrower class. A missing value is not a reason to omit a field.

Relations always have a declared name and category. They may also declare
domain, range, cardinality, temporal metadata, symmetry, an inverse name, and
mutual exclusions. The current validator enforces known types, banned types,
declared domain/range, `:one` cardinality, and exclusions. Symmetry and inverse
are exported metadata; authors still declare the stored direction explicitly.

## Time and change

```ruby
timeline do
  era :the_quiet_conquest, starts: 2040, length: 12
  era :the_unified_calm, length: 16
  era :the_present_order, length: 40
  now year: 2090
end

genesis :root_in_china, at: 2052 do
  effects { set :the_great_root, governs: :connected_china }
end

moment :office_moved, at: 2082, of: :inez_bell do
  prose "Bell carried the municipal seal uphill."
  effects { transfer :located_in, from: :cairo, to: :cairo_ridge, subject: :inez_bell }
end
```

Absolute years are the shared ticks. An era gives a named range over them.
`genesis` establishes baseline state; `moment` records a dated change and may
own prose. Effects `set`, `clear`, `create`, `destroy`, and `transfer` fold in
date and declaration order. Static entity attributes cannot be changed by an
effect.

Named `relate` declarations lower to the same set/clear model. `since:` and
`till:` use half-open `[from, to)` intervals. A relation with no `since:` begins
at the world's first timeline year.

## Inline markers

```ruby
#{ref :cairo_ridge, "Cairo Ridge"}          # link a known node
#{rel :located_in}                          # live targets at render time
#{future "North Levee Office"}              # named thing with no entry
#{embed :cairo_ridge, :history}             # reuse owned prose
#{elapsed :the_glassfall, ago: true}         # exact span from timeline facts
#{elapsed :the_glassfall, approx: true}      # rounded words
#{year :the_glassfall}                       # absolute year
#{duration 80}                               # unanchored length in words
```

Markers defer resolution until the engine knows the world, year, format, and
audience. `ref` must resolve. `future` deliberately does not and enters the
future inventory. `embed` creates a derived graph edge and is rejected when the
target is missing, a shell, empty in that section, cyclic, or hidden from the
owner's audience. Computed time markers keep arithmetic out of prose.

## Audience and provenance

`dm!(public_entry: :id)` marks hidden truth and names the public entry it
extends. The public reader and wiki exclude DM entities, DM blocks, DM edges,
non-reader kinds, and shells. Other projections document their audience filter
separately. Validation rejects public entity, card, fact, embed, and
authored-page references to DM-only entities.

An entity can declare `reviewed "YYYY-MM-DD"`; a prose or card block can declare
`drafted_by:` and override `reviewed:`. The world supplies
`drafted_by_default`. `provenance` compares those declarations with git history,
so a review stops covering prose changed afterward. Never write a human review
date on that person's behalf.

For source-backed interactive review, follow the
[local review app guide](../tools/review-app/README.md). It documents the
trusted-loopback boundary, revision checks, and permitted declarations.

## Generated targets

- `make site-data` builds `build/site` for players and `build/site-internal` for
  authenticated editorial access. The public bundle never contains questions,
  entry logs, provenance, missing expected facts, or DM entries.
- `make wiki WORLD=<id>` builds a flat, player-only Markdown export with
  authored pages, entry pages, indexes, tags, timeline, causality, and sidebar.
- `graph` emits node and relationship intervals as JSON. `live_at_render` marks
  state at the requested year.
- `render` emits a directory-shaped Markdown compatibility view. Its default
  audience is `all`; pass `--audience player` before sharing it.

Generated output under `build/` is gitignored and never canonical.

## Layout

```text
lorecraft/bin/lorecraft             command dispatcher
lorecraft/lib/lorecraft/            model, queries, checks, help, renderers
lorecraft/lib/lorecraft/review_editor.rb  safe editorial mutation coordinator
lorecraft/lib/lorecraft/source_edit.rb    narrow Prism source edits
lorecraft/test/                      Minitest suite and smoke world
lorecraft/tools/build_site.rb        multi-world public/private data build
lorecraft/tools/each_world.rb        active-world Make target runner
lorecraft/tools/review_api.rb        JSON bridge for the local review app
lorecraft/tools/import.rb            retained one-shot migration utility
lorecraft/tools/parity.rb            retained migration parity utility
tools/review-app/                     loopback-only local review client and server
craft/schema/base.rb                 shared kinds, fields, effects, relations
worlds.yml                           world manifest and default
worlds/<id>/world/                   canonical world DSL
```
