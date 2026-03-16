---
title: Comprehensive Crosswalk Review
---

# Comprehensive Crosswalk Review

How to audit the lore repository for internal consistency, completeness, and quality. Run this review periodically — especially after batches of new entries — to catch drift.

## Review Categories

### A) Contradictions and Discrepancies

**What to check:**
- Timeline dates consistent across all entries (Glassfall, Famine duration, Bloom, Accord, present day)
- Facts stated the same way in every entry that mentions them (species origins, event descriptions, who did what)
- Prominence values match between frontmatter and index entries
- Title/name consistency (same entity called the same thing everywhere)

**Deterministic checks (lintable):**
- Frontmatter `prominence` matches the index entry's Prominence column
- `title` in frontmatter matches the Entry column in the index
- Date references grep-able: search for year numbers and verify consistency

**Manual checks:**
- Read entries that describe the same event/entity and compare claims
- Verify that "roughly X years" language is arithmetically close to actual date spans

### B) Vague or Unclear Terms

**What to check:**
- Terms used in prose that have no entry, no shell, and no `[future:]` marker
- Concepts referenced as important but never defined or tracked
- Same thing called different names in different entries (inconsistent terminology)
- Descriptions that should be concrete per the Sanderson rule but are hand-wavy

**Deterministic checks (lintable):**
- Every capitalized multi-word term in prose should be either a link, a `[future:]` marker, or a well-known real-world term
- Linter already catches `[future:]` references — these should all resolve to shells or files

**Manual checks:**
- Read each entry and ask: "Could a reader unfamiliar with the world understand every term used here?"
- Flag inline descriptions of entities that should be named and tracked (per CLAUDE.md "Name entities, don't describe them")

### C) Systems / Technology / Magic

**What to check:**
- Resonance frequency bands (structural, kinetic, signal) used consistently
- Ringglass supply chain (sourcing, grades, processing, trade) internally consistent
- Tuner abilities defined with clear limits
- No "it just works" moments — every capability should have a cost, a source, and a limit

**Deterministic checks:**
- Grep for the three frequency band names and verify they're always described the same way
- Grep for "ringglass" references and verify they're consistent with the ringglass entry

**Manual checks:**
- For any new system/tech/magic entry: does it specify what it does, what it costs, where the inputs come from, what limits it, and who has access?
- The Brandon Sanderson test: could a reader predict what this system can and cannot do?

### D) DM Knowledge Separation

**What to check:**
- Player entries stand alone — no narrator winks, no "technically true" language, no hints that there's more to the story
- DM entries extend but don't contradict player entries
- Causality DAG `[DM]` lines don't leak into wiki output
- No player entry references a dm/ file

**Deterministic checks (lintable):**
- Grep player/ entries for phrases like "technically true", "in truth", "what they don't know", "the real reason"
- Verify no player/ file links to a dm/ path
- Verify wiki output contains no `[DM]` markers

**Manual checks:**
- Read each player entry as if the DM entry doesn't exist. Does it feel complete, or does it feel like it's holding something back?

### E) Index / Timeline / DAG Sync

**What to check:**
- Every file in player/{type}/ appears in that type's index.md
- Every shell in an index has NO corresponding file
- Every `[future:]` reference in any entry has a shell somewhere
- DAG entity registry status matches reality (exists/shell/new)
- Timeline entity references match what exists in indexes

**Deterministic checks (lintable):**
- Linter already checks: dead links, shell/file consistency, tag validity, frontmatter requirements
- Additional: grep all `[future:]` markers and cross-reference against all index shells

**Manual checks:**
- Walk the DAG entity registry row by row and verify each status
- Walk the timeline row by row and verify each `[future:]` reference exists as a shell

### F) Prose Quality

**What to check:**
- See `review-guidance/deslop-guidance.md` for AI writing pattern detection
- See `review-guidance/naming-review.md` and `naming-entity-review.md` for naming
- Missing frontmatter fields (tags, related, prominence)
- Repeated phrases across entries (corpus-level slop)
- Entries that are too long and should be split
- Prominence cross-reference violations (high-prominence entry referencing low-prominence entity)

**Deterministic checks (lintable):**
- Linter catches: tag taxonomy violations, dead links, prominence cross-refs, missing title/type
- Possible additions: grep for specific slop phrases, check frontmatter completeness

**Manual checks:**
- The "read three entries in a row" test from deslop guidance
- Name review checklists from naming guidance

## Running the Review

1. Run `make lint` — fix all errors first
2. Run through deterministic checks for each category
3. Manual review per category — document findings
4. Fix issues in priority order: A (contradictions) > D (DM leaks) > E (sync) > C (systems) > B (vague terms) > F (prose)
5. Re-run `make lint` after fixes
