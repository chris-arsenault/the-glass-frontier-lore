# System Architecture

Tsonu Canon stores each world as a Lorecraft DSL under
`worlds/<id>/world/`. Lorecraft loads those files into an in-memory graph and
timeline, answers bounded queries, validates edits, and generates every reader
or editorial artifact. There is no canonical database or Markdown tree.

## Context architecture

The system increases an LLM's effective context by controlling what enters the
working prompt and by making important constraints executable. It does not
fine-tune the model or change its context-window size.

```text
world guidance + canonical DSL
              │
              ▼
    loader ── schema ── timeline
              │
              ▼
       in-memory World
        │      │      │
        │      │      └── validate/lint feedback
        │      └───────── page/timeline/facts/queue/log
        └──────────────── graph/topology/web/provenance
              │
              ▼
 public reader · private editorial data · optional Markdown exports
```

This shape has four useful properties:

- **Progressive disclosure:** command help routes a task to one small query,
  such as one rendered entry or one entity's effect history.
- **Non-linear access:** stable ids and typed relationships support traversal by
  location, membership, cause, dependency, time, or another declared meaning.
- **Context boundaries:** generated artifacts, unresolved editorial questions,
  historical logs, and DM knowledge have distinct channels and audiences.
- **Specific feedback:** schema violations name the invalid id, relation, fact,
  date, vocabulary value, or audience crossing.

A raw Markdown wiki can render Lorecraft output, but pages and links alone do
not carry these distinctions. The public site and wiki remain views because
letting a generated page become an input would reintroduce duplicate facts and
stale derived context.

Lorecraft does not type or verify every sentence. It enforces declared facts,
relationships, timelines, vocabularies, provenance shapes, and selected prose
rules. Entity bodies retain extensible static attributes, and free prose still
requires world guidance and human review.

## Multiple worlds

`worlds.yml` declares each tenant's id, title, and status and selects the
default. Content/query commands resolve exactly one world through `--world
<id>`, `LORECRAFT_WORLD`, or that default. Help loads no world.
`Lorecraft::Worlds` locates the manifest by walking upward from the current
directory.

A load evaluates `craft/schema/base.rb`, then the world's `schema.rb` and
`timeline.rb`, then the other `world/**/*.rb` files in sorted path order. Schema
blocks compose into one `Schema`. The shared file owns setting-independent
kinds, fact fields, effects, and relationship types; a world adds controlled
tags, section names, fields, banned phrases, and setting-specific relations.

A world marked `scaffold` has no canon. `make check-all` and `make site-data`
skip it so an empty world cannot appear to have passed a content gate.

## Runtime model

```text
World ── Schema              kinds, subkinds, facts, relations, vocabularies
      ├─ Timeline            fixed era ranges and the present year
      ├─ Entity*             static facts, prose/cards, questions, logs
      ├─ Moment*             dated prose and state-changing effects
      ├─ RelationInstance*   named edges with optional intervals and prose
      └─ Page*               authored reader pages outside the entity graph
```

Static entity attributes do not change through history. Dynamic attributes and
live relationships are the fold of ordered effects through a query year.
`world.at(2080)` returns an immutable `State` with `out`, `in`, `attr`, and
`exists?` queries. Same-year effects use author sequence and deterministic load
order as tie-breaks.

Entities exist across the whole timeline unless `create` and `destroy` effects
narrow their interval. Genesis moments establish baseline state. Ordinary
moments record change and may place prose on an entity's page. Named `relate`
declarations lower to the same set and clear effects used by moments.

## Typed schema

Kinds identify the broad class of a node. Required subkinds provide the concrete
class used by reader fact cards. Fact definitions compose from kind, subkind,
and one-entry custom fields:

- attribute facts read canonical values from the entity;
- relationship facts query typed edges at the render year;
- calculated facts derive values such as age or era period from canonical dates.

Fact types are text, integer, year, entity, and entities. Missing expected facts
do not produce public placeholders; `make facts WORLD=<id>` and the private
editorial bundle report them.

Every relationship has a declared name and category. It may also constrain
domain, range, cardinality, mutual exclusion, and temporal meaning. Validation
rejects unknown types, types declared as banned, domain/range mismatches,
overlapping `:one` targets, and exclusive relations held together. Symmetry and
inverse names are exported metadata; stored traversal follows the declared edge
direction.

The schema also controls tags, non-main prose sections, prominence levels,
authoring statuses, provenance values, and per-world banned phrases. Auxiliary
entity attributes remain open by design and should become schema facts when a
second entry needs the same field.

## Prose composition

Prose stays readable Ruby text and uses deferred inline markers:

- `ref` resolves a known entity or authored path;
- `rel` renders current targets of one typed outgoing relationship;
- `future` records a named entity that has not been written;
- `embed` transcludes prose owned by another entity and derives an `embeds` edge;
- `elapsed`, `year`, and `duration` centralize time arithmetic and wording.

Markers resolve only after the engine knows the world, output format, audience,
and year. Validators use the same marker dispatch as renderers, so a new marker
must define behavior for every resolver or fail loudly.

Cards are authored navigation with stable order and descriptions. They do not
assert a world relationship. A factual connection must still use a typed edge.

## Just-in-time query surfaces

`ruby lorecraft/bin/lorecraft help` groups commands by task. The main bounded
views are:

| Question | View |
|---|---|
| What worlds can I work on? | `worlds` |
| What needs attention? | `queue [ID]` |
| What does one reader see? | `page <id>` |
| What changed this entity? | `timeline <id>` |
| Why did this entry change? | `log <id>` |
| Which structured facts are absent? | `facts [ID]` |
| Which entries lack local graph support? | `topology` |
| Does the graph survive without famous hubs? | `web` |
| Which machine-drafted prose lacks a current human read? | `provenance [ID]` |

Broader projections such as `graph` and `stats` remain available when a task
needs whole-world structure. A normal edit should not begin with the widest
projection simply because it exists.

## Validation and lint

`make validate WORLD=<id>` enforces hard invariants:

- ids used by prose, cards, facts, effects, pages, and named edges resolve;
- public entities and pages do not name or embed DM-only entities;
- relationships with DM-only endpoints carry the DM flag;
- relation types, banned categories, domain/range, cardinality, and exclusions;
- static attributes are not changed by effects;
- entity existence and effect use are temporally causal;
- tags, prominence, subkinds, fact types, sections, statuses, and provenance
  values follow their declared vocabularies;
- narrative roles appear only on NPCs and use `viewpoint` or `titan`.

`make lint WORLD=<id>` runs assembled quality checks. Errors cover defects such
as stale futures, required fact-card gaps, banned phrases, DM metadata gaps,
embed cycles, and impossible shell state. Warnings identify prominence reach,
stale question anchors, antisymmetry, orphans, and missing spatial hierarchy.
Futures inventory unwritten names and dates. Informational findings identify
hand-typed spans that may need timeline markers.

`make check WORLD=<id>` runs both. `make check-all` runs both for every active
world.

## Render targets

Generated output is disposable and gitignored.

- `make site-data` writes `build/site` and `build/site-internal`. The public
  bundle contains reader-visible entries, pages, facts, graph, chronology,
  search material, route metadata, and social assets. The internal bundle adds
  questions, entry logs, provenance, missing expected facts, and editorial
  records for DM entries.
- `make reader-build` embeds the public bundle in the production Vite build at
  `apps/web/dist`.
- `make wiki WORLD=<id>` writes an optional flat player wiki with entry pages,
  authored pages, indexes, tags, timeline, causality, and sidebar.
- `make graph WORLD=<id>` writes node and relationship-interval JSON.
- `render` writes a directory-shaped Markdown compatibility view. Its default
  audience is `all`; callers must select `player` before sharing it publicly.

The public React reader and wiki exclude DM entities, DM blocks, DM edges,
non-reader kinds, and shells. Graph and raw Markdown projections have their own
audience behavior documented by `help graph` and `help render`.

## Editorial boundary

CloudFront serves the React application and public bundle from S3. Private
editorial JSON lives in a separate S3 bucket. The browser uses Cognito
authorization-code PKCE and sends its ID token to `api.canon.tsonu.com`; the
shared ALB validates the token before invoking the Rust editorial Lambda. The
Lambda reads only the requested editorial object and returns it with private,
no-store caching.

OpenGraph rendering uses the exact public route manifest generated by
Lorecraft. The shared OpenGraph Lambda can read the public site bucket and has
no access to editorial data.

## CI and deployment

`.github/workflows/ci.yml` runs the Lorecraft tests, checks every active world,
and builds public and private site data. The application job then delegates to
the shared Ahara workflow, which builds and deploys the repository stack. The
GitHub wiki export is available locally but is not the deployed publication
path.

## Layout

```text
worlds.yml                    world manifest and default
worlds/<id>/
  CLAUDE.md                   setting premise and narrowed rules
  guidance/                   setting-specific substitutions into craft
  world/
    schema.rb                 tags, fields, phrases, setting relations
    timeline.rb               eras and present year
    pages.rb                  authored non-entity reader pages
    <kind>/<id>.rb            canonical entities
    _edges*.rb                named typed relationships
craft/
  schema/base.rb              shared executable schema
  *.md                        shared writing craft
lorecraft/
  bin/lorecraft               CLI and help dispatcher
  lib/lorecraft/              model, queries, checks, and renderers
  tools/                      site build and retained migration utilities
  test/                       unit and smoke tests
apps/web/                     public reader
backend/editorial-api/        authenticated editorial API
infrastructure/terraform/     site, identity, storage, and API deployment
build/                        generated artifacts
```
