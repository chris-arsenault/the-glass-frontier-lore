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

## Retiring the review tracker

Review state now belongs on the prose block (`reviewed: "YYYY-MM-DD"`, audited by
`make provenance`), which survives a file move and is granular enough to mean
something. `worlds/<id>/work-tracking/review-status.json` and the
`lorecraft review` subcommands still hold the older per-file record — 56 real
timestamps against zero block declarations, so they stay until there is something
to replace them with.

Migrate per file as entries are read: declare `reviewed:` on the blocks, drop that
file's entry from the JSON. When a world's JSON is empty, delete it, the
`review` subcommands, and `ReviewTracker` — keeping `content_changed_at`, which
`Provenance` uses to expire a stale read. `tools/review-app/` writes
`manual-review-status.json` and would need to move to the DSL with it, or lose the
review-flag buttons.

## Review app

`tools/review-app/` now lists and serves the DSL corpus, and comments anchor to
the source text a fix gets applied to. Two things it does not do yet: render
`prose` blocks as prose rather than as source, and follow `#{ref}` links between
entries. Comments filed before the DSL migration whose highlight quoted rendered
markdown — old `[future:Name]` markers especially — land in the Unanchored column
instead of against the text.
