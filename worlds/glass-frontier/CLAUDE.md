# The Glass Frontier

A game world set in the Kaleidos system — a shattered orbital ring, its parent planet, and the wider solar system around them.

Nearly three hundred years ago the ring shattered. The fragments — hundreds of them, many still habitable — drifted apart. The surface was cut off from orbit. The other worlds in the system carried on alone. When everyone finally reconnected, they discovered they had become strangers. Present day is 2435 CE, in the Accord era.

## Working On This World

```
make check WORLD=glass-frontier      # validate + lint
make queue WORLD=glass-frontier      # what needs doing: open questions + findings
make wiki  WORLD=glass-frontier      # render to build/glass-frontier/wiki
make topology WORLD=glass-frontier   # graph health
```

Read the repo-root `CLAUDE.md` first — it carries the DSL conventions, the entry format, and the workflow that apply to every world. Then `craft/` for the writing rules. This directory carries only what is true of the Kaleidos system specifically.

## What Is Here

| Path | Holds |
|---|---|
| `world/` | the canon — Lorecraft DSL, the single source of truth |
| `guidance/tone.md` | hopecore, the references, the anti-references |
| `guidance/voice-referents.md` | banned real-world referents and their in-world substitutions |
| `guidance/naming-conventions.md` | culture naming patterns, place and era naming |
| `guidance/canon-checklist.md` | fixed dates and systems vocabulary a review checks against |
| `guidance/archetype-slots.md` | which archetypes are thin — read before attributing anything |
| `guidance/world-seeds.md` | ideas not yet formalized into entries |
| `work-tracking/` | the older per-file review timestamps — questions, comments and the queue live on the entities (`make queue`) |
| `research/` | audits and long-form analysis of this world |
| `attic/` | reference and mood material, not canon |

## The Two Things Most Often Got Wrong Here

**Attribution.** Coremark and Vantara are each the only named entity in a category that should hold several. Prose that needs a smuggler or a freight carrier should reach for a `future` marker, not for them. See `guidance/archetype-slots.md`.

**Dates.** The Silent Bloom begins in 2378. Check `guidance/canon-checklist.md` before writing any year.
