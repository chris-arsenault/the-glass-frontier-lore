# The Glass Frontier — Lore Wiki

## What This Is

A canonical lore repository for The Glass Frontier, a game world set in the Kaleidos system — a shattered ring world, its parent planet, and the wider solar system around them. One file per entry, cross-linked like a wiki. Feeds into `../the-canonry`.

## Tone & References

**Serious hopecore.** The lore takes itself seriously. The world is earnest, lived-in, and fundamentally hopeful even when dark things happen. There is room for player-created absurdity, but the lore itself plays it straight — a habitat governed by jazz is presented as a matter of fact, not a punchline.

- **Firefly** — the feel of the world. Scrappy frontier communities, mismatched crews, big sky. But more science-fantasy than space western, and the setting is much bigger.
- **Iain M. Banks' Culture** — elements of super-advanced technology survive from before the Glassfall. Not everything is post-collapse scrappiness. Some things are incomprehensibly sophisticated and still functioning.
- **Malazan (Bauchelain & Korbal Broach)** — the right kind of humor. Dark comedy that emerges from serious situations and deadpan delivery.
- **NOT Discworld.** No whimsy, no winking at the reader, no genre parody.
- **Brandon Sanderson** — hard magic systems. Every system of magic or technology must be concrete: defined rules, costs, sources, limits, and supply chains. If crystals power something, those crystals come from somewhere specific, are processed in a specific way, are traded along specific routes, and have a defined rarity. No deus ex machina. No "Gandalf winks to kill a dragon." Lore entries for systems should read like Sanderson appendices.

## Writing Style

- **Write like a world encyclopedia, not a design document.** Entries should feel like they were written by someone who lives in this world — or at least by a skilled chronicler, not a systems engineer.
- **No technobabble.** If a term doesn't evoke something concrete and visual, rewrite it. "Switchline Flux Quota" is bad. "Wind-trade route" is better.
- **Day-forward focus.** The lore defines the world as it exists NOW. History informs the present but doesn't dominate. Players create the story going forward.
- **Show, don't specify.** Describe what a place feels like, what a faction cares about, what an artifact does — not its entity ID or moderation hook.
- **Keep entries concise.** A few paragraphs is ideal. Long entries should be split.
- **Play it straight.** Even the strangest elements are presented matter-of-factly. The absurdity comes from the fiction being taken seriously, not from the author nudging the reader.
- **Name entities, don't describe them.** When prose references something that could be its own entity — a faction, a location, a person, an artifact — use a `[future:Name]` marker rather than describing the concept inline without naming it. This creates trackable placeholders for future entries. "The [future:Continuity] has governed Sithari for 130 years" not "the ruling party has governed for 130 years." Every named thing in the world should be discoverable.

### In-universe voice (critical)

All prose must be written from inside the world. There is no Earth. Three violations to watch for:

1. **Domain leakage** — real-world references used as comparisons. No trucks, taxis, sailboats, Venus, Sol, Uber. Comparisons must use in-world referents or universal physical concepts. Good: "the way cold-weather clothing is standard on an ice world." Bad: "like calling a cab."
2. **Wrong register** — design language in lore prose. Never write "this wiki", "DM answer", "culture slot", "will likely become its own entry", or "not yet defined" (as an authoring state). An entry can say "the cause remains unknown" (in-world gap) but never "this hasn't been written yet" (authoring gap). Use `[future:Name]` markers instead.
3. **Author's notes in prose** — notes meant for collaborators that ended up in published text. Describing what a concept is *for* in the setting rather than what it *is* in the world.

See `review-guidance/voice-review-prompt.md` for the reusable review prompt.

## Entry Format

Every entry is a markdown file with YAML frontmatter:

```markdown
---
title: Entry Name
type: see Kind Taxonomy below
tags: [governance, resonance, trade]
---

Prose description here. Cross-link to entries that have files with
standard markdown links. For entities that don't have files yet,
use the future marker: [future:Entity Name]
```

### Frontmatter fields

- `title` — required. The entry's name.
- `type` — required. The entry's primary type. Determines which directory it lives in.
- `tags` — optional. Topics and themes this entry involves. **Controlled vocabulary** — only use tags defined in [`tags.md`](player/tags.md). If you need a new tag, add it there first. Tags describe what an entry is *about* (e.g., `governance`, `resonance`, `trade`), not what it is *related to*.
- `related` — **DEPRECATED.** Entity relationships are tracked in the graph database with typed edges (LEADS, DEPENDS_ON, LOCATED_IN, etc.) not generic frontmatter lists. Do not add new `related:` fields. Existing ones will be removed as entries are touched.
- `prominence` — optional but encouraged. How widely known this entity is. One of: `forgotten`, `marginal`, `recognized`, `renowned`, `mythic`. See [Prominence](player/concepts/prominence.md). This is NOT power or importance — only awareness. Gates how far references should reach in the knowledge graph.
- `narrative_role` — optional. One of: `viewpoint`, `titan`. For NPCs that serve elevated narrative functions. See `review-guidance/narrative-roles-guide.md`. Most NPCs don't have this field.
- `alias` — optional. Common alternative name(s) for this entry.
- Additional fields as needed: `region:`, `era:`, `status:` etc. Add only when they carry real information.

Example:
```yaml
---
title: Ol'dent
type: npc
tags: [governance, resonance, music]
prominence: forgotten
---
```

### Prominence and cross-references

Prominence controls how far an entity's name should travel:
- **mythic/renowned** — can be referenced from anywhere
- **recognized** — reference within region/domain, or from broadly knowledgeable contexts
- **marginal** — reference only from nearby entities, specialists, or direct connections
- **forgotten** — reference only from entities with a specific, direct link

When writing a new entry, check the prominence of entities you're linking to. A system-wide political overview shouldn't name-drop a marginal ring hab. A marginal hab's entry can reference mythic concepts freely — everyone knows about those.

### Kind Taxonomy

Entity kinds are grouped into three categories. Full details and relationship budgets in `review-guidance/graph-topology-guide.md`.

**World Atlas** (named entities — the primary graph):
`npc`, `geographic_location`, `installation`, `faction`, `artifact`, `creature`, `transport`, `incident`, `conflict`, `rumor`, `edict`

**Player Reference** (general knowledge — highly connected hubs):
`species`, `culture`, `ability`, `resource`, `phenomenon`, `concept`

**Structural** (engine mechanics):
`era`, `dm`, `thread`, `loop`, `theme`

When choosing a type for a new entry:
- If it's a named, specific thing in the world → atlas kind
- If it describes how the world works (species traits, materials, systems) → reference kind
- If it's DM-only or narrative structure → structural kind

### Multi-type entries

Many entries touch multiple entity types. A ring hab might involve governance, physics, social structure, and trade. The rule:

1. **The entry lives where the thing IS.** A hab is a location. A faction is an NPC group. A governance system is a concept. Pick the primary type and file it there.
2. **Tags make it discoverable.** If a location entry describes a governance system, tag it `governance`. Someone searching tags for governance entries will find it alongside the pure concept entries.
3. **Companion entries for significant subsystems.** If a minor entry contains a concept significant enough to reference independently (e.g., a hab's unique governance model), write a short companion entry in the appropriate directory that summarizes and links back. Keep the companion lean — a paragraph or two, not a duplicate.
4. **Don't shatter coherent things.** If something makes sense as one entry, keep it as one entry, even if it's long. Five fragments nobody reads is worse than one entry somebody does.

## Index System

Indexes are layered, progressively more detailed:

**Top-level `player/index.md`** — Human-readable overview of the world. Links to cosmology entries (which are few and foundational) and to per-type indexes for everything else.

**Per-type `index.md`** (e.g. `player/locations/index.md`, `player/npcs/index.md`) — The authoritative registry for that entity type. Contains a markdown table of ALL known entities, including shells. Columns:

| Entry | Path | Status | Prominence | Tags | Notes |
|-------|------|--------|------------|------|-------|
| Fermata Station | `settlements/fermata-station.md` | complete | marginal | governance, resonance | Full entry |
| Glasswake Relay | — | shell | — | trade, ring-hab | Referenced but not yet written |

- **Path `—`** means the entry is a shell — no file exists. The index row IS the entry for now.
- **Status values:** `complete`, `draft`, `shell`, `needs_refinement`
- **Prominence values:** `forgotten`, `marginal`, `recognized`, `renowned`, `mythic` — or `—` if not yet assigned. See [Prominence](player/concepts/prominence.md).
- When fleshing out a shell: create the file, update Path, update Status.
- Shell entries should never have their own files. The index is the single source of truth for what exists and what doesn't.

## Meta Files

- **`player/timeline.md`** — Major events only. Grounds all historical references. Update when adding events.
- **`player/tags.md`** — Tag taxonomy. Check here before inventing a new tag. Update when adding tags.

## File Naming

- Lowercase, hyphenated: `glasswake-relay.md`, `prismwell-kite-guild.md`
- One file per entry
- Place files in the matching category directory

## Directory Structure

```
player/                     # all player-facing lore (published to wiki)
  cosmology/                # the rings, resonance, echo rivers, the physical world
  concepts/                 # resources, abilities, phenomena, professions, meta
    species/                # biological types
    cultures/               # social patterns, naming conventions
  locations/
    regions/                # broad geographic areas
    settlements/            # named towns, cities, stations
    landmarks/              # notable specific places
  npcs/
    factions/               # organized groups
    heroes/                 # notable individuals
    monsters/               # named antagonists, villains, bosses
  history/
    eras/                   # broad time periods
    events/                 # specific historical moments
  artifacts/
    relics/                 # unique, named, significant
    common/                 # everyday resonance-tech items
  creatures/
    fauna/                  # wildlife, animals
    anomalies/              # strange phenomena, living or otherwise
  ships/
    military/               # warships, patrol vessels
    civilian/               # trade ships, transports, personal craft
  design-principles.md      # meta worldbuilding philosophy
  world-seeds.md            # ideas and texture for future development
  timeline.md               # major events chronology
  tags.md                   # controlled tag vocabulary
  causality.md              # entity-to-entity causal DAG

dm/                         # DM-only knowledge (not published to wiki)
  themes/                   # thematic cores — authorial scaffolding
  threads/                  # plot threads — narrative arc beat sequences
  loops/                    # narrative loops — recurring structural patterns
review-guidance/            # writing quality docs (naming, deslop, crosswalk)
research/                   # long-term reference material (thematic craft, analyses)
work-tracking/              # temporary operational docs (queue, questions, snapshots)

tools/
  review-app/               # inline review tool (Vite + React + Express)

CLAUDE.md                   # this file — authoring conventions
SYSTEM.md                   # technical architecture (graph, embedding, CLI, lint)
README.md                   # repo overview
review.py                   # review tracking CLI (pending, mark, stale, status)
lint.py                     # lore linter
graph_cli.py                # graph database CLI
wiki_gen.py                 # wiki generation
```

New directories can be added as needed. The structure is emergent. See `SYSTEM.md` for technical details on the graph, embedding pipeline, and tooling.

## DM Knowledge (`dm/`)

The `dm/` directory contains information that is true in the world but not available to players or NPCs. It is **excluded from wiki generation** and should never be referenced from public entries.

**Pattern:**
- Public entries describe what NPCs know — observable facts, common theories, gaps in the record.
- DM entries in `dm/` describe the hidden truth and cross-reference the public entry they extend.
- Public entries must stand on their own. They should never hint at DM knowledge or read like they're holding something back. Write them as if the DM entry doesn't exist.
- DM entries use frontmatter field `dm: true` and reference public entries via `public_entry:` field.

```yaml
---
title: "Elves — DM Truth"
type: dm
dm: true
public_entry: elves
---
```

**What goes in `dm/`:** Secret motivations, hidden factions, the true cause of historical events, anything players should discover through play rather than reading.

**What does NOT go in `dm/`:** Anything that's just unwritten. Shell entries and `[future:]` markers are for things we haven't fleshed out yet. `dm/` is for things that are deliberately hidden from the player-facing wiki.

## Critical: Graph Safety

**NEVER write or execute ad-hoc Python scripts that modify the graph.** All graph writes go through `graph_cli.py`. The CLI takes automatic snapshots before destructive operations. Ad-hoc scripts bypass this protection and have already caused data loss.

**Before ANY graph modification:**
1. Take a snapshot: `python3 graph_cli.py snapshot before-<description>`
2. If the operation involves a query that creates or deletes nodes/edges, **run the query as a read-only DRY RUN first** — replace `CREATE`/`MERGE`/`DELETE`/`SET` with `RETURN` to see what would be affected
3. Review the dry run results before executing
4. Use the CLI commands, not raw Cypher in scripts

**If something goes wrong:** `python3 graph_cli.py restore <snapshot-name>`

## Critical: Graph Workflow

**Every prose change MUST be accompanied by a graph update.** The Memgraph database at `192.168.66.3:7688` is the structured truth layer. Prose and graph must stay in sync at all times.

### When creating or modifying an entry:

1. **Before writing:** Query the graph for the entity's neighborhood to understand existing relationships and check for conflicts:
   ```
   python3 graph_cli.py query-neighborhood <entity-id>
   ```

2. **After writing the .md file:** Upsert the entity to sync prose → graph (creates/updates entity node, sections, embeddings, MENTIONS edges):
   ```
   python3 graph_cli.py upsert-entity player/concepts/<file>.md
   ```

3. **Add typed relationships:** Every meaningful connection between entities gets a typed edge. Do NOT use generic relationships — every edge must have a semantic type from the taxonomy:
   ```
   python3 graph_cli.py add-rel <source-id> <REL_TYPE> <target-id>
   python3 graph_cli.py add-rel coremark OPERATES_IN the-shear
   python3 graph_cli.py add-rel elves BUILT the-glass-frontier --dm
   ```

4. **Run checks:** Verify no contradictions were introduced:
   ```
   python3 graph_cli.py check
   make lint
   ```

### Graph CLI commands:

| Command | Use |
|---------|-----|
| `upsert-entity <file>` | Sync a prose file to graph (entity + sections + embeddings) |
| `add-rel <src> <type> <tgt> [--from Y] [--to Y]` | Add a typed relationship (temporal bounds for state rels) |
| `rm-rel <src> <type> <tgt>` | Remove a relationship |
| `query-neighborhood <id>` | Show entity's connections (with temporal bounds) |
| `query-at <id> --year Y` | Show entity neighborhood at a point in time |
| `query-similar <section-id>` | Vector search for similar sections |
| `check` | Run all contradiction checks (G1-G8, L2) |
| `stats` | Graph statistics |

### Relationship types:

Check the taxonomy before creating edges. Banned types (like RELATED_TO) will be rejected:
```
python3 graph_cli.py add-rel <src> <type> <tgt>
```
The CLI validates against the taxonomy and rejects banned types.

### What gets embedded:

Two parallel embedding spaces are maintained per section:
- **Enriched** (`embedding`): entity-attribute prefix injection + clean prose. Better for semantic similarity queries ("find things related to X").
- **Plain** (`embedding_plain`): clean prose only, no attribute injection. Better for content duplication detection (avoids entity-attribute clustering).

Both are rebuilt automatically by `upsert-entity`. Both have separate vector indices (`section_embeddings`, `section_embeddings_plain`). Lint L2 checks run against both spaces.

## Review Workflow

Review tracking uses `review.py` and the review app (`tools/review-app/`).

### CLI commands:

| Command | Use |
|---------|-----|
| `python3 review.py pending` | List files modified since last review (pipe to voice prompt) |
| `python3 review.py mark <file> [...]` | Mark file(s) as auto-reviewed after fixing issues |
| `python3 review.py stale` | Show review comments that are stale (file was fixed since comment) |
| `python3 review.py status` | Summary: reviewed/total counts |
| `python3 review.py gaps` | Show archetype taxonomy gaps (thin entity categories) |
| `python3 review.py overlaps` | Generate overlap report for review app |
| `python3 review.py topology` | Graph topology health check (edges/entity, degree, 2-hop reachability) |

### After modifying prose:

1. Upsert to graph: `python3 graph_cli.py upsert-entity <file>`
2. Run lint: `python3 lint.py`
3. Mark auto-reviewed: `python3 review.py mark <file>`
4. **Resolve addressed comments:** After fixing review comments, mark them as resolved in `work-tracking/review-comments.json` by setting `status: "resolved"` on each addressed comment. This is mandatory — do not leave addressed comments as open.

### Two review systems (independent):

- **Auto review** (`work-tracking/review-status.json`) — tracked by `review.py mark`. Records when Claude ran voice prompts and fixed issues.
- **Manual review** (`work-tracking/manual-review-status.json`) — tracked by the UI "Mark reviewed" button. Records when the user personally signed off on a file.

### Review data:

- `work-tracking/review-comments.json` — inline review comments (from the review app)
- `work-tracking/review-status.json` — auto review timestamps
- `work-tracking/manual-review-status.json` — manual review timestamps
- `work-tracking/overlap-report.json` — L2 overlap report (generated by `review.py overlaps`)
- `work-tracking/accepted-overlaps.json` — section pairs accepted as legitimate overlap (excluded from L2 lint warnings)
- `review-guidance/voice-review-prompt.md` — reusable LLM prompt for domain/register review
- `review-guidance/writing-guidance.md` — mandatory writing rules (entity attribution, clause patterns, cross-references)

### Review app:

`cd tools/review-app && npm run dev` — Word-doc-style inline review tool on `:3456`. Highlights text with comments, shows stale vs active comments, supports marking files as reviewed from the UI.

## Source Material

`../the-glass-frontier/docs/lore/` contains the original (non-canonical) reference material. It has useful world details buried in over-engineered game scaffolding. Use it for inspiration, not as gospel. Strip the meta-gaming layers, keep the evocative imagery.
