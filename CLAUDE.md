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

## Entry Format

Every entry is a markdown file with YAML frontmatter:

```markdown
---
title: Entry Name
type: location | faction | npc | artifact | creature | ship | event | concept
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
  concepts/                 # technology, magic, species, cultures, governance
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
  themes/                   # thematic cores (index + individual pages)
  threads/                  # plot threads (index + individual pages)
  loops/                    # narrative loops (index + individual pages)
  design-principles.md      # meta worldbuilding philosophy
  world-seeds.md            # ideas and texture for future development
  timeline.md               # major events chronology
  tags.md                   # controlled tag vocabulary
  causality.md              # entity-to-entity causal DAG

dm/                         # DM-only knowledge (not published to wiki)
review-guidance/            # writing quality docs (naming, deslop, crosswalk)
research/                   # long-term reference material (thematic craft, analyses)
work-tracking/              # temporary operational docs (queue, questions, snapshots)

CLAUDE.md                   # this file — authoring conventions
SYSTEM.md                   # technical architecture (graph, embedding, CLI, lint)
README.md                   # repo overview
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
| `add-rel <src> <type> <tgt>` | Add a typed relationship |
| `rm-rel <src> <type> <tgt>` | Remove a relationship |
| `query-neighborhood <id>` | Show entity's connections |
| `query-similar <section-id>` | Vector search for similar sections |
| `check` | Run all contradiction checks (G1-G7, L2) |
| `stats` | Graph statistics |

### Relationship types:

Check the taxonomy before creating edges. Banned types (like RELATED_TO) will be rejected:
```
python3 graph_cli.py add-rel <src> <type> <tgt>
```
The CLI validates against the taxonomy and rejects banned types.

### What gets embedded:

Section embeddings use entity-enriched prefix injection:
- Primary entity attributes (type, prominence, temporal bounds, relationships)
- Mentioned entity attributes (detected via NER against entity registry)
- Clean prose (markdown links and future markers stripped)

Embeddings are rebuilt automatically by `upsert-entity`. The vector index is rebuilt after each upsert.

## Source Material

`../the-glass-frontier/docs/lore/` contains the original (non-canonical) reference material. It has useful world details buried in over-engineered game scaffolding. Use it for inspiration, not as gospel. Strip the meta-gaming layers, keep the evocative imagery.
