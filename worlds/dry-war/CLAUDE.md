# The Dry War

A new setting. Nothing about it has been established yet — not the premise, not the peoples, not the physics. The name is the only fixed point.

## Status: Scaffold

`world/` holds a schema and a placeholder timeline and no entities. `make check-all` skips this world until `worlds.yml` marks it `active`.

Before writing canon:

1. Write the premise into this file — what the world is, who lives in it, what the war is and whether it is still running.
2. Replace the placeholder era in `world/timeline.rb` with the real sequence.
3. Declare this world's tag vocabulary in `world/schema.rb`. The entity kinds, effect verbs and relation taxonomy come from `craft/schema/base.rb` — add only what this setting needs and the base does not carry.
4. Write `guidance/tone.md`, `guidance/voice-referents.md` and `guidance/naming-conventions.md`. Until they exist, only the repo-root `CLAUDE.md` and `craft/` bind, which is enough to write well but not enough to write *this* world.
5. Flip `status: scaffold` to `status: active` in `worlds.yml` so the gates start running.

```
make check WORLD=dry-war
```
