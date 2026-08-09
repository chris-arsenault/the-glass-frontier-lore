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
`reviewed` and `status :complete`. Two things it still does not do: render `prose`
as prose rather than as source, and follow `#{ref}` links between entries.

An anchor is trimmed to its longest marker-free run before it is stored, because a
selection spanning `#{ref …}` matches nothing once the world loads. A selection
that is mostly markers therefore lands as a question about the entry with no
anchor at all.
