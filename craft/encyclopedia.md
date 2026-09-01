---
title: Encyclopedia Authoring
---

# Encyclopedia Authoring

The Atlas names particular people, places, objects, groups, and events. The
Encyclopedia is what a GM opens to put something in a scene without inventing
it: the bestiary, the people in the room, the machines, the goods, the things a
person can do, the conditions of the world, and how its societies live. An
entry gives the table concrete material to recognize and reuse. It is not a
catalog of background texture, and it is not a set of classification labels for
Atlas entries.

Use three tests before choosing the catalog.

1. Can two independent examples coexist? If yes, the subject may be reusable.
2. Does the subject name one bounded instance whose identity persists while it
   acts, moves, changes ownership, suffers damage, or anchors a Chronicle? If
   yes, it belongs in the Atlas. A reusable category can have a history without
   becoming one bounded instance: a species may vanish, a culture may change,
   and a material may become scarce while each remains Encyclopedia material.
3. Would the name be equally at home in a different world? If yes, it is a
   classification label, not a subject. `Field Instrument`, `Utility Vessel`,
   `Armed Conflict`, and `Settlement` pass the first two tests and are still
   worthless, because they name nothing about this setting and no article could
   ever be written about them. Every entry must identify a setting-specific
   construction, operating principle, stock, standing, or pattern.

A named ship belongs in the Atlas. A ship class belongs in the Encyclopedia. A
specific prototype belongs in the Atlas and may declare its Encyclopedia class
with `type_of`.

Veiled status never overrides this boundary. Every veiled Atlas entry names a
major particular person, population, organism, object, group, incident, or
other story subject. If a proposed veiled entry instead names a reusable type,
write that type in the Encyclopedia and put a distinctly named instance in the
Atlas position. The named instance keeps the veil and Atlas relationships and
declares `type_of` when the Encyclopedia entry is its primary type. Do not give
the Atlas instance the Encyclopedia type's id.

## Required fields

Every entry declares a title, kind, subkind, authoring status, summary, topics,
availability, and prevalence.

An entry may instead be a structural shell containing only its title, kind,
subkind, and `status :shell`. A shell holds a settled taxonomic position for a
subject whose article has not been written. It asserts that the subject passes
the three tests above; only the prose is missing. Shells may be shared by any
number of Atlas entries, remain absent from player queries and exports, and do
not satisfy any content target.

An empty shell and an unauthorable label look identical in the source — same
five lines, same `status :shell`. They are not the same object. Judge a shell
by its subject, never by its status: ask whether an article could be written
about it, not whether one has been.

`type_of` is an optional link from an Atlas entry to a reusable class that
actually exists. It is never a coverage obligation. Requiring every Atlas entry
of some kind to carry one is what manufactures generic placeholder types with
nothing in them; an Atlas entry with no reusable class declares none.

The shared schema declares seven kinds, each answering a question a GM asks at
the table:

| Kind | The question it answers |
|---|---|
| `lifeform` | what lives here |
| `role` | who is in the room |
| `technology` | what is this machine |
| `resource` | what is in the hold |
| `ability` | what can a person do |
| `phenomenon` | what is the world doing |
| `culture` | why do people act like that |

A subkind is a concise authored classification within one kind. It does not
define fields or another schema layer. A kind may declare its allowed
classification names with `classifications`; this constrains the authored
vocabulary without changing the kind's contract. Use a classification when a
distinction matters to readers but does not deserve a kind of its own.

Typed fields and descriptive-identity keys are declared on the kind. They apply
to every authored subkind. Put a setting-specific field on the kind with
`extend_encyclopedia_kind`; do not create a subkind schema to hold it.

Read the loaded kind description with `schema reference-kind culture`; the DSL
is the authority for what a culture entry contains. At the authoring boundary,
an article must support many ordinary situations or many named enactments. A
single procedure, command, test, prohibition, or warrant does not earn an
Encyclopedia article just because it can recur.

Read the loaded kind description with `schema reference-kind role`; the DSL is
the authority for what a role entry contains. At the authoring boundary, an
unfamiliar title must arise from a real difference in how the work or standing
is understood, and its summary supplies an ordinary gloss.

Read the loaded kind description with `schema reference-kind ability`; the DSL
is the authority for its entry boundary. `ability` holds both extraordinary
effects and trained techniques, because from a player's side both answer the
same question. A world may identify the classifications that count as spells
and declare its in-world spell tiers. Each spell then declares exactly one tier.
The tier classifies the spell; it is not a progression of stronger versions.
Other ability classifications declare no tier. Separate the two with
classifications rather than with a second kind.

A named act, writ, decree, standing order, or local codification remains an
Atlas edict. Its exact command stays on that named Atlas subject. `type_of`
identifies the broad culture entry that produced or governs it, without making
an Atlas graph edge. `belongs_to` records another broad cultural, religious,
professional, or governmental context when useful. A second-reader rule or
two-breath shutdown belongs on the named act that imposes it, not in a second
Encyclopedia article.

```ruby
extend_encyclopedia_kind :ability do
  classifications :spell, :technique
  tiered_classifications :spell
  tier :broad, rank: 1, description: "Wide-band spellwork."
  tier :narrow, rank: 2, description: "Tightly concentrated spellwork."
end

encyclopedia :signal_folding do
  kind :ability
  subkind :spell
  tier :broad
  effect "Carry a warning across one broken relay."
  limits "The warning must fit the line's measured word count."
  consequence "The folder is exhausted for several hours."
end
```

`technology` includes vehicle classes and built infrastructure. `culture` also
holds the bases on which a society recognizes a group as an actor — what gives
a crew, house, or compact standing beyond its members. A faction's Atlas
subkind already records its organizational form; do not write an Encyclopedia
article solely to repeat that subkind.

Do not restate the Atlas taxonomy in the Encyclopedia. A kind whose entries
mirror the Atlas subkind vocabulary — one article per settlement, region, or
workshop — records nothing the schema does not already hold, and every Atlas
entry pointing at it learns nothing from the link.

`topics` describe what the entry discusses and use the world's ordinary tag
vocabulary. They support browsing and search. They never make the entry
applicable to a scene.

`availability` says where the entry is a useful candidate. An entry is either
global or has one or more context selectors. Within a selector, every `all`
term must match, at least one `any` term must match when the group is not empty,
and no `none` term may match. Selectors are alternatives.

`prevalence` says how often the reusable subject occurs when its availability
matches:

- `common` — ordinary and routinely encountered;
- `uncommon` — familiar but not expected in every suitable place;
- `rare` — exceptional even where it belongs.

Prevalence is not Atlas prominence. Prominence measures how widely a particular
named entity is known. An obscure named animal can have marginal prominence
while its species is common. A rare material can be renowned.

Do not add `unique` prevalence. A unique thing belongs in the Atlas.

## Context tags

A context tag states a property of a world, place, scene, or participant. The
world schema registers its allowed scopes and may name a parent or compatible
tags. A declaration carries no hidden effect.

Atlas entities use `context_tags` for properties they contribute to a context.
Locations use place-scoped tags; other Atlas entities use participant-scoped
tags. Scene and world tags come from the caller's current context rather than
from an Atlas entity.

Use `encyclopedia_reference` when a tag would conceal a particular species,
culture, or other Encyclopedia subject. Do not make a pseudo-tag such as
`culture:sitharian` when the selector means the Sitharian culture entry.

## Complete entries

A complete non-spell entry contains:

- at least two concrete signs that it is present;
- at least one thing people can do with, learn from, or exploit;
- at least two distinct variations;
- canonical prose;
- global availability or at least one non-empty contextual selector;
- only registered topics and context tags.

A complete spell declares exactly one world-defined tier and gives the spell a
non-empty effect, limits, and consequence. These replace the generic cue,
affordance, and variation minimums: write any of those only when they add
information. A trained technique or innate sensitivity declares no spell tier.

The signs are observations, not summaries. The affordance gives action.
Variations prevent every instance from appearing in the same form. A pressure
is optional. Use one when a recurring cost, consequence, tension, or changing
condition materially helps someone use the subject; do not invent a failure
mode merely to complete the entry.

Define the subject by its positive traits. State what a thing does, has, and
causes; a sentence built on what it lacks, what nobody does, or what it is
unlike defines through absence and reads as a reveal. Reserve negation for two
places where it carries real content: an in-world rule people actually follow,
and a measurement an instrument or survey actually returned.

Culture entries must describe several forms or internal variations. Write
practices, institutions, material life, and internal differences. Do not assign
a fixed personality to members, infer an individual's behavior from membership,
or put the agency of a government or community on a culture entry.

## Namespace and audience

The Atlas and Encyclopedia are separate stores. The Encyclopedia has no
relationship graph. Atlas entities retain their own nodes and typed edges. A
particular Atlas entity may declare one primary `type_of` target. It may also
declare repeatable, kind-qualified memberships with
`belongs_to :culture, :sitharian`; `culture :sitharian` is equivalent shorthand.
The engine derives separate reverse instance and membership lists. This is
classification, not graph topology.

Encyclopedia kind fields are scalar `text`, `integer`, or `year` values and
point into neither store. Descriptive identity is local string data declared by
kind; neither `type_of` nor `belongs_to` copies it into an Atlas entity. The GM
decides how to use classification at the table. Prose uses `ref` for Atlas
entries and `encyclopedia_ref` for Encyclopedia entries. Embeds stay within
their owner's namespace.

An Encyclopedia entry or one prose block may be GM-only. Public exports omit
GM-only entries, blocks, and usage. Public Atlas prose does not
link to hidden Encyclopedia material.

Encyclopedia entries do not have GM notes, prominence, positions, route
geometry, moments, Lore Fragments, or ordinary Atlas edges. They may have typed
kind fields, descriptive identity, editorial logs and questions, and a
character-origin role. `species` and `culture` roles require a short origin
blurb. Play does not mutate Encyclopedia entries.
