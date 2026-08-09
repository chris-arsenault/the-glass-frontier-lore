# Backlog

Work that is known and not done. Current-state documentation lives in `README.md`,
`CLAUDE.md` and `SYSTEM.md`; this file is only for what comes next.

## Publishing

CI publishes one world's wiki, because a repository has one GitHub wiki. When a
second world has canon worth reading, replace the wiki job with a site build
that gives each world its own directory. `worlds.yml` already carries a
`publish` flag per world for this.

## The scaffold worlds

`worlds/ice-remembers/` and `worlds/dry-war/` hold a schema and a placeholder
timeline and nothing else. Each one's `CLAUDE.md` lists the four steps to
activation. The Ice Remembers has source material to port from
`../the-canonry-game/docs/lore/` (lore-bible, encyclopedia, eras); The Dry War
has no premise yet.

## Review app

`tools/review-app/` reads and writes the DSL: raising a question inserts a
`question` line into the entity, resolving one deletes it, and the two flags write
`reviewed` and `status :complete`. It shows either view — prose as a reader gets
it, rendered by `lorecraft page`, or the source with its markers.

Review in the prose view where you can: an anchor taken from it matches the prose
`make check` verifies anchors against. A selection made in the source view is
trimmed to its longest marker-free run, because a span crossing `#{ref …}` matches
nothing once the world loads.

Still missing: `#{ref}` links do not navigate between entries.
