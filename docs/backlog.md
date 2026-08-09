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

`tools/review-app/` lists and serves the DSL corpus as source. Its comment
endpoints are retired — a comment is a `question` declaration on the entity now —
so the gutter, the highlight anchoring and the resolve/delete buttons are dead UI
against a 410. Either teach it to write `question` lines into the Ruby, or cut the
commenting half and keep it as a reader with review-flag toggles. It also still
renders `prose` as source rather than prose, and does not follow `#{ref}` links.
