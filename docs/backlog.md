# Backlog

Work that is known and not done. Current-state documentation lives in `README.md`,
`CLAUDE.md` and `SYSTEM.md`; this file is only for what comes next.

## Publishing

CI publishes one world's wiki, because a repository has one GitHub wiki. When a
second world has canon worth reading, replace the wiki job with a site build
that gives each world its own directory. `worlds.yml` already carries a
`publish` flag per world for this.

## The scaffold world

`worlds/ice-remembers/` holds a schema and a placeholder timeline and nothing
else. Its `CLAUDE.md` lists the four steps to activation, and it has source
material to port from `../the-canonry-game/docs/lore/` (lore-bible,
encyclopedia, eras).

## The Dry War's first pass

Active, valid, and thin in three specific ways.

**No people.** Seventy-three entities and not one `npc`. The world is
institutions, cultures, technologies and ground; every viewpoint character is
still unwritten, and the resistance cultures are where they will come from.

**Placeholder dates.** The era sequence in `world/timeline.rb` is right and the
boundaries are asserted rather than argued. Every span in prose is computed from
them, so moving a boundary corrects the prose — but somebody has to decide how
long the Unified Calm actually was, and whether the Breach reads better closer to
living memory.

**Thin graph.** 1.5 edges per entity against a target of 4. The prose carries far
more connection than `_edges.rb` declares, and the gap is mostly relationships
between factions that reference each other constantly and share no edge.

Also missing: `guidance/tone.md` and `guidance/naming-conventions.md`.
`guidance/voice-referents.md` exists because this world inverts the repo's
instinct — Earth is in-world here — and that could not wait.

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
