# Tsonu Canon

Tsonu Canon is an executable lore corpus and an example of tool-assisted LLM
context. Several game worlds share one Ruby DSL, one schema system, and one set
of query and validation tools. An unfamiliar model can discover a world's
vocabulary at run time, ask for the part relevant to its task, and check its
work without fine-tuning or placing the whole corpus in its prompt.

| World | Status | What it is |
|---|---|---|
| [The Glass Frontier](worlds/glass-frontier/) | active | The Kaleidos system: a shattered orbital ring, its parent planet, and the surrounding solar system. |
| [The Ice Remembers](worlds/ice-remembers/) | scaffold | Aurora Berg: a continent-sized iceberg shared by three peoples who cannot leave it. |
| [The Dry War](worlds/dry-war/) | active | Earth in 2090, where mycelial and machine intelligences govern most survivors and compete for the same water. |

## Why a DSL

A Markdown wiki is a good reading target, but its usual source model is pages
and links. Lorecraft keeps the readable prose and adds structure an agent can
query and the repository can reject when it is wrong:

- entity kinds and subkinds distinguish a person, place, faction, event, and
  general concept;
- typed fact fields distinguish text, dates, numbers, and entity references;
- named relationship types can constrain their source, target, cardinality, and
  lifetime;
- a shared timeline computes historical state and elapsed spans;
- player and DM audiences have a checked boundary;
- controlled tags, section names, status values, and provenance declarations
  turn convention errors into validation errors;
- references resolve, transcluded passages have one owner, and generated views
  cannot silently become a second source of truth.

The result is useful to an LLM because effective context is not only the number
of tokens it can receive. It is also whether the model can find the right facts,
follow non-linear connections, exclude unrelated or private material, and get
specific feedback before a mistake enters the corpus. Lorecraft exposes those
operations as small commands instead of asking the model to ingest a directory
of pages and decide which copies or links are authoritative.

This does not make prose automatically true or good. Some entity attributes are
deliberately extensible, and validators cannot replace source reading or human
review. The schema prevents specific structural mistakes; the craft guidance
and review process govern the writing.

## Just-in-time context

The command help is part of the interface. Start with the overview, then load
only the topic or world slice the task needs:

```sh
ruby lorecraft/bin/lorecraft help
ruby lorecraft/bin/lorecraft help model
ruby lorecraft/bin/lorecraft help workflow

ruby lorecraft/bin/lorecraft worlds
ruby lorecraft/bin/lorecraft search "water authority" --world dry-war --audience player
ruby lorecraft/bin/lorecraft queue --world dry-war
ruby lorecraft/bin/lorecraft page inez_bell --world dry-war --audience player
ruby lorecraft/bin/lorecraft timeline inez_bell --world dry-war
ruby lorecraft/bin/lorecraft facts --world dry-war
make check WORLD=dry-war
```

`search` finds the stable id and canonical source for a subject. `page` answers
“what does a reader see?”, `timeline` answers “what changed this entity?”,
`facts` answers “which declared fields are missing?”, and `queue`
answers “what needs attention?”. `topology` and `web` expose broader graph shape
only when the task needs it. This progressive path reduces context poisoning:
generated indexes, old reports, unrelated entries, and DM-only material do not
enter an edit merely because they share a directory or search term.

See [the Lorecraft guide](lorecraft/README.md) for authoring and every command,
[the language reference](docs/lorecraft-spec.md) for the current DSL, and
[the architecture](SYSTEM.md) for loading, rendering, and deployment. The
[composition and editorial metadata guide](docs/canonical-composition.md)
describes transclusion, computed time, questions, logs, and provenance.

## Repository boundaries

```text
worlds/<id>/world/     canonical entities, prose, moments, and relationships
worlds/<id>/guidance/  setting-specific vocabulary and writing constraints
craft/                 rules and schema shared by every world
lorecraft/             loader, query model, validators, help, and renderers
apps/web/              public multi-world reader
backend/editorial-api/ authenticated questions, logs, and review records
```

The DSL under `worlds/<id>/world/` is the only canonical lore. Public reader
JSON, private editorial JSON, graph JSON, Markdown trees, and wiki pages are
generated views.

## Build and verify

```sh
make worlds                        # list active and scaffold worlds
make check WORLD=glass-frontier    # validate and lint one world
make check-all                     # validate and lint every active world
make test                          # Lorecraft unit tests
make site-data                     # public reader and private editorial JSON
make reader-build                  # production React build
make wiki WORLD=glass-frontier     # optional GitHub wiki export
make app-check                     # content, Rust, TypeScript, and Terraform checks
```

The reader requires Ruby 3.x, Node 24, and pnpm 10. The editorial API requires a
current Rust toolchain. `pnpm --dir apps/web dev` rebuilds lore data and starts
the reader at `http://localhost:5173`.

CI runs the Lorecraft tests, checks every active world, builds reader data, and
then delegates application build and deployment to the Ahara workflow. The
production reader is `canon.tsonu.com`; the wiki renderer remains an optional
export and is not deployed by this repository.

## License

[PolyForm Noncommercial 1.0.0](LICENSE.md)
