# Backlog

This file lists work that is known and not done. Current behavior belongs in
`README.md`, `SYSTEM.md`, `lorecraft/README.md`, and the CLI help.

## The Ice Remembers

`worlds/ice-remembers/` contains a schema and placeholder timeline but no
entities. Its `CLAUDE.md` defines the activation sequence. Source material is in
`../the-canonry-game/docs/lore/`.

## The Dry War timeline

The era order is canonical, but the boundaries in `world/timeline.rb` are still
declared as placeholders. Every anchored span renders from those values, so one
timeline correction updates dependent prose. A human still needs to decide the
length of the Unified Calm and the Breach's distance from living memory.

## Structured fact gaps

Both active worlds have explicit kind and subkind fact schemas. Some expected
values remain absent, especially founding and birth dates and relationship-backed
fields such as leaders, workplaces, and maintainers. Do not copy a count into
this file; run the current audit:

```sh
make facts WORLD=glass-frontier
make facts WORLD=dry-war
```

Missing facts are work only when the canon establishes an answer. Unknown
values stay absent from the reader.

## Dry War guidance

The Dry War has an authoring method and voice-referent substitutions. It still
needs setting-specific tone and naming guidance equivalent in scope to the
Glass Frontier files.

## Review app navigation

`tools/review-app/` reads and writes DSL review declarations. It shows rendered
prose or source, adds and resolves `question` lines, and toggles `reviewed` and
`status :complete`. Rendered `ref` links still do not navigate to another entry
inside the review app.
