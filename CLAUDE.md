# Tsonu Canon — Lore Repository

## What This Is

Canonical lore for several game worlds, authored in one place with one engine. Each world is a tenant under `worlds/<id>/`; the Lorecraft engine, the craft guidance and the tooling are shared.

| World | Directory | Status |
|---|---|---|
| The Glass Frontier | `worlds/glass-frontier/` | active — the Kaleidos system, a shattered ring world |
| The Ice Remembers | `worlds/ice-remembers/` | scaffold — Aurora Berg, from `../the-canonry-game` |
| The Dry War | `worlds/dry-war/` | scaffold — premise not yet established |

`worlds.yml` is the manifest. The Glass Frontier feeds into `../the-canonry`.

**Before working on a world, read its `worlds/<id>/CLAUDE.md`.** This file carries what is true of every world; that file carries the setting.

## Three Layers

Everything in this repository sits in one of three layers, and putting a thing in the wrong one is the most common structural mistake here.

| Layer | Question it answers | Where |
|---|---|---|
| **Engine** | how is a world loaded, validated, rendered? | `lorecraft/`, `tools/`, `Makefile`, `SYSTEM.md` |
| **Craft** | how do you write well in *any* secondary world? | `craft/` |
| **World** | what is true of *this* setting? | `worlds/<id>/` |

The test: would this still be true in a world with different physics, different peoples and a different history? If yes it is craft. If no it is world.

`craft/` states the rule and the method; a world's `guidance/` supplies the substitutions — its examples, vocabulary, banned referents, fixed dates, culture patterns. Craft binds every world. A world may narrow a craft rule, never loosen it, and a genuine departure is written down as `Departs from craft/<file> §N: …` rather than left implicit. See `craft/README.md`.

## Writing Style

- **Write like a world encyclopedia, not a design document.** Entries should feel like they were written by someone who lives in the world — or at least by a skilled chronicler, not a systems engineer.
- **No technobabble.** If a term doesn't evoke something concrete and visual, rewrite it. "Switchline Flux Quota" is bad. "Wind-trade route" is better.
- **Day-forward focus.** Lore defines a world as it exists NOW. History informs the present but doesn't dominate. Players create the story going forward.
- **Show, don't specify.** Describe what a place feels like, what a faction cares about, what an artifact does — not its entity ID or moderation hook.
- **Keep entries concise.** A few paragraphs is ideal. Long entries should be split.
- **Play it straight.** Even the strangest elements are presented matter-of-factly. The absurdity comes from the fiction being taken seriously, not from the author nudging the reader.
- **Name entities, don't describe them.** When prose references something that could be its own entity — a faction, a location, a person, an artifact — use a `#{future "Name"}` marker rather than describing the concept inline without naming it. `The #{future "Continuity"} has governed Sithari for 130 years`, not "the ruling party has governed for 130 years." Every named thing should be discoverable.

Full rules: `craft/writing-guidance.md`. Tone and references are per-world — `worlds/<id>/guidance/tone.md`.

### In-universe voice (critical)

All prose must be written from inside the world. There is no Earth. Three violations to watch for:

1. **Domain leakage** — real-world references used as comparisons. Comparisons must use in-world referents or universal physical concepts. Good: "the way cold-weather clothing is standard on an ice world." Bad: "like calling a cab." Each world lists its own banned referents and their substitutions in `guidance/voice-referents.md`.
2. **Wrong register** — design language in lore prose. Never write "this wiki", "DM answer", "culture slot", "will likely become its own entry", or "not yet defined" (as an authoring state). An entry can say "the cause remains unknown" (in-world gap) but never "this hasn't been written yet" (authoring gap). Use `future` markers instead.
3. **Author's notes in prose** — notes meant for collaborators that ended up in published text. Describing what a concept is *for* in the setting rather than what it *is* in the world.

See `craft/voice-review-prompt.md` for the reusable review prompt.

## Entry Format

An entity is one `.rb` file under `worlds/<id>/world/<kind>/<id>.rb`. Static facts are attributes; prose lives in `prose` blocks; cross-links are `#{ref :other_id}`; things with no entity yet are `#{future "Name"}`.

### Never type an elapsed span

**Dates are facts; spans are arithmetic.** Write the year an event happened, never the time since it. A typed span is a copy of a calculation the timeline already does, and it goes stale the moment an era moves — extending one era once left seventeen wrong spans across ten files.

```ruby
"the ring broke #{elapsed :the_glassfall, ago: true}"        # 295 years ago
"debris has had #{elapsed :the_glassfall, approx: true}"      # nearly three centuries
"isolated for #{elapsed :the_glassfall, :the_rekindling}"     # 165 years
"Hab Meridian in #{year :now} CE"                             # in 2435 CE
```

`approx: true` gives the rounded phrase in words, the default gives the figure in digits, and `ago: true` appends "ago". An anchor is `:now`, a year, a moment id, an era name, or an entity id (resolving to its earliest moment). `make check` inventories every span still typed by hand.

A duration anchored to nothing — "held the post for eleven years" — is a length, not a span, and stays as written.

### Compose, don't restate

When two entries need the same passage, one owns it and the other transcludes:

```ruby
#{embed :tempered_accord}              # the target's :main prose, in place
#{embed :tempered_accord, :structure}  # one named section of it
```

The owner is whichever entity the fact is *about* — the Accord's seat belongs to the Accord, and Sithari embeds it. Every embed derives an `embeds` edge, so the composition shows up in `make topology` and counts as a connection for prominence reach. The validator rejects an embed of a missing entity, a shell, a section with no prose, or DM prose from a public entry; the linter fails the build on a cycle.

Restating instead of embedding is the most common way this corpus goes wrong: two copies of a sentence drift, and the reader meets both.

### Entity fields

- `title` — required. The entry's name.
- `kind` — required. Determines which directory it lives in. See the taxonomy below.
- `tags` — optional. Topics and themes this entry involves. **Controlled vocabulary** — only tags declared in the world's `world/schema.rb` (`tag :name, "meaning"`). Add a tag there before using it. Tags describe what an entry is *about* (`governance`, `resonance`, `trade`), not what it is *related to*.
- `prominence` — optional but encouraged. How widely known this entity is: `forgotten`, `marginal`, `recognized`, `renowned`, `mythic`. NOT power or importance — only awareness. Gates how far references should reach in the knowledge graph.
- `narrative_role` — optional. `viewpoint` or `titan`, for NPCs with elevated narrative functions. See `craft/narrative-roles.md`. Most NPCs don't have this.
- `alias` — optional. Common alternative name(s).
- `status` — `complete`, `draft`, `shell`, `needs_refinement`.
- Additional fields as needed (`region`, `era`, …). Add only when they carry real information.

Generic `related:` lists do not exist. Relationships are typed edges from the schema taxonomy (LEADS, DEPENDS_ON, LOCATED_IN, …); unknown types are rejected by the validator.

### Prominence and cross-references

Prominence controls how far an entity's name should travel:
- **mythic/renowned** — can be referenced from anywhere
- **recognized** — reference within region/domain, or from broadly knowledgeable contexts
- **marginal** — reference only from nearby entities, specialists, or direct connections
- **forgotten** — reference only from entities with a specific, direct link

When writing a new entry, check the prominence of what you link to. A world-spanning political overview shouldn't name-drop a marginal habitat. A marginal habitat's entry can reference mythic concepts freely.

### Kind Taxonomy

Kinds are declared once for every world in `craft/schema/base.rb`, grouped into three categories. Relationship budgets are in `craft/graph-topology.md`.

**World Atlas** (named entities — the primary graph):
`npc`, `geographic_location`, `installation`, `faction`, `artifact`, `creature`, `transport`, `incident`, `conflict`, `rumor`, `edict`

**Player Reference** (general knowledge — highly connected hubs):
`species`, `culture`, `ability`, `resource`, `phenomenon`, `concept`

**Structural** (engine mechanics):
`era`, `dm`, `thread`, `loop`, `theme`

Choosing: a named, specific thing → atlas kind. Something describing how the world works (species traits, materials, systems) → reference kind. DM-only or narrative structure → structural kind.

### Multi-kind entries

Many entries touch several kinds. A habitat might involve governance, physics, social structure, and trade. The rule:

1. **The entry lives where the thing IS.** A habitat is a location. A faction is an NPC group. A governance system is a concept. Pick the primary kind and file it there.
2. **Tags make it discoverable.** If a location entry describes a governance system, tag it `governance`.
3. **Companion entries for significant subsystems.** If a minor entry contains a concept worth referencing independently, write a short companion entry in the appropriate directory that summarizes and links back. Keep it lean.
4. **Don't shatter coherent things.** Five fragments nobody reads is worse than one entry somebody does.

## Indexes and Shells

Indexes are **generated** by the wiki render — an artifact, not a source. The authoritative registry is the world's `world/` directory: every entity is a node, so per-type indexes fall out of the model.

**Shells** — entities referenced but not yet written — are real nodes with `status :shell` and no `path`. They appear in indexes and can be edge endpoints; the wiki render skips them. Use `#{future "Name"}` for a thing that has no entity at all yet. To flesh out a shell: drop `status :shell`, give it a `path`, write its prose.

## Meta Files

- **Tags** — the world's controlled vocabulary in `worlds/<id>/world/schema.rb`. The Tags wiki page is generated from it.
- **Timeline** — eras in `worlds/<id>/world/timeline.rb`. The Timeline wiki page is generated from them.
- **Causality** — generated from causal edges (`caused`/`causes`). There is no causality file.
- **Home** and other hand-authored wiki pages are `page` constructs in `worlds/<id>/world/pages.rb`.

## File Naming

- Lowercase, hyphenated entity ids → underscored symbols in the DSL (`the-false-form` → `:the_false_form`); the original slug lives in the entity's `path` attribute.
- One `.rb` file per entity, under `worlds/<id>/world/<kind>/<id>.rb`.

## Directory Structure

```
worlds.yml                  # the manifest: which worlds exist, which is default
worlds/
  <world-id>/
    CLAUDE.md               # the setting: premise, and what it narrows
    world/                  # THE SOURCE OF TRUTH — Lorecraft DSL
      schema.rb             # this world's tags, sections, setting-specific relations
      timeline.rb           # eras (fixed boundaries, descriptions); CE year = tick
      pages.rb              # authored standalone wiki pages (Home, …)
      cosmology/ concepts/ locations/ npcs/ history/ artifacts/ creatures/ ships/
      _shells.rb            # shell stubs: referenced-but-unwritten entities
      _edges.rb             # relationship edges (relate instances)
    guidance/               # this world's substitutions into craft/
    work-tracking/          # review status, queue, open questions
    research/               # audits and analysis of this world
craft/                      # world-agnostic authoring craft
  schema/base.rb            # kinds, effect verbs, relation taxonomy — every world loads this
  README.md                 # the craft/guidance contract
lorecraft/                  # the engine (Ruby): lib/, bin/lorecraft, tools/, test/
docs/                       # repo documentation, NOT player-facing
tools/review-app/           # inline review tool (Vite + React + Express)

CLAUDE.md / AGENTS.md       # this file — repo-wide conventions (kept in sync)
SYSTEM.md                   # technical architecture (the Lorecraft engine)
Makefile                    # validate / lint / wiki / graph / test, per world
.github/workflows/wiki.yml  # CI: check every world, publish the Glass Frontier wiki
```

**No committed markdown lore tree.** The only markdown output is the GitHub wiki, generated by CI from the published world's `world/` — never committed here. See `SYSTEM.md` for the engine and `lorecraft/README.md` for authoring the DSL.

## DM Knowledge

DM knowledge is true in the world but unavailable to players and NPCs. It is **excluded from the wiki render** and never referenced from public entries.

- Public entries describe what NPCs know — observable facts, common theories, gaps in the record.
- DM entries describe the hidden truth and cross-reference the public entry they extend.
- Public entries must stand on their own. Write them as if the DM entry doesn't exist.
- DM entities and edges carry `dm: true`. The validator fails the build on a public entry referencing a DM-only entity.

**What is DM knowledge:** secret motivations, hidden factions, the true cause of historical events — anything players should discover through play.

**What is not:** anything merely unwritten. Shells and `future` markers cover that.

## Critical: Lorecraft Workflow

Each world is a **[Lorecraft](lorecraft/README.md) DSL** — Ruby files under `worlds/<id>/world/`. The in-memory object graph is the structured truth layer; there is no database to keep in sync. The wiki and the graph JSON are **render targets**.

**Safety:** `worlds/` is versioned by git — that is the snapshot mechanism. Commit before a large rewrite.

### When creating or modifying an entry:

1. **Read the world's `CLAUDE.md`** and the guidance it points at.
2. **Look at the neighborhood.** Read the entity's file and the edges it appears in (`world/_edges.rb`).
3. **Edit the world file.** Static facts as attributes; prose via `prose` blocks; cross-links via `#{ref :other_id}`; unwritten things via `#{future "Name"}`.
4. **Add typed relationships.** Every meaningful connection is a typed edge — `relate :id, :verb, :src, :tgt` (optionally `since:`/`till:`/`dm: true`) or a moment effect. Unknown relation types are rejected.
5. **Validate and lint:** `make check WORLD=<id>`

### Commands

Every command runs against one world. `WORLD=<id>` on make, `--world <id>` (or `LORECRAFT_WORLD`) on the CLI. The default comes from `worlds.yml`.

| Command | Use |
|---------|-----|
| `make worlds` | list the tenants and their status |
| `make check WORLD=<id>` | validate + lint one world |
| `make check-all` | validate + lint every world with canon (scaffolds skipped) |
| `validate` | Hard structural invariants (refs resolve, domain/range, cardinality, causality, DM-leak). Raises. |
| `lint` | Graded findings: errors / warnings (prominence reach, orphans, double-article, …) / futures. |
| `wiki` | Generate the GitHub wiki into `build/<world>/wiki` (player audience; DM excluded). |
| `graph` | Node/edge JSON projection at a point in time. |
| `stats` / `topology` | Counts by kind; degree/reachability health. |
| `timeline <id>` | Life-of-entity event strip. |

Historical state is a query, not a stored field: `world.at(era: :the_accord, year: 5).out(:coremark, :operates_in)`.

## Review Workflow

Review tracking is `lorecraft review <pending|mark|stale|status> --world <id>` — git-mtime vs recorded review time, stored per-world in `worlds/<id>/work-tracking/review-status.json`.

### After modifying an entry:

1. `make check WORLD=<id>`
2. `ruby lorecraft/bin/lorecraft review mark --world <id> <file>`
3. **Resolve addressed comments** in that world's `work-tracking/review-comments.json` (set `status: "resolved"`). Mandatory.

### Review data & guidance:

- `worlds/<id>/work-tracking/review-status.json` — auto review timestamps
- `worlds/<id>/work-tracking/manual-review-status.json` — manual sign-off (review app UI)
- `worlds/<id>/work-tracking/review-comments.json` — inline review comments
- `craft/voice-review-prompt.md` — reusable LLM prompt for domain/register review
- `craft/writing-guidance.md` — mandatory writing rules

### Review app:

`cd tools/review-app && npm run dev` — inline review tool on `:3456`, serving `WORLD` (default `glass-frontier`). It lists the world's DSL files and shows each one as source, so a highlighted comment anchors to the text a fix gets applied to. Comment and status keys are world-root-relative (`world/concepts/ringglass.rb`) — the same key space as `lorecraft review`.

## Source Material

`../the-glass-frontier/docs/lore/` holds the original (non-canonical) reference material for the Glass Frontier. It has useful world details buried in over-engineered game scaffolding. Use it for inspiration, not as gospel. Strip the meta-gaming layers, keep the evocative imagery.
