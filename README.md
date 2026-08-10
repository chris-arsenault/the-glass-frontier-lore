# Tsonu Canon

Canonical lore for several game worlds, authored in one place with one engine.

| World | Status | What it is |
|---|---|---|
| [The Glass Frontier](worlds/glass-frontier/) | active | The Kaleidos system: a shattered orbital ring, its parent planet, and the solar system around them. Nearly three hundred years after the ring broke, everyone has reconnected and discovered they became strangers. |
| [The Ice Remembers](worlds/ice-remembers/) | scaffold | Aurora Berg: a continent-sized iceberg drifting through a frozen sea, shared by three peoples who cannot leave it. |
| [The Dry War](worlds/dry-war/) | active | Earth in 2090. A mycelial intelligence governs China through the clothes people wear; four machine coalitions govern North America by keeping everyone comfortable. Both need the same water, neither thinks it is fighting, and most of the planet now belongs to something else. |

Each world defines itself as it exists *now* — the places, factions, people, technology and history that players step into on day one.

## How It Is Built

A world is a graph of entities, moments and typed relationships, written in [Lorecraft](lorecraft/README.md), a Ruby DSL. The DSL is the only source of truth. The web app, markdown, and graph data are regenerated from it.

```
worlds/<id>/world/    the canon
craft/                how to write well in any of them
lorecraft/            the engine
apps/web/              the public reader
backend/editorial-api/ authenticated questions, logs and review history
```

`worlds.yml` lists the tenants. Everything else is described in [CLAUDE.md](CLAUDE.md) (conventions) and [SYSTEM.md](SYSTEM.md) (architecture).

## Working On It

```
make worlds                        # what's here
make check WORLD=glass-frontier    # validate + lint one world
make check-all                     # every world that has canon
make wiki WORLD=glass-frontier     # render to build/glass-frontier/wiki
make site-data                     # public JSON + private editorial JSON
make reader-build                  # production React build
make app-check                     # content, Rust, TypeScript and Terraform checks
make test                          # engine unit tests
```

The reader requires Ruby 3.x, Node 24 and pnpm 10. The editorial API requires a current Rust toolchain.

`pnpm --dir apps/web dev` builds the current lore data and starts the reader at `http://localhost:5173`. The production site is `canon.tsonu.com`; it publishes every active world under its own route. The public bundle contains only player knowledge. Cognito sign-in unlocks questions, entry logs, drafting provenance and review state through the private editorial API.

CI checks every world and deploys the reader and API through the Ahara platform on pushes to `main`. The GitHub wiki renderer remains available for exports, but it is no longer the published reader.

## License

[PolyForm Noncommercial 1.0.0](LICENSE.md)
