# Tsonu Canon — Lore Repository

## What This Is

Canonical lore for several game worlds, authored in one place with one engine. Each world is a tenant under `worlds/<id>/`; the Lorecraft engine, the craft guidance and the tooling are shared.

| World | Directory | Status |
|---|---|---|
| The Glass Frontier | `worlds/glass-frontier/` | active — the Kaleidos system, a shattered ring world |
| The Ice Remembers | `worlds/ice-remembers/` | scaffold — Aurora Berg, from `../the-canonry-game` |
| The Dry War | `worlds/dry-war/` | active — Earth in 2090, governed by two superintelligences that both think they are helping |

`worlds.yml` is the manifest. The Glass Frontier feeds into `../the-canonry`.

**Before working on a world, read its `worlds/<id>/AGENTS.md` or `CLAUDE.md`.** This file carries what is true of every world; that file carries the setting.

## Three Layers

Everything in this repository sits in one of three layers, and putting a thing in the wrong one is the most common structural mistake here.

| Layer | Question it answers | Where |
|---|---|---|
| **Engine** | how is a world loaded, validated, rendered? | `lorecraft/`, `tools/`, `Makefile`, `SYSTEM.md` |
| **Craft** | how do you write well in *any* secondary world? | `craft/` |
| **World** | what is true of *this* setting? | `worlds/<id>/` |

The test: would this still be true in a world with different physics, different peoples and a different history? If yes it is craft. If no it is world.

`craft/` states the rule and the method; a world's `guidance/` supplies the substitutions — its examples, vocabulary, banned referents, fixed dates, culture patterns. Craft binds every world. A world may narrow a craft rule, never loosen it, and a genuine departure is written down as `Departs from craft/<file> §N: …` rather than left implicit. See `craft/README.md`.

## Context-Efficient Discovery

Lorecraft is also an interface for an LLM entering a world it was not trained
on. Do not bulk-load the lore tree. Use the command help and the narrowest view
that answers the task:

1. `ruby lorecraft/bin/lorecraft help workflow`
2. Read the world's `CLAUDE.md`. Use `guide list --world <id>` and
   `guide <name> --world <id>` for the guidance the task needs.
3. Use `search <query>` when the stable id is unknown. Then use `page <id>` for
   rendered prose, `timeline <id>` for change, `log <id>` for settled editorial
   reasoning, and `facts <id>` for local schema gaps.
4. Query `schema kind <name>` or `schema relation <name>` when the edit depends
   on the ontology. Use `connections <id>` for the local graph, then read the
   canonical entity and the relevant neighbor sources before editing.
5. Use `topology`, `web`, or `graph` only when the task concerns wider graph
   structure.

This path reduces context poisoning from stale generated pages, old reports,
unrelated lore, and private material. It extends effective context through
runtime retrieval and validation, not fine-tuning. The typed schema prevents
declared structural mistakes; it does not prove free prose true or complete.

## Writing Style

- **Write like a world encyclopedia, not a design document.** Entries should feel like they were written by someone who lives in the world — or at least by a skilled chronicler, not a systems engineer.
- **No technobabble.** If a term doesn't evoke something concrete and visual, rewrite it. "Switchline Flux Quota" is bad. "Wind-trade route" is better.
- **Day-forward focus.** Lore defines a world as it exists NOW. History informs the present but doesn't dominate. Players create the story going forward.
- **Show, don't specify.** Describe what a place feels like, what a faction cares about, what an artifact does — not its entity ID or moderation hook.
- **Give entries the space their subjects require.** A major entry may need many substantial sections. Split a passage only when it is chiefly about a distinct entity that should own those facts, not because the article has reached a word or section count.
- **Play it straight.** Even the strangest elements are presented matter-of-factly. The absurdity comes from the fiction being taken seriously, not from the author nudging the reader.
- **Name entities, don't describe them.** When prose references something that could be its own entity — a faction, a location, a person, an artifact — use a `#{future "Name"}` marker rather than describing the concept inline without naming it. `The #{future "Continuity"} governs Sithari`, not "the ruling party governs Sithari." Every named thing should be discoverable.

Full rules: `craft/writing-guidance.md`. Tone and references are per-world — `worlds/<id>/guidance/tone.md`.

### In-universe voice (critical)

All prose must be written from inside the world. There is no Earth. Three violations to watch for:

1. **Domain leakage** — real-world references used as comparisons. Comparisons must use in-world referents or universal physical concepts. Good: "the way cold-weather clothing is standard on an ice world." Bad: "like calling a cab." Each world lists its own banned referents and their substitutions in `guidance/voice-referents.md`.
2. **Wrong register** — design language in lore prose. Never write "this wiki", "DM answer", "culture slot", "will likely become its own entry", or "not yet defined" (as an authoring state). An entry can say "the cause remains unknown" (in-world gap) but never "this hasn't been written yet" (authoring gap). Use `future` markers instead.
3. **Author's notes in prose** — notes meant for collaborators that ended up in published text. Describing what a concept is *for* in the setting rather than what it *is* in the world.
4. **The narrator's verdict** — a closer that explains the material it just presented. "Neither sees the irony." "That is what makes it hard to see." An entry may report a disagreement at length and may not then tell the reader what it means.

A world that finds itself repeating a phrase it does not want can declare it with `ban_phrase "…", "why"` in its `world/schema.rb`; `make check` then fails on the next one.

**Work product versus history.** Prose is what is true of the world. Why a fact changed, what a correction rests on, which decision settled a name — that is history of the *entry*, and it goes in `log "YYYY-MM-DD — …"` on the entity, where `ruby lorecraft/bin/lorecraft log ID --world ID` can read it and no reader-facing render shows it. Never in prose.

**Who wrote it, and who has read it.** An entry declares `reviewed "YYYY-MM-DD"` once a person has read it against these rules, and a block may override with its own `reviewed:` or declare `drafted_by:` (`:ai` / `:human` / `:ai_human`). Each world declares its default drafter (`drafted_by_default :ai` in `world/schema.rb`), so a block only states the exception. `make provenance WORLD=<id>` reports the gap, and expires a read once the prose changed under it. Never set `reviewed` on a human's behalf — the point of the field is that a person read the words.

See `craft/voice-review-prompt.md` for the reusable review prompt.

## Writing Procedures And Documentation (critical)

These two rules govern every document that instructs someone: `CLAUDE.md` files, `guidance/`, `docs/`, ADRs, plans, and review prompts. They are separate from the lore rules above and they are not negotiable.

**Use the plain name for a thing.** Write "choose an observer", not "write from an instrument". Write "a related set of entries", not "a cluster". Write "an unrelated source of detail", not "a non-adjacent seed pull".

A coined term has to be defined before it can be used, and every reuse afterwards drifts from what it first meant. The test: if a noun in the document needs its own definition sentence and then appears in later steps, replace it with the ordinary description of what happens. Vocabulary the reader already owns needs no maintenance.

**Leave out provenance, comparison, and self-narration.** A procedure states what to do. It does not record where the technique came from, how this approach compares to the one used elsewhere, or what its author got wrong on the way to it.

The test: a reader executing the document should finish without having learned anything about the author's history with it. Attribution belongs in a commit message. A decision's reasoning belongs in a `log` on the entity that owns the fact. A rejected earlier approach belongs in neither.

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

**When the starting point has no date yet, name it as a future.** The estimate shows meanwhile, the missing date joins the future inventory, and writing that event with a year makes every span anchored to it exact without touching prose:

```ruby
"no trouble in #{elapsed future: "Kite-sail development", about: 200, approx: true} of use"
```

A length with no anchor at all — a lifespan, how long a recording archive reaches back — is not a span. Write it as `#{duration 80}` ("eighty years"), which spells the number out and says the absence of an anchor is deliberate. `make check` lists every span still typed as a literal.

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
- `subkind` — required. Narrows the kind to the entry's concrete class and adds that class's fact fields.
- `tags` — optional. Topics and themes this entry involves. **Controlled vocabulary** — only tags declared in the world's `world/schema.rb` (`tag :name, "meaning"`). Add a tag there before using it. Tags describe what an entry is *about* (`governance`, `resonance`, `trade`), not what it is *related to*.
- `prominence` — optional but encouraged. How widely known this entity is: `forgotten`, `marginal`, `recognized`, `renowned`, `mythic`. NOT power or importance — only awareness. Gates how far references should reach in the knowledge graph.
- `narrative_role` — optional. `viewpoint` or `titan`, for NPCs with elevated narrative functions. See `craft/narrative-roles.md`. Most NPCs don't have this.
- `alias` — optional. Common alternative name(s).
- `status` — `complete`, `draft`, `shell`, `needs_refinement`.
- Additional fields as needed (`region`, `era`, …). Add only when they carry real information.

Generic `related:` lists do not exist. Relationships are typed edges from the
schema taxonomy (`leads`, `depends_on`, `located_in`, …); unknown and explicitly
banned types are rejected by the validator.

### Kind, subkind and custom facts

Facts compose in order: kind fields, then subkind fields, then custom fields on
one entry. The shared declarations live in `craft/schema/base.rb`; a world may
add subkinds or fields with `extend_kind` in `world/schema.rb`.

```ruby
extend_kind :npc do
  field :born, type: :year
  calculated :age, from: :born, calculate: :elapsed_years
  field :occupation, type: :text
  relation_field :based_in, relation: :located_in, cardinality: :many

  subkind :official do
    field :jurisdiction, type: :text, expected: false
  end
end

npc :inez_bell do
  subkind :official
  occupation "Municipal seal and voter-roll keeper"
  custom_fact :counter, "Cairo Ridge records hall"
end
```

Subkind fields may replace a kind field's label or `expected` setting without
moving it. A subkind can use `omit_facts :field_name` when an inherited field
does not apply to that class. Do not omit a field merely because its value has
not been written. Use `custom_fact` only for a useful fact unique to one entry; if a
second entry needs it, move the field into their subkind. Relationship facts
come from typed edges, and calculated facts come from canonical values. Reader
pages omit missing facts; `make facts WORLD=<id>` reports coverage by kind and
subkind. Do not fill a gap with `unknown`, `none recorded`, or a guessed value.

A world may declare `require_fact_cards! from: :renowned, minimum: 4`. Its
public entries at that prominence and above must resolve that many facts or lint
fails. The same `make facts` report lists entries below the configured minimum.
Use `extend_subkind :faction, :government do ... end` when a world's recurring
fact applies to one existing subkind rather than the whole kind.

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
`era`, `thread`, `loop`, `theme`

Era entities are reader-facing chronology but may declare `structural true` so
topology reports their bookkeeping degree separately. `thread`, `loop`, and
`theme` are non-reader kinds.

DM knowledge is a visibility flag on an entity or prose block, not an entity kind.

Choosing: a named, specific thing → atlas kind. Something describing how the
world works (species traits, materials, systems) → reference kind. Narrative
structure → structural kind. DM-only entities keep the kind that describes what
they are and add the visibility flag.

### Multi-kind entries

Many entries touch several kinds. A habitat might involve governance, physics, social structure, and trade. The rule:

1. **The entry lives where the thing IS.** A habitat is a location. A faction is an NPC group. A governance system is a concept. Pick the primary kind and file it there.
2. **Tags make it discoverable.** If a location entry describes a governance system, tag it `governance`.
3. **Companion entries for significant subsystems.** If a minor entry contains a concept worth referencing independently, write a short companion entry in the appropriate directory that summarizes and links back. Keep it lean.
4. **Don't shatter coherent things.** Five fragments nobody reads is worse than one entry somebody does.

## Indexes and Shells

Indexes are **generated** by the reader and wiki renders — artifacts, not sources. The authoritative registry is the world's `world/` directory: every entity is a node, so browse views and per-type indexes fall out of the model.

**Shells** — entities referenced but not yet written — are real nodes with `status :shell` and no `path`. They can be edge endpoints and appear in broad graph projections; the public reader and wiki skip them. Use `#{future "Name"}` for a thing that has no entity at all yet. To flesh out a shell: drop `status :shell` and write its prose. Fresh entries receive a route from kind and id; retain `path` only when preserving an established legacy route.

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
                            # (review state, questions and the queue are
                            #  declarations on the entities, not files)
    research/               # audits and analysis of this world
    work-tracking/          # only pre-DSL migration snapshots, where one exists
                            # (glass-frontier); lorecraft/tools/import.rb reads it
craft/                      # world-agnostic authoring craft
  schema/base.rb            # kinds, effect verbs, relation taxonomy — every world loads this
  README.md                 # the craft/guidance contract
lorecraft/                  # the engine (Ruby): lib/, bin/lorecraft, tools/, test/
docs/                       # repo documentation, NOT player-facing
tools/review-app/           # inline review tool (Vite + React + Express)

CLAUDE.md / AGENTS.md       # this file — repo-wide conventions (kept in sync)
SYSTEM.md                   # technical architecture (the Lorecraft engine)
Makefile                    # validate / lint / wiki / graph / test, per world
.github/workflows/ci.yml    # CI: check active worlds, build and deploy the reader
```

**No committed markdown lore tree.** The deployed reader consumes generated
JSON; Markdown trees and the GitHub wiki are optional exports. All are generated
from `world/` and never committed here. See `SYSTEM.md` for the architecture and
`lorecraft/README.md` for authoring and just-in-time command help.

## DM Knowledge

DM knowledge is true in the world but unavailable to players and NPCs. It is **excluded from the public reader and wiki render** and never referenced from public entries.

- Public entries describe what NPCs know — observable facts, common theories, gaps in the record.
- DM entries describe the hidden truth and cross-reference the public entry they extend.
- Public entries must stand on their own. Write them as if the DM entry doesn't exist.
- DM entities use `dm!(public_entry: :id)`; DM blocks and edges use `dm: true`. The validator fails the build on public content referencing a DM-only entity.

**What is DM knowledge:** secret motivations, hidden factions, the true cause of historical events — anything players should discover through play.

**What is not:** anything merely unwritten. Shells and `future` markers cover that.

## Critical: Lorecraft Workflow

Each world is a **[Lorecraft](lorecraft/README.md) DSL** — Ruby files under `worlds/<id>/world/`. The in-memory object graph is the structured truth layer; there is no database to keep in sync. Reader JSON, editorial JSON, Markdown, wiki pages, and graph JSON are **render targets**.

**Safety:** `worlds/` is versioned by git — that is the snapshot mechanism. Commit before a large rewrite.

### When creating or modifying an entry:

1. **Read the world's `CLAUDE.md`** and the guidance it points at.
2. **Look at the neighborhood.** Run `connections <id>`, then read the entity's file and the relevant `world/_edges*.rb` sources it reports.
3. **Edit the world file.** Static facts as attributes; prose via `prose` blocks; cross-links via `#{ref :other_id}`; unwritten things via `#{future "Name"}`.
4. **Add typed relationships.** Every meaningful connection is a typed edge — `relate :id, :verb, :src, :tgt` (optionally `since:`/`till:`/`dm: true`) or a moment effect. Unknown relation types are rejected.
5. **Validate and lint:** `make check WORLD=<id>`

### Commands

Every content/query command runs against one world. Use `WORLD=<id>` on make,
or `--world <id>` (or `LORECRAFT_WORLD`) on the CLI. The default comes from
`worlds.yml`; `help` loads no world and `worlds` lists the manifest.
Commands whose help lists `--format` emit either human-readable text or native
JSON from the same typed result; validation and lint use diagnostic records.

| Command | Use |
|---------|-----|
| `help [command\|topic]` | Task-sized command and focused topics, including `workflow`, `schema-authoring`, `entry`, `time`, `audience`, `composition`, and `review`. |
| `make worlds` | list the tenants and their status |
| `make check WORLD=<id>` | validate + lint one world |
| `make check-all` | validate + lint every world with canon (scaffolds skipped) |
| `search <query>` | Find stable ids and canonical source paths from titles, aliases, tags, subkinds, and resolved summaries. |
| `schema kinds\|kind\|relations\|relation\|tags\|sections` | Inspect the ontology loaded for one world. |
| `guide list\|<name>` | Read one authoritative craft or world guidance file. |
| `validate` | Hard structural invariants (refs resolve, domain/range, cardinality, causality, DM-leak). Exits nonzero on failure. |
| `lint` | Graded findings: errors / warnings (prominence reach, orphans, double-article, …) / futures. |
| `render <dir>` | Generate a directory-shaped Markdown inspection view; defaults to all audiences. |
| `wiki` | Generate an optional GitHub wiki export into `build/<world>/wiki` (player audience; DM excluded). |
| `graph` | Node/edge JSON projection at a point in time. |
| `stats` / `topology` | Counts by kind; degree/reachability health. |
| `timeline <id>` | Life-of-entity effect strip. |
| `log [<id>]` | The entries' own history — why a fact changed, what a correction rests on. Not world content. |
| `provenance [<id>]` | Global or entry-owned blocks: who drafted them, who read them, and whose read expired. |
| `facts [<id>]` | Global expected-fact coverage or one entry's resolved and missing values. |
| `queue [<id>]` | Global or entry-scoped `question` declarations plus computed findings. A render, not a file. |
| `page <id>` | One entity's rendered page on stdout. What the review app shows as prose. |
| `connections <id>` | Incoming and outgoing typed edges with intervals, titles, and source paths. |
| `path <from> <to>` | Bounded shortest route over live typed edges, excluding bookkeeping relations. |
| `web` | What holds together without the most prominent entities. The work list for `craft/connecting-entities.md`. |

Historical state is a query, not a stored field: `world.at(era: :the_accord, year: 5).out(:coremark, :operates_in)`.

## Review Workflow

**Review state lives on the content, and nowhere else.** There is no tracker,
queue file, or comments file keyed by source path.

| What | Where |
|---|---|
| a human read this entry | `reviewed "YYYY-MM-DD"` on the entity (or `reviewed:` on one block) |
| the entry is finished | `status :complete` |
| something is unresolved | `question "…", raised:, on:` on the entity |
| why a fact changed | `log "YYYY-MM-DD — …"` on the entity |

`make provenance WORLD=<id>` reports what has been read and whose read expired — git supplies the expiry, so a read stops counting once the prose changes under it. `make queue WORLD=<id>` assembles the open questions with the engine's findings. Both are renders; deleting the output loses nothing.

### After modifying an entry:

1. `make check WORLD=<id>`
2. **Resolve addressed questions** — delete the `question` line, and `log` the decision if the reasoning is worth keeping. Mandatory.
3. Do not set `reviewed` for a human. The field means a person read the words.

### Review guidance:

- `craft/voice-review-prompt.md` — reusable LLM prompt for domain/register review
- `craft/writing-guidance.md` — mandatory writing rules

### Review app:

`cd tools/review-app && npm run dev` — inline review tool on `:3456`, with a loopback-only API on `:3457`, serving `WORLD` (default `glass-frontier`). It addresses entries by stable id rather than by source file, so files containing several entities remain safe. Every write supplies the source revision, reparses the exact entity declaration, reloads and validates the staged world, and atomically installs the candidate. Highlighting a passage inserts a `question`; resolving deletes that exact question token; the two buttons set the desired `reviewed` and `status :complete` state. From the repository root, run `make review-check` after app changes and `make check WORLD=<id>` after a review session.

## Source Material

`../the-glass-frontier/docs/lore/` holds the original (non-canonical) reference material for the Glass Frontier. It has useful world details buried in over-engineered game scaffolding. Use it for inspiration, not as gospel. Strip the meta-gaming layers, keep the evocative imagery.
