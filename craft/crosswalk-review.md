---
title: Comprehensive Crosswalk Review
---

# Comprehensive Crosswalk Review

How to audit one world for internal consistency, completeness, and quality. Run it periodically — especially after batches of new entries — to catch drift. The procedure is the same for every world; the facts each world checks its dates and systems against are its `guidance/canon-checklist.md`.

Start from a clean gate: `make check WORLD=<id>` must pass with zero errors before a manual pass is worth anything.

## A) Contradictions and Discrepancies

**Check:** timeline dates consistent across every entry that names one; facts stated the same way everywhere (species origins, who did what, what an occurrence destroyed); one entity called by one name throughout.

**Automated:** the validator resolves every `ref` and enforces domain/range and causality; `lorecraft timeline <id>` shows one entity's moments in order.

**Manual:** read the entries that describe the same occurrence side by side and compare claims. Verify that "roughly X years" language is arithmetically close to the actual span.

## B) Vague or Unclear Terms

**Check:** terms used in prose with no entity, no shell, and no `future` marker; concepts referenced as important but never defined; the same thing called different names in different entries; descriptions that should be concrete per the hard-systems rule but are hand-wavy.

**Automated:** `make lint` reports every `future` marker, so the list of unresolved names is free.

**Manual:** for each entry ask whether a reader unfamiliar with the world could follow every term. Flag inline descriptions of things that should be named entities — see "Name entities, don't describe them" in `CLAUDE.md`.

## C) Systems, Technology, Magic

**Check:** every capability has a cost, a source, and a limit. No "it just works" moments. The world's systems vocabulary used consistently — the canon checklist names which terms those are.

**Manual:** for any new system entry, does it specify what it does, what it costs, where the inputs come from, what limits it, and who has access? The test: could a reader predict what this system can and cannot do?

## D) DM Knowledge Separation

**Check:** player entries stand alone — no narrator winks, no "technically true," no hints that there is more to the story. DM entries extend but never contradict them.

**Automated:** the validator has a DM-leak check — public prose referencing a DM-only entity fails the build. The wiki render excludes DM content entirely.

**Manual:** read each player entry as if the DM entry doesn't exist. Does it feel complete, or does it feel like it's holding something back?

## E) Graph Health

**Check:** entities with no edges; kinds unreachable within two hops; relation types declared but never used; shells that nothing references.

**Automated:** `make topology WORLD=<id>` reports degree distribution and zero-degree entities. Targets are in `graph-topology.md`.

## F) Prose Quality

**Check:** repeated phrasing across entries (corpus-level slop); entries long enough to split; prominence cross-reference violations.

**Automated:** the linter catches tag-taxonomy violations, prominence reach, orphans, and double articles.

**Manual:** the "read three entries in a row" test from `deslop-guidance.md`; the name checklists in `naming-craft.md` and `naming-by-kind.md`.

## Order of Work

1. `make check WORLD=<id>` — fix every error first.
2. Work the automated checks per category.
3. Manual pass per category, recording findings in the world's `work-tracking/`.
4. Fix in priority order: A (contradictions) → D (DM leaks) → E (graph health) → C (systems) → B (vague terms) → F (prose).
5. Re-run `make check WORLD=<id>`.
