# Backlog

Work that is known and not done. Current-state documentation lives in `README.md`,
`CLAUDE.md` and `SYSTEM.md`; this file is only for what comes next.

## Repository rename

The remote is still `chris-arsenault/the-glass-frontier-lore` and the local
directory is still `the-glass-frontier-lore`. Both should become `tsonu-canon`.

- GitHub: `gh repo rename tsonu-canon` (the stored `gh` token was invalid as of
  2026-08-08 — `gh auth login` first), then
  `git remote set-url origin git@github.com:chris-arsenault/tsonu-canon.git`.
- Sulion: sidebar → repo context menu → Rename. It refuses while a session is
  live in the repo.

Neither is blocking; every path inside the repository is already correct.

## Publishing

CI publishes one world's wiki, because a repository has one GitHub wiki. When a
second world has canon worth reading, replace the wiki job with a site build
that gives each world its own directory. `worlds.yml` already carries a
`publish` flag per world for this.

## Review baseline

The restructure rewrote every content file's git mtime, so every file reads as
pending against its recorded review time. The recorded times are real — they say
when the prose was last read — but nothing has been reviewed since the DSL
migration, and the tracker now says so honestly. It will recover as files are
marked.

Ten review-status entries, three manual-review entries and sixteen resolved
comments were dropped in the migration to DSL paths: they pointed at entities
that stopped existing when the markdown corpus was imported. All fourteen open
comments survived.

## The scaffold worlds

`worlds/ice-remembers/` and `worlds/dry-war/` hold a schema and a placeholder
timeline and nothing else. Each one's `CLAUDE.md` lists the four steps to
activation. The Ice Remembers has source material to port from
`../the-canonry-game/docs/lore/` (lore-bible, encyclopedia, eras); The Dry War
has no premise yet.

## Review app

`tools/review-app/` was built against the pre-DSL markdown tree and its file
listing still walks `player/` and `dm/`, which no longer exist. It now resolves
a world root via `WORLD`/`LORE_ROOT`, so the paths are right, but it needs a
rewrite against the DSL before it does anything useful.

## Glass Frontier content

`worlds/glass-frontier/work-tracking/work-queue.md` still describes the pre-DSL
graph — G8 checks, `valid_from` fields, edge exemptions. The content questions
in it are live; the mechanics it names are gone. Worth a rewrite the next time
someone works the queue.
