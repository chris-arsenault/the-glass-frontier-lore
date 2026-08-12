# Craft

How to write well in a secondary world — any of them. Nothing here names a setting, a character, or a date. Everything here binds every world in `worlds/`.

## Where Instructions Belong

`craft/` contains rules that apply to every world. A world's `guidance/` contains only what is specific to that setting: examples, vocabulary, banned referents, dates, and cultural patterns.

- A world may make a craft rule stricter. It may not relax one.
- Do not copy a craft rule into a world's guidance.
- State a necessary exception where it occurs: `Departs from craft/writing-guidance.md §3: …`.

When you are unsure where something belongs, ask whether it would still be true in a world with different physics, different peoples and a different history. If yes, it is craft. If no, it is guidance.

## What Is Here

| File | Covers |
|---|---|
| `authoring-principles.md` | the constraints every world is built under |
| `writing-guidance.md` | mandatory prose rules |
| `voice-review-prompt.md` | reusable in-universe voice review |
| `deslop-guidance.md` | detecting and fixing AI writing patterns |
| `naming-craft.md` | judging whether a name was made by someone who cared |
| `naming-by-kind.md` | per-kind naming checks |
| `narrative-roles.md` | viewpoint and titan tiers |
| `graph-topology.md` | target graph health and relationship budgets |
| `crosswalk-review.md` | the periodic consistency audit |
| `schema/base.rb` | the entity kinds, effect verbs and relation taxonomy every world loads |
| `research/` | craft reference material, not tied to a setting |

`schema/base.rb` is the only executable file here. It is loaded before any world's own `schema.rb`, which adds that world's tags, section headings and setting-specific relations.
