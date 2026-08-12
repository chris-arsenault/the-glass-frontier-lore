---
title: Comprehensive Crosswalk Review
---

# Comprehensive Crosswalk Review

How to audit one world for internal consistency, completeness, and quality. Run it periodically, especially after batches of new entries, to catch drift. The procedure is the same for every world. Use a setting's `guidance/canon-checklist.md` when it has one; otherwise query its timeline, schema, and entries directly.

Start from a clean gate: `make check WORLD=<id>` must pass with zero errors before a manual pass is worth anything.

## A) Contradictions and Discrepancies

**Check:** timeline dates consistent across every entry that names one; facts stated the same way everywhere (species origins, who did what, what an occurrence destroyed); one entity called by one name throughout.

**Automated:** the validator resolves every `ref` and enforces declared domain/range and causality; `ruby lorecraft/bin/lorecraft timeline <id> --world <id>` shows one entity's effects in order.

**Manual:** read the entries that describe the same occurrence side by side and
compare claims. Confirm that time statements use the intended timeline anchor
and that fixed years agree with `world/timeline.rb`.

## B) Vague or Unclear Terms

**Check:** terms used in prose with no entity, no shell, and no `future` marker; concepts referenced as important but never defined; the same thing called different names in different entries; descriptions that should be concrete per the hard-systems rule but are hand-wavy.

**Automated:** `make lint WORLD=<id>` reports every `future` marker, so the list of unresolved names is free.

**Manual:** for each entry ask whether a reader unfamiliar with the world could follow every term. Flag inline descriptions of things that should be named entities — see "Name entities, don't describe them" in `CLAUDE.md`.

## C) Systems, Technology, Magic

**Check:** every capability has a cost, a source, and a limit. No "it just works" moments. The world's systems vocabulary used consistently — the canon checklist names which terms those are.

**Manual:** for any new system entry, does it specify what it does, what it costs, where the inputs come from, what limits it, and who has access? The test: could a reader predict what this system can and cannot do?

## D) DM Knowledge Separation

**Check:** player entries stand alone — no narrator winks, no "technically true," no hints that there is more to the story. DM entries extend but never contradict them.

**Automated:** the validator rejects public entity and authored-page references to DM-only entities. The public reader and wiki exclude DM content.

**Manual:** read each player entry as if the DM entry doesn't exist. Does it feel complete, or does it feel like it's holding something back?

## E) Graph Health

**Check:** entities with no edges; kinds unreachable within two hops; relation types declared but never used; shells that nothing references.

**Automated:** `make topology WORLD=<id>` reports degree by prominence and lists
entries below the edge floor, separating disconnected entries from those
waiting on unwritten entities. Targets are in `graph-topology.md`.

## F) Prose Quality

**Check:** repeated phrasing across entries (corpus-level slop); entries long enough to split; prominence cross-reference violations.

**Automated:** the linter catches tag-taxonomy violations, prominence reach, orphans, and double articles.

**Manual:** the "read three entries in a row" test from `deslop-guidance.md`; the name checklists in `naming-craft.md` and `naming-by-kind.md`.

## Order of Work

1. `make check WORLD=<id>` — fix every error first.
2. Work the automated checks per category.
3. Manual pass per category. Put each unresolved finding in a `question` on the entity it concerns; keep a completed whole-world audit under the world's `research/` directory.
4. Fix in priority order: A (contradictions) → D (DM leaks) → E (graph health) → C (systems) → B (vague terms) → F (prose).
5. Re-run `make check WORLD=<id>`.
