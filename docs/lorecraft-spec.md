# Lorecraft Language Reference

This document describes the implemented DSL. The shorter operational guide is
[`lorecraft/README.md`](../lorecraft/README.md); command-specific documentation
is available through `ruby lorecraft/bin/lorecraft help`.

Lorecraft uses ordinary Ruby files as a canonical declaration language. Loading
a world constructs an in-memory `World` containing its schema, timeline,
entities, moments, named relationship instances, and authored pages. No database
or generated Markdown participates in the load.

## 1. World selection and load order

`worlds.yml` declares each world's `id`, `title`, and `status`, plus the default
id. `Lorecraft::Worlds.find` resolves the manifest from any directory below the
repository root.

```ruby
target = Lorecraft::Worlds.find("dry-war")
world = Lorecraft.load(target.glob, prelude: target.prelude)
```

The shared `craft/schema/base.rb` prelude loads first. Within the world glob,
`schema.rb` and `timeline.rb` load before the remaining files, which then load
in sorted path order. This gives effects in the same year a deterministic final
tie-break. Definitions may refer forward because validation runs after the
whole world loads.

A scaffold world is not published. It may have only a schema and placeholder
timeline or may hold staged migration work. Repository-wide checks and normal
site-data builds skip it; `SITE_WORLD=<id> make site-data` builds it alone for a
local reader preview.

## 2. Schema

The schema declares the language a world may use.

```ruby
schema do
  entity_type :npc, :faction, :geographic_location
  entity_type :thread, wiki: false

  effect :set
  effect :clear
  effect :create
  effect :destroy
  effect :transfer

  relation :located_in,
    category: :spatial,
    temporal: true,
    domain: :npc,
    range: :geographic_location,
    cardinality: :many

  tag :governance, "Authority and who decides"
  section_heading :history
  drafted_by_default :ai_human
end
```

Multiple `schema` blocks extend the same `Schema` instance. The shared prelude
declares world-independent kinds, facts, effects, and relationship types. A
world schema adds its controlled tags and sections, setting-specific relations,
and narrower fact definitions.

A world that has migrated away from only some shared Atlas kinds narrows its
active constructor and inspection vocabulary without changing the prelude used
by other worlds:

```ruby
restrict_entity_kinds! to: %i[npc faction geographic_location incident era thread]
```

The restriction must name declared shared kinds. A source declaration using an
excluded kind fails during load, and `schema kinds` omits it for that world.

### Kinds and subkinds

`entity_type` registers a top-level entity constructor. `wiki: false` marks a
kind that the public reader and wiki omit. The repository's shared schema
requires every authored entity to declare a known subkind.

```ruby
extend_kind :npc do
  field :born, type: :year
  calculated :age, from: :born, calculate: :elapsed_years
  relation_field :based_in, relation: :located_in, cardinality: :many

  subkind :official do
    field :jurisdiction, type: :text, expected: false
  end
end

extend_subkind :npc, :official do
  field :appointing_body, type: :entity, expected: false
end
```

Facts compose in this order: kind fields, subkind fields, then one entity's
custom fields. A later definition with the same name replaces the earlier one
without changing its position.

Supported fact types:

| Type | Authored value |
|---|---|
| `text` | Ruby `String` |
| `integer` | Ruby `Integer` |
| `year` | an absolute year or another supported time anchor |
| `entity` | one known entity id |
| `entities` | one or more known entity ids |

`field` reads an authored value. `relation_field` reads incoming or outgoing
Atlas edges at the query year and has `one` or `many` cardinality. It never
queries the Encyclopedia. `calculated` supports `elapsed_years`,
`first_moment_year`, `anchor_year`, `timeline_period`, `previous_era`, and
`next_era`.

`expected: true` makes absence visible in `facts`; it does not force an author
to invent a value. `require_fact_cards! from: :renowned, minimum: 4` makes too
few resolved public facts a lint error for entries at or above that prominence.
`require_gm_notes! from: :recognized, minimum: 1` does the same for GM notes on
the entries a running game can be offered.

### Relationships

```ruby
relation :opposes,
  category: :social,
  temporal: true,
  domain: :npc,
  range: :faction

relation :member_of,
  category: :organizational,
  temporal: true,
  domain: :npc,
  range: :faction,
  cardinality: :one,
  exclusive_with: :opposes

relation :adjacent_to, category: :spatial, symmetric: true do
  property :frame, type: :frame
  property :bearing_deg, type: :number, minimum: 0, maximum_exclusive: 360,
                         requires: :frame
  property :distance_km, type: :number, minimum_exclusive: 0
end
```

Every relationship use must name a registered type. Definitions record:

- `category`, required by convention and exposed to consumers;
- `temporal`, exposed as relation metadata;
- optional `domain` and `range` kind allowlists;
- `cardinality`, where `one` forbids overlapping live targets for a source;
- `exclusive_with`, which forbids the listed relation on the same pair;
- optional `symmetric` and `inverse` metadata;
- typed properties with optional requirements, numeric bounds, dependencies,
  and mutual exclusions;
- an optional human description.

The validator enforces known and non-banned relation names, domain, range,
cardinality, and exclusions. `symmetric` and `inverse` describe the relation for
rendered consumers; the resolver stores and queries the authored direction.
Use `state.in` for reverse traversal.

Property types are `boolean`, `entity`, `enum`, `frame`, `integer`, `number`,
and `text`. Enum properties declare `values:`; frame values must name a declared
spatial frame. `required: true` requires the value on every use of that relation;
`requires:` makes one property depend on another; `exclusive_with:` prevents two
properties from appearing on the same edge.

The shared schema declares `related_to` with category `banned`, allowing the
validator to issue a specific error for a generic edge instead of reporting an
unknown word.

### Descriptive identity

An Atlas or Encyclopedia kind may declare descriptive identity keys. They define
a stable local string dictionary for entries of that kind. Subkinds and
relations cannot declare keys.

```ruby
extend_kind :species do
  identity_key :visual
end

extend_kind :npc do
  identity_key :visual
  identity_key :bearing
end
```

`identity_key` accepts only the key name. An entry writes any applicable values
with `descriptive_identity key: "text"`. Values must be non-empty strings;
unfilled keys remain absent. The system performs no source lookup, inheritance,
merge, override, relation traversal, or provenance tracking. Veiled Atlas
entries remain blank slates and cannot declare descriptive identity.

### Controlled declarations

- `tag :id, "meaning"` defines the only tag ids entries may use.
- `section_heading :id` defines non-main prose sections.
- `ban_phrase "text", "reason"` turns a known world-specific prose habit into
  a lint error.
- `drafted_by_default :ai`, `:human`, or `:ai_human` supplies block provenance
  when a block has no override.
- `require_explicit_subkinds!` rejects entities that omit `subkind`.
- `require_entity_summaries! maximum: 280` makes a missing or overlong summary
  a lint error on every written reader entity and rendered moment, including
  articles and DM entries.
- `location_kind :geographic_location, :installation` identifies the kinds that
  need an explicit chronicle-location decision.
- `playable_role :species, "meaning"` declares one controlled selection role.
- `declare_static_attr :name` adds an attribute that effects may not mutate.

## 2A. Encyclopedia schema and entries

The Encyclopedia is a second canonical namespace for reusable world material.
Its entries do not become Atlas entities, pages, moments, or graph nodes.

```ruby
schema do
  encyclopedia_type :lifeform,
                    description: "A reusable kind of living or anomalously living organism." do
    field :lifespan, type: :text, expected: false
    identity_key :appearance
  end

  context_tag :"realm:surface", "Planetary surface", scopes: :place
end
```

The shared schema declares seven Encyclopedia kinds: `lifeform`, `role`,
`technology`, `resource`, `ability`, `phenomenon`, and `culture`. Each kind's
DSL declaration owns its
semantic description. The schema stops at the kind contract. `subkind` is
required authored classification, not a separately registered schema. A kind
may constrain the allowed authored labels with `classifications`; those labels
do not declare fields. Worlds register context tags. Each tag lists one or more
of `world`, `place`, `scene`, and `participant` as allowed scopes; it may also
declare a parent and compatible tags.

An Encyclopedia kind may declare typed attribute fields and descriptive-
identity keys. These declarations apply at the kind level to every authored
subkind. A world adds setting-specific declarations with
`extend_encyclopedia_kind`; there is no Encyclopedia subkind schema.

An ability kind may declare in-world tiers with `tier NAME, rank: INTEGER` and
identify the spell classifications with `tiered_classifications`. An entry in
one of those classifications uses `tier NAME` exactly once. The tier classifies
the spell; it does not contain another effect or create a progression. Complete
spells require spell-level `effect`, `limits`, and `consequence` fields. Other
ability classifications declare no tier.

```ruby
encyclopedia :marn do
  title "Marn"
  kind :lifeform
  subkind :animal
  status :complete
  summary "Broad-footed herd animals kept along settled surface routes."
  topics :ecology, :trade
  prevalence :common
  descriptive_identity appearance: "A deep-bodied grazer with broad flexible feet."

  appears_when all: { place: [:"realm:surface"] }

  cue "A whole tether line turns toward the same empty ground."
  cue "Broad flexible feet leave shallow crescent prints."
  affordance "Herders read herd movement as an early warning."
  pressure "A changed machine rhythm can unsettle every animal in a pen."
  variation "Road herds carry household marks on shedding horn."
  variation "Market animals know machinery better than open routes."
  prose "Marn travel in tethered herds along the settled roads."
end

creature :ironwhistle do
  title "Ironwhistle"
  type_of :marn
  prose "Ironwhistle is a named #{encyclopedia_ref :marn, "herd animal"}."
end
```

An entry declares either `available_globally` or one or more `appears_when`
selectors. Selector groups are `all`, `any`, and `none`, keyed by context scope.
`encyclopedia_reference(:id)` makes one selector value an exact Encyclopedia
identity rather than a context tag. It cannot target Atlas. Topics use the
world's ordinary tag vocabulary.

Prevalence is required and is `common`, `uncommon`, or `rare`. It measures
frequency when the entry is applicable. Atlas prominence measures awareness of
a particular named entity and does not appear on Encyclopedia entries.

A complete non-spell entry requires two cues, one affordance, two variations,
prose, and valid availability. A complete spell instead requires exactly one
tier declared by its world and non-empty `effect`, `limits`, and `consequence`
fields; its cues, affordances, and variations are optional. A pressure is
optional for every entry. An Encyclopedia entry has no custom facts, GM notes,
placement, temporal state, or ordinary Atlas relationships. It may carry typed
kind fields, descriptive identity, editorial logs and questions, and a
`character_role` of `species` or `culture` with an `origin_blurb`. Whole entries
and individual prose or usage records may be GM-only. Encyclopedia prose may
embed another Encyclopedia entry but not Atlas prose.

The Encyclopedia has no relationship graph. A particular Atlas entity may use
one `type_of` attribute to identify its primary reusable Encyclopedia type.
It may also declare repeatable, kind-qualified memberships with
`belongs_to :culture, :sitharian`; `culture :sitharian` is equivalent shorthand.
`World#encyclopedia_instances` and `World#encyclopedia_members` derive separate
reverse lists. None of these values is an Atlas relationship. Encyclopedia kind
fields are scalar `text`, `integer`, or `year` values. They do not point into
either catalog. Atlas `entity` and `entities` facts remain Atlas-only.

Prose uses `ref` for Atlas ids and `encyclopedia_ref` for Encyclopedia ids.
Embeds remain within their owner's namespace. The same stable id may exist in
both stores without ambiguity because every lookup states its namespace.

Atlas and Encyclopedia entries may each have local descriptive identity under
their own kind's keys. `type_of` and `belongs_to` never copy those values. A GM
may use classification information without the engine deciding how it changes
a particular entity's description.

Atlas entities declare `context_tags`. A world may require every entity in one
playable role to have at least one with
`require_context_tags! for_playable: :chronicle_location`.

## 2B. Naming lexicon

A world may declare one top-level editorial vocabulary for naming. The block is
part of the loaded `World`, but it is not reader-facing canon and does not enter
the Atlas or Encyclopedia. Lorecraft treats every naming lexicon as open: it is
the vocabulary established so far, not a list of permitted words.

```ruby
naming_lexicon do
  note "Names should reinforce a vocabulary unique to this world."
  extension "Add a word when a recurring subject needs language this vocabulary cannot supply."
  word :resonance,
       meaning: "The ambient force shaped by the world's technology.",
       use: "A productive root for effects, instruments, and practices.",
       examples: ["Resonance Cascade", "resonant instruments"],
       boundary: "Not a prefix for unrelated technology."
  pattern :capital_names,
          "Personal and family names share the morphology established in canon.",
          examples: ["Senna Korvanis", "Aven Talindra"],
          boundary: "Applies to names formed in the capital's culture."
  avoid "Do not join a thematic modifier to a generic animal or device."
end
```

The block accepts any number of `note`, `extension`, `word`, `pattern`, and
`avoid` declarations, but it must contain at least one declaration and at least
one extension rule. A `word` requires a unique name, non-empty `meaning` and
naming `use`, one or more non-empty examples, and a non-empty boundary. A
`pattern` requires a unique name, a non-empty note, one or more non-empty
examples, and a non-empty boundary. A second block, duplicate word, duplicate
pattern, missing extension rule, missing examples, or blank value raises
`DefinitionError` during load.

`World#naming_lexicon` exposes the declaration. `lexicon --format text|json`
always reports that the vocabulary is open, followed by the same ordered notes,
extension rules, words, patterns, warnings, and source location. Each word and
pattern includes its examples and boundary. The engine does not infer names or
lint titles from this guidance.

## 3. Timeline

```ruby
timeline do
  unit :year
  era :first_age, starts: 2000, length: 40, title: "The First Age"
  era :second_age, length: 60, title: "The Second Age"
  now year: 2085
end
```

Eras are ordered half-open intervals. When `starts:` is omitted, the next era
begins where the previous one ends. An era may carry a title and description for
rendered chronology. The unit defaults to `:year`; `unit :tick` keeps simulation
steps correctly labeled in public output while retaining the same integer time
model.

Accepted time points are:

- an integer absolute year;
- `:now`;
- `{ year: 2085 }`;
- `{ era: :second_age, year: 5 }`, where `year` is an offset from the era start.

`World#year_of` also resolves a moment id, an era id, or an entity id. An entity
anchors to the earliest moment that belongs to it.

## 4. Entities

An entity constructor is the entity's registered kind.

```ruby
npc :inez_bell do
  name "Inez Bell"
  summary "Inez Bell is the municipal seal and voter-roll keeper at Cairo Ridge."
  subkind :official
  tags :governance, :legibility
  prominence :marginal
  status :complete
  path "player/npcs/inez-bell.md"

  occupation "Municipal seal and voter-roll keeper"
  jurisdiction "Cairo"
  custom_fact :counter, "Cairo Ridge records hall"

  prose "Bell works at #{ref :cairo_ridge, "Cairo Ridge"}."
end
```

Common explicit methods are `name`/`title`, `summary`, `tags`, `prominence`, `aka`,
`status`, `region`, `narrative_role`, `subkind`, `reviewed`, `dm!`, `prose`,
`cards`, `fact`, `custom_fact`, `question`, `log`, `gm_note`, and `derive`.

`article!` marks a reader reference page. It stays in search and page renders
but is absent from the induced game-world graph. `playable_as :role` accepts a
schema-declared selection role; its absence means the entity is not a selection.
Accepted origin roles require `origin_blurb`, one line no longer than 140
characters.

`veiled "Sentence."` defines a thin public story hook with a stable id and its
real kind. Its affirmative declarative sentence appears during story selection;
`summary` separately identifies what the entity is in Atlas and search results.
A veiled entry must name a major particular story subject. Veiling does not
move a reusable type into the Atlas: that type belongs in the Encyclopedia, and
a distinctly named Atlas instance retains the veil and graph relationships with
`type_of` when applicable. A veiled Atlas id cannot duplicate an Encyclopedia
type id.
A veiled entity cannot also carry prose, facts, DM visibility, a location kind,
an article flag, or a playable role.

`gm_note :kind, "…"` declares how the entry behaves when a game reaches it. The
kinds are `appears`, `triggered_by`, and `complicates`. A note is one to three
complete sentences on one line, at most 320 characters, and an entity carries at
most three. Notes resolve the same inline markers as prose and publish with the
entry in every render. Validation rejects a note on a veiled entry or a shell,
an unknown kind, and a note that closes on withheld material, delivers a verdict
on its own content, states an authoring gap, or advises on running the table.

World schemas can enforce complete player-facing sets:

```ruby
require_playable_coverage! :chronicle_location,
                           kinds: location_kinds,
                           except: %i[kaleidos kaleidos_system the_glass_frontier the_sun],
                           exclusive: true
require_playable_count! :homeland, minimum: 8, maximum: 12
require_focus_choices! role: :chronicle_location,
                       minimum: 10,
                       veiled_minimum_locations: 1,
                       veiled_maximum_locations: 4,
                       veiled_majority_location_count: 2,
                       veiled_cross_location_minimum: 1,
                       veiled_required_kinds: %i[npc artifact creature transport ability],
                       veiled_require_all_subkinds: true,
                       veiled_kind_minimum: 2,
                       veiled_kind_maximum: 8
```

`require_playable_coverage!` requires `playable_as` on every non-shell,
non-article entity of the listed kinds except the named entries. With
`exclusive: true`, no other kind may accept the role. The exception list records
the small boundary of a broad rule without adding inverse metadata to each
entity. `require_playable_count!` sets the allowed number of accepted entries.
`require_focus_choices!` checks direct public, non-bookkeeping, non-location
neighbors for every location accepted for the role. Its optional veiled
settings set the allowed location membership, require a strict majority at one
membership count, and require entries whose locations have no direct
location-to-location edge. A world can also require specific real kinds, cover
every declared subkind within them, and set a minimum and maximum count per
kind. The `focus` query reports both distributions in text and JSON.

`veiled` is replaceable metadata on a real entity, not a separate entity kind
or an authoring status. Expanding one preserves the entity id and kind, removes
the `veiled` declaration, and adds normal facts and prose. Existing consumers
can keep referring to the same id, which leaves room for a later play-to-canon
workflow without requiring one now.

A call matching an attribute-backed schema fact sets that typed fact. Other
unknown calls with arguments become extensible static attributes. This is why
Lorecraft's schema is strong around declared facts and relationships but is not
a static type system for every Ruby expression in an entity body.

### Fixed spatial metadata

Spatial frames define authored coordinate systems. They describe a stable map,
not orbital motion.

```ruby
spatial_frame :system_chart,
              origin: :the_sun,
              coordinates: :polar,
              radial_unit: :orbit_rank

spatial_frame :kaleidos_surface,
              origin: :kaleidos,
              parent: :system_chart,
              coordinates: :surface,
              prime_meridian: :sithari
```

A child frame's origin must have a position in its parent. The entity named as
a surface frame's prime meridian must have longitude zero in that frame.

An absolute polar position uses `radius` and `angle_deg`. A relative polar
position names another entity in the same frame and uses `radial_offset` and
`angle_offset_deg`. Surface positions use `latitude_deg` and `longitude_deg`.
They may add either a positive `extent_radius_km` or `size_class` with value
`site`, `district`, `region`, or `continent`.

```ruby
geographic_location :kaleidos do
  position frame: :system_chart, radius: 2, angle_deg: 78
end

installation :threshold do
  position frame: :system_chart, relative_to: :kaleidos,
           radial_offset: 0.04, angle_offset_deg: 3
end
```

A route keeps its paths on the route entity. An `anchor` names an entity whose
position resolves to the route's frame. A local `point` supplies coordinates in
that frame without creating another lore entity. A named `path` contains two or
more declared anchors or points, and several paths may share them.

```ruby
route_geometry frame: :system_chart do
  anchor :keelward
  point :outer_turn, radius: 3.1, angle_deg: 118
  anchor :ashvane
  path :main, through: %i[keelward outer_turn ashvane]
end
```

Allowed authoring statuses are `complete`, `draft`, `shell`, and
`needs_refinement`. Status describes the entry, not the entity's standing in
the world. A shell is a graph node with no rendered page. A complete or draft
entry receives a render path from its kind and id when `path` is absent. An
explicit `path` preserves an established legacy route; it is not required for a
fresh entry.

`derive(:name) { |state| ... }` stores an advanced calculation hook on the
entity. Callers invoke the proc explicitly; fact cards use declared
`calculated` fields instead.

## 5. Prose, cards, and markers

### Prose blocks

```ruby
prose <<~PROSE
  Main text.
PROSE

prose <<~PROSE, section: :history, heading: "History", at: 2080, dm: false
  Text visible from 2080 onward.
PROSE
```

Blocks keep declaration order. `section` defaults to `main`; non-main sections
must use the controlled section vocabulary. `at:` delays a block until that
year. `dm: true` hides one block without hiding its owner. Entity prose may
declare `origin:`, `drafted_by:`, and `reviewed:`.

### Authored cards

```ruby
cards "Continue reading", section: :relationships do
  card :cairo, "The city whose records Bell keeps."
  card :the_cairo_retreat, "The event that moved her office."
end
```

Cards preserve an author's heading, order, targets, and descriptions. They are
navigation, not world facts, and do not create typed relationship edges. A card
target must be a known, written reader page available to the block's audience.

### Inline markers

Markers are Ruby interpolation helpers encoded in the prose until a validator
or renderer supplies the world, year, format, and audience.

```ruby
#{ref :cairo, "Cairo"}                       # known entity link
#{ref nil, "Timeline", path: "Timeline.md"} # non-entity path
#{rel :located_in}                           # live outgoing targets
#{rel :located_in, :cairo}                   # one pinned target
#{future "North Levee Office"}               # no entity yet
#{embed :cairo, :history}                    # transcluded prose
#{elapsed :the_cairo_retreat, ago: true}      # computed span
#{elapsed future: "Office founding", about: 8}
#{year :the_cairo_retreat}                    # absolute year
#{duration 80}                                # length with no date anchor
```

`ref` must resolve unless it uses a path. `future` is an explicit unresolved
name and enters lint's future inventory. `embed` accepts only entity prose,
creates a derived `embeds` edge, and rejects missing, shell, empty-section,
audience-unsafe, or cyclic composition.

`elapsed` accepts `:now`, a year, a moment, an era, or an entity as either
anchor. The exact style uses digits; `approx: true` uses centralized rounded
wording; `ago: true` appends “ago”. A future start requires an `about:` estimate
until a matching dated id exists. `duration` is reserved for a length with no
event anchor.

## 6. Moments and effects

```ruby
genesis :bell_baseline, at: 2078 do
  effects { set :inez_bell, located_in: :cairo }
end

moment :cairo_retreat, at: 2082, of: :inez_bell, type: :incident do
  title "The Cairo Retreat"
  summary "The municipal seal keeper moved Cairo's records uphill in 2082."
  prose "Bell carried the municipal seal uphill."
  effects do
    transfer :located_in, from: :cairo, to: :cairo_ridge, subject: :inez_bell
  end
end
```

`genesis` establishes baseline state and has no reader page. `moment` records a
dated occurrence, may own prose, and is page-bearing unless it is genesis. Its
`summary` states what happened, where, and when when those facts are known. Use
`span: { from:, to: }` instead of `at:` for a ranged moment. `of:` selects the
entity whose page receives the moment prose; otherwise the first effect subject
is the home entity.

Effects:

| Effect | Result |
|---|---|
| `create :id` | entity begins existing at the moment year |
| `destroy :id` | entity stops existing at the moment year |
| `set :id, relation: :target` | opens one typed edge |
| `set_relation :id, :relation, :target, props: { ... }` | opens an edge with typed properties |
| `set :id, attribute: value` | sets dynamic state when the key is not a relation |
| `clear :id, :relation, :target` | closes one edge |
| `clear :id, :relation` | closes all matching outgoing edges |
| `transfer :relation, from:, to:, subject:` | clear old target, then set new target |

The resolver folds effects through a query year in deterministic order. An
entity without explicit `create`/`destroy` exists across the whole timeline.
Validation rejects a relation use before creation or after destruction. It also
rejects effects that target declared static attributes.

## 7. Named relationship instances

```ruby
relate :bell_at_ridge, :located_in, :inez_bell, :cairo_ridge,
       since: 2082, till: 2090 do
  prose "The records hall kept Bell's counter until the new levee opened."
end
```

`relate` gives one edge a stable source id, interval, DM flag, and optional
prose. The edge lowers to set and clear effects. Its prose renders on the source
entity's page. Named relationship instances are not entity pages and are not
targets for `ref`.

With no `since:`, the edge begins at the first timeline year. `till:` is
exclusive. `props:` values must match the relation's declared property schema.

## 8. Authored pages

```ruby
page :home, title: "The Dry War", wiki: "Home", audience: :player do
  prose "Begin with #{ref :the_dry_war, "the Dry War"}."
end
```

Pages hold reader front matter such as Home. They do not enter the entity graph
and carry no fact card or relationships. Their markers resolve through the same
world and audience rules as entity prose; validation rejects unknown ids and
public references to DM entities.

## 9. Narrative documents and source events

```ruby
event_record "event-17", tick: 11, era: :first_age, kind: :state_change,
             subject: :inez_bell, description: "The seal changed hands."

chronicle :the_seal do
  title "The Seal"
  summary "The accepted account."
  status :complete
  focal_era :first_age
  ticks from: 10, to: 12
  touched_eras :first_age
  entities :inez_bell
  events "event-17"
  prose "The complete accepted text."
  annotation :copyist, anchor: "accepted text", text: "The second copy omits this line."
  image "seal-cover", role: :cover
end

era_narrative :first_age_record do
  title "The First Age"
  status :complete
  era :first_age
  source_chronicles :the_seal
  prose "The complete era account."
end
```

Chronicles and era narratives are public documents outside the entity graph.
Chronicle entity, event, relationship, era, note-anchor, and media-anchor links
must resolve. Era-narrative source chronicles must resolve. `event_record`
retains a source event as a citable record without making it a page.

Public annotations render for readers. Editorial logs do not. Media records
preserve stable asset ids; a URL is optional because image bytes may be owned by
another service.

## 10. Editorial state

```ruby
reviewed "2026-08-12"
question "Where was Bell born?", raised: "2026-08-12", on: "Bell works"
log "2026-08-12 — Moved the office after the retreat acquired a date."
```

`reviewed` means a human read the words on that date. Block-level `reviewed:`
overrides the entity date. `provenance` uses git history to mark a review expired
after the relevant prose changes.

`question` is unresolved work. `on:` anchors it to reader-shaped text; lint
warns when the anchor no longer appears. Delete an answered question and use
`log` when the reason for the resulting decision will matter later. Logs and
questions never enter public reader output.

## 11. Query API

```ruby
world.entity(:inez_bell)
world.moment(:cairo_retreat)
world.chronicle(:the_seal)
world.era_narrative(:first_age_record)
world.event_record("event-17")
world[:inez_bell]
world.at(:now).exists?(:inez_bell)
world.at(2080).out(:inez_bell, :located_in, audience: :player)
world.at(2080).in(:cairo, :located_in)
world.at(2080).attr(:inez_bell, :standing)
world.moments_of(:inez_bell)
world.relationships
world.game_world_nodes
world.game_world_relationships
world.pending_edges
world.year_of(:cairo_retreat)
world.elapsed(:cairo_retreat, :now)
```

`State#out` returns target ids; `State#in` returns source ids. The optional
audience filters DM edges. `World#relationships` is the distinct all-time graph,
including derived embed edges. `pending_edges` lists future names by owning
entity and does not invent nodes for them.

`game_world_nodes` removes entities marked `article!`; its relationship query
induces the remaining graph so article-incident edges also disappear. Veiled
entries remain world nodes. Pass `include_veiled: false` when measuring only
fully developed entries.

## 12. Command query surface

`help` is repository-independent. Every content command selects one world with
`--world ID`, `LORECRAFT_WORLD`, or the default in `worlds.yml`. The CLI exposes
small queries so a caller can inspect one concern without loading a generated
wiki or the whole graph:

| Need | Command |
|---|---|
| find a stable id | `search QUERY` |
| search reusable material | `reference search QUERY` |
| match reusable material to context | `reference match --context SCOPE=TAG --encyclopedia SCOPE=ID` |
| list Atlas instances of a reusable type | `reference page ID` |
| read current instructions | `guide list` / `guide NAME` |
| read the world's naming vocabulary | `lexicon` |
| inspect allowed types and values | `schema kinds` / `schema kind NAME` / `schema relations` / `schema relation NAME` / `schema frames` / `schema frame NAME` / `schema tags` / `schema sections` |
| read one reader-shaped entry | `page ID` |
| read one accepted chronicle | `chronicle ID` |
| read one era narrative | `era-narrative ID` |
| inspect one entry's graph | `connections ID` |
| connect two known entries | `path FROM TO` |
| inspect all changes to one entry | `timeline ID` |
| inspect structured facts | `facts [ID]` |
| inspect fixed map data | `placement [ID]` |
| measure direct chronicle focus choices | `focus` |
| choose or narrow editorial work | `queue [ID]` |
| inspect drafting and review | `provenance [ID]` |
| recover settled entry history | `log [ID]` |

`search` ranks entities and narrative documents by titles, ids, aliases, tags,
subkinds, and resolved summaries. It
returns a bounded result with each stable id and canonical source. Player
audience excludes DM entries, shells, and non-reader kinds. A result locates
canon; it does not replace source inspection.

`guide` reads authoritative Markdown and reports its source path. `guide world`
returns the selected world's `CLAUDE.md`; `guide list` inventories shared and
world guidance. The aliases `voice`, `naming`, `method`, and `canon` prefer a
matching world guide and otherwise resolve to shared guidance. No guide text is
copied into the CLI.

`schema` inspects the merged shared and world schema that validation will use.
Kind detail includes subkinds and fact shapes; relation detail includes its
declared constraints. `reference-kinds` and `context-tags` inspect the separate
Encyclopedia contract. Tags and prose sections come from the selected world.

`reference` never returns Atlas entries. `list` and `search` return bounded
catalog results, `page` reads one entry and its derived Atlas instance list,
and `match` evaluates context selectors while reporting the matched terms.
Existing `search`, `page`, `connections`, `path`, and `graph` remain Atlas-only.

`connections` reports every historical relationship interval touching one
entry, including direction, neighbor title and type, canonical source, and
whether the interval is live at the selected year. `path` searches only live
edges at that year. It traverses them in either direction but reports their
canonical direction, defaults to six hops, and accepts at most twenty. It
excludes `active_during`, `emerged_during`, `created_during`,
`disappeared_during`, and `mentions` so shared bookkeeping nodes do not create a
misleading route.

The optional id on `facts`, `queue`, and `provenance` narrows the existing
world-wide report without changing its meaning. `page` always renders the
present reader view. `timeline` returns every effect touching the entity rather
than a snapshot at one year.

Commands whose exact help lists `--format text|json` serialize JSON from the
same typed result used by their text form. Validation and lint use diagnostic
records; other bounded commands use query objects. Other commands reject JSON.
`graph` is always JSON, either on stdout or in its optional output file. Run
`help COMMAND` before using a selector; the CLI rejects `--world`, `--at`,
`--audience`, or `--format` when that command's help does not list it.

## 13. Validation and lint

`validate` checks hard invariants:

- reference, card, fact, effect, and relationship targets resolve;
- public content does not reference or embed DM-only entities;
- a relationship with a DM-only endpoint declares `dm: true`;
- relationship type, banned category, optional domain/range, cardinality,
  exclusions, and typed properties;
- spatial frame nesting, coordinates, relative anchors, route paths, and public
  visibility;
- effects do not change declared static attributes;
- temporal existence and moment ordering are causal;
- tags, prominence, subkinds, fact types, and sections use their schemas;
- Atlas context tags use the registered vocabulary and allowed place or
  participant scope;
- Encyclopedia entries have valid kinds, statuses, topics, prevalence,
  availability, complete-entry content, and audience boundaries;
- Encyclopedia shells contain only title, kind, subkind, and shell status and
  remain absent from player queries and exports;
- Atlas `type_of` targets one known, audience-compatible Encyclopedia entry;
  kind-qualified `belongs_to` memberships target entries of the declared kind;
  neither enters the Atlas graph; a world may require primary types for named
  Atlas kinds;
- descriptive identity uses only kind-declared keys and non-empty local strings;
- narrative roles apply only to NPCs and use `viewpoint` or `titan`;
- authoring status and provenance values have allowed shapes.

`lint` runs checks that need assembled prose or graph shape. It reports levels
`error`, `warn`, `future`, and `info`. Current checks cover titles, known DM-leak
phrases, stale futures, prominence reach, required prominent-entry facts,
hand-typed span inventory, stale question anchors, double articles,
world-banned phrases, resonance vocabulary, DM public-entry links, shell/path
consistency, causal and spatial cycles, antisymmetry, embed cycles, orphans, and
location hierarchy.

`make check WORLD=<id>` runs both. `make check-all` applies that gate to every
active world.

The JSON command boundary uses schema version 1. `validate` returns `status` and
`diagnostics`; `lint` adds counts for `error`, `warn`, `future`, and `info`.
Each diagnostic contains `severity`, `code`, `message`, `object_path`,
`source_file`, `source_line`, `repair_instruction`, `help_topic`, and `details`.
Repository sources use repository-relative paths, and line numbers identify the
owning declaration. Findings exit 1; source parse and load failures exit 2 with
the same envelope when JSON was requested.

The Ruby APIs `World#validation_diagnostics` and `World#lint_diagnostics` return
immutable records. `World#validate` continues to return strings, and
`World#lint` continues to return `Finding` values with `level` and `message`.
The diagnostic APIs accept `root:` and make source paths relative to it when
possible. The CLI always supplies the repository root.

## 14. Render targets

```ruby
world.render(:markdown, out: "build/tree", audience: :player, at: :now)
world.render(:wiki, out: "build/wiki", at: :now)
world.render(:graph, audience: :player, at: 2080)
world.render(:timeline, entity: :inez_bell)
world.render(:site, out: "build/site", world_id: "dry-war",
                    title: "The Dry War", revision: "...")
```

- `markdown` writes a directory tree with front matter and resolved prose.
- `wiki` writes flat player-facing pages plus generated indexes, tags, timeline,
  causality, and sidebar.
- `graph` returns JSON nodes and full relationship intervals, marking which are
  live at the render year and retaining positions, route geometry, edge
  properties, and local descriptive identity on Atlas nodes.
- `timeline` returns a Markdown effect strip for one entity.
- `site` writes the public JSON used by the React reader and can write a
  separate private editorial bundle. Schema version 12 carries singular primary
  Encyclopedia types, kind-qualified memberships, local descriptive identity,
  and a separate `encyclopedia` bundle with derived Atlas instance and member
  lists.

All targets are disposable. The DSL is the only source loaded on the next run.

## 15. Deliberate boundaries

- Lorecraft is an internal Ruby DSL, not a sandbox for untrusted input.
- It does not infer facts or relationships from prose.
- It does not prove prose truth, completeness, tone, or originality.
- Auxiliary static attributes remain extensible unless promoted to schema facts.
- Symmetric and inverse relation declarations are metadata; stored traversal
  follows authored edge direction.
- Generated search and graph views help discovery but do not replace source
  inspection before an edit.
