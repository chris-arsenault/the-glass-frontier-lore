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
world guidance ─────────────────────── guide
       +
canonical DSL
       │
       ▼
loader ── schema ── timeline
       │
       ▼
in-memory World
  │      │      │
  │      │      └── validate/lint feedback
  │      └───────── search/page/chronicle/era-narrative/facts/queue/timeline/log
  └──────────────── schema/connections/path/placement/topology/web/provenance
       │
       ▼
graph/stats · public reader · private editorial data · Markdown exports
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

A world marked `scaffold` is not published. It may contain only a schema and
timeline or staged migration work. `make check-all` and a normal
`make site-data` skip it so unfinished content cannot appear to have passed the
publication gate. `SITE_WORLD=<id> make site-data` builds one named world,
including a scaffold, for a local reader preview.

## Runtime model

```text
World ── Schema              kinds, subkinds, facts, relations, vocabularies
      ├─ Timeline            fixed era ranges, unit, and present point
      ├─ SpatialFrame*       fixed coordinate systems and their nesting
      ├─ Entity*             static facts, positions, route paths, prose/cards
      ├─ Moment*             dated prose and state-changing effects
      ├─ RelationInstance*   named edges with optional intervals and prose
      ├─ EventRecord*        compact canonical source events
      ├─ NarrativeDocument*  chronicles and era narratives outside the graph
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
domain, range, cardinality, mutual exclusion, temporal meaning, and typed edge
properties. Validation rejects unknown types, types declared as banned,
domain/range mismatches, invalid property values, overlapping `:one` targets,
and exclusive relations held together. Symmetry and inverse names are exported
metadata; stored traversal follows the declared edge direction.

Spatial frames define fixed schematic polar or surface coordinates. Entities
may carry one position per frame, including polar offsets from another entity.
A route entity may declare local bends and several named paths over positioned
entity anchors. Validation checks frame nesting, coordinate bounds, anchor
resolution, cycles, and public-to-DM references. No frame models time or derives
orbital mechanics.

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
| Which craft or world instructions apply? | `guide list`, then `guide <name>` |
| What is this subject's stable id? | `search <query>` |
| Which types and values will validation accept? | `schema kind <name>`, `schema relation <name>`, `schema frame <name>`, `schema tags`, or `schema sections` |
| What needs attention? | `queue [ID]` |
| What does one reader see? | `page <id>` |
| What does an accepted chronicle say? | `chronicle <id>` |
| How does an era account use its chronicles? | `era-narrative <id>` |
| What directly touches this entry? | `connections <id>` |
| How do two entries connect now? | `path <from> <to>` |
| What changed this entity? | `timeline <id>` |
| Why did this entry change? | `log <id>` |
| Which structured facts are absent? | `facts [ID]` |
| Which places have fixed positions and paths? | `placement [ID]` |
| Which entries lack local graph support? | `topology` |
| Does the graph survive without famous hubs? | `web` |
| Which machine-drafted prose lacks a current human read? | `provenance [ID]` |

Broader projections such as `graph` and `stats` remain available when a task
needs whole-world structure. A normal edit should not begin with the widest
projection simply because it exists.

Bounded queries expose `--format text|json` when another tool needs typed data.
Their JSON is serialized from the same typed result rather than recovered from
the human-readable report. Validation and lint serialize `Diagnostic` records;
other bounded queries serialize their query model. `graph` is already a JSON
projection and does not use that selector.

## Validation and lint

`make validate WORLD=<id>` enforces hard invariants:

- ids used by prose, cards, facts, effects, pages, and named edges resolve;
- chronicle entities, events, relationships, eras, annotations, and media anchors resolve;
- era narratives name existing eras and source chronicles;
- public entities and pages do not name or embed DM-only entities;
- relationships with DM-only endpoints carry the DM flag;
- relation types, banned categories, domain/range, cardinality, exclusions, and
  typed properties;
- spatial frames, positions, relative anchors, and route paths;
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

The JSON forms use schema version 1. Both include `status` and `diagnostics`;
lint also includes counts by severity. A diagnostic records `severity`, `code`,
`message`, semantic `object_path`, repository-relative `source_file`,
`source_line`, `repair_instruction`, `help_topic`, and structured `details`.
`World#validation_diagnostics` and `World#lint_diagnostics` add this typed API
without changing the legacy `validate` or `lint` return values. Findings exit
1; source parse and load failures exit 2 with the same envelope when JSON was
requested. Ruby callers may supply `root:` to control source-path relativity;
the CLI supplies the repository root regardless of its launch directory.

## Render targets

Generated output is disposable and gitignored.

- `make site-data` writes `build/site` and `build/site-internal`. The public
  bundle contains reader-visible entries, pages, facts, graph, chronology,
  search material, spatial frames, positions, route geometry, and social assets.
  The internal bundle adds
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

## Local review mutation boundary

`tools/review-app/` is a trusted local source editor, not part of the deployed
reader. Its Express server binds to `127.0.0.1` and accepts browser requests
only from the declared local development origins. The browser addresses an
entity id and carries the SHA-256 revision of its whole source file on every
write.

The Ruby `ReviewEditor` locates that exact literal entity with Prism and permits
only direct `question`, `reviewed`, and `status :complete` declarations. It
refuses computed or ambiguous declarations. A candidate is loaded with every
other world file, validated and checked for error-level lint, then atomically
replaces the source while preserving its mode. Stale revisions, invalid UTF-8,
invalid candidates, or filesystem failures leave the original bytes in place.
Question resolution uses a digest token for the exact declaration rather than
display text or a line number. See `tools/review-app/README.md`.

## Deployed editorial boundary

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
checks and builds the local review app, and builds public and private site data.
The application job then delegates to the shared Ahara workflow, which builds
and deploys the repository stack. The GitHub wiki export is available locally
but is not the deployed publication path.

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
  lib/lorecraft/              model, queries, checks, renderers, safe source edits
  tools/                      site build, review bridge, migration utilities
  test/                       unit and smoke tests
tools/review-app/             loopback-only local review writer
apps/web/                     public reader
backend/editorial-api/        authenticated editorial API
infrastructure/terraform/     site, identity, storage, and API deployment
build/                        generated artifacts
```
