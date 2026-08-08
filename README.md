# Tsonu Canon

Canonical lore for several game worlds, authored in one place with one engine.

| World | Status | What it is |
|---|---|---|
| [The Glass Frontier](worlds/glass-frontier/) | active | The Kaleidos system: a shattered orbital ring, its parent planet, and the solar system around them. A hundred and thirty years after the ring broke, everyone has reconnected and discovered they became strangers. |
| [The Ice Remembers](worlds/ice-remembers/) | scaffold | Aurora Berg: a continent-sized iceberg drifting through a frozen sea, shared by three peoples who cannot leave it. |
| [The Dry War](worlds/dry-war/) | scaffold | Premise not yet established. |

Each world defines itself as it exists *now* — the places, factions, people, technology and history that players step into on day one.

## How It Is Built

A world is a graph of entities, moments and typed relationships, written in [Lorecraft](lorecraft/README.md), a Ruby DSL. The DSL is the only source of truth. Markdown, the GitHub wiki and the graph JSON are render targets, regenerated from it — none of them are committed here.

```
worlds/<id>/world/    the canon
craft/                how to write well in any of them
lorecraft/            the engine
```

`worlds.yml` lists the tenants. Everything else is described in [CLAUDE.md](CLAUDE.md) (conventions) and [SYSTEM.md](SYSTEM.md) (architecture).

## Working On It

```
make worlds                        # what's here
make check WORLD=glass-frontier    # validate + lint one world
make check-all                     # every world that has canon
make wiki WORLD=glass-frontier     # render to build/glass-frontier/wiki
make test                          # engine unit tests
```

Requires Ruby 3.x.

CI validates every world on push and publishes the Glass Frontier's wiki. Only one world can occupy a repository's GitHub wiki, so when a second world has canon worth reading this moves to a site build with a directory per world.

## License

[PolyForm Noncommercial 1.0.0](LICENSE.md)
