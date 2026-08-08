# The Ice Remembers

Aurora Berg: a continent-sized iceberg drifting through an endless frozen sea. Three peoples share it and none of them can leave — the Aurora Stack in their crystalline spire-cities on the surface, the Nightshelf in the tunnels beneath the permanent shelf, and the Wake-Singers in the water around it.

The setting originates in `../../../the-canonry-game` (its first world). Nothing has been ported here yet.

## Status: Scaffold

`world/` holds a schema and a placeholder timeline and no entities. `make check-all` skips this world until `worlds.yml` marks it `active`.

Before writing canon:

1. Replace the placeholder era in `world/timeline.rb` with the berg's real sequence.
2. Declare this world's tag vocabulary in `world/schema.rb`. The entity kinds, effect verbs and relation taxonomy come from `craft/schema/base.rb` — add only what the berg needs and the base does not carry.
3. Write `guidance/tone.md`, `guidance/voice-referents.md` and `guidance/naming-conventions.md`. Until they exist, only the repo-root `CLAUDE.md` and `craft/` bind, which is enough to write well but not enough to write *this* world.
4. Flip `status: scaffold` to `status: active` in `worlds.yml` so the gates start running.

```
make check WORLD=ice-remembers
```
