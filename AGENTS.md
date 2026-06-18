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
- `tags` — optional. Topics and themes this entry involves. **Controlled vocabulary** — only use tags declared in `world/schema.rb` (`tag :name, "meaning"`). If you need a new tag, add it there first. Tags describe what an entry is *about* (e.g., `governance`, `resonance`, `trade`), not what it is *related to*.
- `related` — **DEPRECATED.** Entity relationships are tracked in the graph database with typed edges (LEADS, DEPENDS_ON, LOCATED_IN, etc.) not generic frontmatter lists. Do not add new `related:` fields. Existing ones will be removed as entries are touched.
- `prominence` — optional but encouraged. How widely known this entity is. One of: `forgotten`, `marginal`, `recognized`, `renowned`, `mythic`. See the Prominence concept (`world/concepts/prominence.rb`). This is NOT power or importance — only awareness. Gates how far references should reach in the knowledge graph.
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

Indexes are **generated** from the world registry by the wiki render — they are an artifact, not a source you hand-maintain. The authoritative registry is `world/` itself: every entity is a node, so per-type indexes fall out of the model.

- **Status values:** `complete`, `draft`, `shell`, `needs_refinement` — declared on the entity (`status :complete`).
- **Prominence values:** `forgotten`, `marginal`, `recognized`, `renowned`, `mythic`. See the Prominence concept (`world/concepts/prominence.rb`).
- **Shells** — entities that are referenced but not yet written — are real nodes with `status :shell` and no page. They appear in indexes and can be edge endpoints, but the markdown/wiki render skips them (no file). Use `#{future "Name"}` in prose for a thing that has no entity at all yet.
- To flesh out a shell: drop `status :shell`, give it a `path`, and write its prose.

## Meta Files (all in the DSL now — no standalone markdown)

- **Tags** — the controlled vocabulary lives in `world/schema.rb` (`tag :name, "meaning"`). Add a tag there before using it. The **Tags** wiki page is generated from it.
- **Timeline** — eras (with descriptions) live in `world/timeline.rb`. The **Timeline** wiki page is generated from them.
- **Causality** — the cause-and-effect view is generated from the world's causal edges (`caused`/`causes`); there is no causality file to maintain.
- **Home** and other hand-authored wiki pages are `page` constructs in `world/pages.rb`.

## File Naming

- Lowercase, hyphenated entity ids → underscored symbols in the DSL (`the-false-form` → `:the_false_form`); the original slug is preserved in the entity's `path` attribute.
- One `.rb` file per entity, under `world/<type>/<id>.rb`.

## Directory Structure

```
world/                      # THE SOURCE OF TRUTH — Lorecraft DSL
  schema.rb                 # entity kinds, relation taxonomy, effect verbs, tags, sections
  timeline.rb               # eras (fixed boundaries, descriptions); CE year = tick
  pages.rb                  # authored standalone wiki pages (Home, …) — `page` constructs
  cosmology/ concepts/ locations/ npcs/ history/ artifacts/ creatures/ ships/
                            # one <id>.rb per entity (kind → directory)
  _shells.rb                # shell stubs: referenced-but-unwritten entities
  _edges.rb                 # relationship edges (relate instances)

lorecraft/                  # the engine (Ruby): lib/, bin/lorecraft, tools/, test/
docs/                       # repo documentation, NOT player-facing
  design-principles.md      # worldbuilding philosophy
  world-seeds.md            # ideas for future development
  entity-bank-schema.md     # archetype/stub-inventory schema (the inventory itself = shells)
review-guidance/            # writing quality docs (voice, naming, topology)
research/                   # long-term reference material
work-tracking/              # operational docs (queue, questions, review status)
tools/review-app/           # inline review tool (Vite + React + Express)

CLAUDE.md / AGENTS.md       # this file — authoring conventions (kept in sync)
SYSTEM.md                   # technical architecture (the Lorecraft engine)
Makefile                    # validate / lint / wiki / graph / test targets
.github/workflows/wiki.yml  # CI: validate + build wiki from world/ → publish to wiki repo
```

**There is no committed markdown lore tree.** The only markdown output is the GitHub wiki, generated by CI (`make wiki`) from `world/` and published to the wiki repo — never committed here. Edit `world/`. See `SYSTEM.md` for the engine and `lorecraft/README.md` for authoring the DSL.

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

## Critical: Lorecraft Workflow

The world is authored as a **[Lorecraft](lorecraft/README.md) DSL** — Ruby files under `world/`. The in-memory object graph Lorecraft builds is the structured truth layer; there is no separate database to keep in sync. The GitHub wiki and the graph JSON are **render targets**, regenerated from `world/`. No markdown lore is committed to this repo.

**Safety:** `world/` is versioned by git — that is the snapshot/restore mechanism. Commit before a large rewrite. There is no committed markdown to hand-edit; edit the `world/` files and let CI rebuild the wiki.

### When creating or modifying an entry:

1. **Look at the neighborhood.** Read the entity's `world/<type>/<id>.rb` and the edges it appears in (`world/_edges.rb`).
2. **Edit the world file.** Static facts as attributes (`name`, `tags`, `prominence`, …); prose via `prose` blocks; cross-links via `#{ref :other_id}`; unwritten things via `#{future "Name"}`.
3. **Add typed relationships.** Every meaningful connection is a typed edge from the schema — a `relate :id, :verb, :src, :tgt` (optionally `since:`/`till:`/`dm: true`) or an event effect. Unknown/banned relation types are rejected by the validator.
4. **Validate and lint:**
   ```
   make check          # validate (hard invariants) + lint (graded findings)
   ```

### Commands (`make <target>` or `ruby lorecraft/bin/lorecraft <cmd>`):

| Command | Use |
|---------|-----|
| `validate` | Hard structural invariants (refs resolve, domain/range, cardinality, causality, DM-leak). Raises. |
| `lint` | Graded findings: errors / warnings (prominence reach, orphans, double-article, …) / futures. |
| `wiki <out>` | Generate the GitHub wiki from `world/` (player audience; DM excluded). |
| `wiki <out>` | Generate the GitHub wiki (player audience only). |
| `graph [out.json]` | Node/edge JSON projection at a point in time. |
| `stats` / `topology` | Counts by kind; degree/reachability health. |
| `timeline <id>` | Life-of-entity event strip. |

Historical state is a query, not a stored field: `world.at(era: :the_accord, year: 5).out(:coremark, :operates_in)`.

## Review Workflow

Review tracking is `lorecraft review <pending|mark|stale|status>` — git-mtime vs recorded review time, stored in `work-tracking/review-status.json` (unchanged format). The embedding-backed `overlaps`/`gaps` reports are **retired** (they required the Memgraph vector index).

### After modifying an entry:

1. `make check`
2. `ruby lorecraft/bin/lorecraft review mark <file>`
3. **Resolve addressed comments** in `work-tracking/review-comments.json` (set `status: "resolved"`). Mandatory.

### Review data & guidance:

- `work-tracking/review-status.json` — auto review timestamps (`review mark`)
- `work-tracking/manual-review-status.json` — manual sign-off (review app UI)
- `work-tracking/review-comments.json` — inline review comments
- `review-guidance/voice-review-prompt.md` — reusable LLM prompt for domain/register review
- `review-guidance/writing-guidance.md` — mandatory writing rules (entity attribution, clause patterns, cross-references)

### Review app:

`cd tools/review-app && npm run dev` — inline review tool on `:3456`. Note: it was built against the old markdown tree; until it's updated for the DSL, review against the generated wiki (`make wiki`) and port fixes back into the matching `world/` file.

## Source Material

`../the-glass-frontier/docs/lore/` contains the original (non-canonical) reference material. It has useful world details buried in over-engineered game scaffolding. Use it for inspiration, not as gospel. Strip the meta-gaming layers, keep the evocative imagery.
