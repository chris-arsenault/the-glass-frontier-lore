# Encyclopedia Authoring

The Atlas names particular people, places, objects, groups, and events. The
Encyclopedia describes reusable world material: kinds of organism, ordinary
roles, learned practices, device classes, materials, recurring conditions, and
features that can appear in more than one scene. It also separates discrete
extraordinary abilities from doctrines: an ability produces an effect, a
practice is an action someone learns to perform, and a doctrine is a belief,
rule, measure, prohibition, or interpretive framework.

Use two tests before choosing the catalog.

1. Can two independent examples coexist? If yes, the subject may be reusable.
2. Does the subject name one bounded instance whose identity persists while it
   acts, moves, changes ownership, suffers damage, or anchors a Chronicle? If
   yes, it belongs in the Atlas. A reusable category can have a history without
   becoming one bounded instance: a species may vanish, a culture may change,
   and a material may become scarce while each remains Encyclopedia material.

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
subkind, and `status :shell`. Use a shell when an Atlas entry needs a stable
primary type before the reusable article has been authored. Shells may be
shared by any number of Atlas entries, remain absent from player queries and
exports, and do not satisfy any content target.

A world may make that classification complete with
`require_encyclopedia_types! kinds: [...]`. Every Atlas entry of a listed kind,
including an Atlas shell, must then declare `type_of`; structural kinds stay
outside the requirement.

The shared schema declares eleven kinds: `lifeform`, `culture`, `role`,
`practice`, `doctrine`, `ability`, `institution`, `technology`, `resource`,
`phenomenon`, and `place_feature`. A subkind is a concise authored
classification within one kind. It is not registered as another schema layer
and does not change the kind's contract.

Typed fields and descriptive-identity keys are declared on the kind. They apply
to every authored subkind. Put a setting-specific field on the kind with
`extend_encyclopedia_kind`; do not create a subkind schema to hold it.

`practice` contains discrete techniques and actions a player can perform. It
does not contain religions, cosmologies, calculations, taboos, standing rules,
or edicts; those belong to `doctrine`. `ability` contains extraordinary effects
and uses the ordered power tiers declared on that kind by the world. A complete
ability gives both an effect and a cost for every tier it declares. It need not
appear at every tier.

```ruby
extend_encyclopedia_kind :ability do
  tier :broad, rank: 1, description: "Lowest effect and cost."
  tier :apex, rank: 4, description: "Highest effect and lasting cost."
end

encyclopedia :signal_folding do
  kind :ability
  subkind :resonant_effect
  tier :broad, effect: "Carry a warning across one broken relay.", cost: "A short headache."
end
```

`technology` includes vehicle classes. An `institution` is a reusable
organizational form; a particular organization that can act in history remains
an Atlas faction. `place_feature` is provisional: use it only for a recurring
component or arrangement of a place that is neither a particular installation
nor independently useful technology.

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

A complete entry contains:

- at least two concrete signs that it is present;
- at least one thing people can do with, learn from, or exploit;
- at least one cost, failure mode, tension, or changing condition;
- at least two distinct variations;
- canonical prose;
- global availability or at least one non-empty contextual selector;
- only registered topics and context tags.

A complete `ability` also declares at least one world-defined tier and gives
that tier a non-empty effect and cost. Draft abilities may omit the cost while
the consequence remains unsettled.

The signs are observations, not summaries. The affordance gives action. The
pressure changes or complicates that action. Variations prevent every instance
from appearing in the same form.

Culture entries must describe several forms or internal variations. Write
practices, institutions, material life, and pressures. Do not assign a fixed
personality to members, infer an individual's behavior from membership, or put
the agency of a government or community on a culture entry.

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
