# Canonical Viewer migration contract

## Authority

The published world in the Canonry Viewer is the canonical record of The Ice Remembers. Its entities, relationships, events, chronicles, and era narratives describe the same world and must remain connected after migration.

Other simulations and game implementations may supply editorial guidance or suggest corrections, but they do not override the published record. A correction to the published world must be made as an explicit editorial change after migration.

## Pinned source

The source bundle is the deployed Viewer fallback at
`https://theiceremembers.com/bundles/default/bundle.json`. The deployed
manifest is
`https://theiceremembers.com/bundles/default/bundle.manifest.json`. A local
Canonry checkout is not an authority for this migration.

- Bundle title: `Best Run - Score 199/204`
- Bundle format version: 1
- Project: `Penguin Colony World` (`project_1765083188592`)
- Simulation run: `run_1767836984659_t95u020`
- Bundle exported: 2026-03-07T16:00:31.304Z
- Bundle SHA-256: `c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09`
- Manifest generated: 2026-03-30T09:24:18.731Z
- Manifest SHA-256: `65be5f1d6947752eec7eb601fa5d013f6066e109b39d6439329d7a5122d25f18`
- Manifest core: `bundle.core.b29d02c3.json`

The migration must fail clearly if either deployed hash changes or the
manifest stops naming `bundle.json` as its fallback. A changed deployment
requires a new audit before importing it.

## Published record

The pinned bundle contains:

- 321 entities
- 1,544 relationships
- 6,419 narrative events
- 84 accepted chronicles
- 5 completed era narratives
- 1,477 public historian notes
- 713 image records
- 23 published static pages: 16 world or culture pages and 7 Canonry system pages

All 84 chronicles are canonical. All 321 entities have current descriptions, summaries, and public historian notes. The migration must retain those records even when an entity or chronicle falls outside the themes emphasized by later game material.

## Entities

Every published entity becomes a Lorecraft entity. Preserve its source ID, name, kind, subtype, culture, current description, summary, aliases, prominence, temporal bounds, public historian notes, and published image association.

The bundle's entity status describes the entity in the world. It must use a setting-specific fact and must not be mapped to Lorecraft's editorial `status`, which records whether an entry is a shell, draft, or complete.

Generation prompts, model responses, token costs, retry records, editor checkpoints, and superseded description drafts are not world facts. They do not belong in Lorecraft prose or facts.

## Chronicles

Each accepted chronicle becomes a first-class Lorecraft document with its stable source ID. Preserve:

- title, summary, format, focus, and narrative style
- `finalContent` in full, including its section structure
- focal era, tick range, temporal description, and every touched era
- entrypoint, selected entities, selected events, selected relationships, and role assignments
- every public historian note and its text anchor
- the completed cover and every inline image placement visible in the Viewer

`finalContent` is authoritative. `assembledContent` is only a fallback in the Viewer and must not replace an accepted final version. Three chronicles contain accepted edits that differ from their assembled text.

A chronicle remains a document rather than an entity in the world graph. Its links to entities, events, relationships, and eras are nevertheless queryable and render as reader navigation.

## Era narratives

Each completed era narrative becomes a first-class Lorecraft document. Preserve its source ID, era, title, thesis, tone, complete text, source-chronicle list, cover, inline image placements, and completion state.

The bundle contains completed narratives for Great Thaw, Faction Wars, Clever
Ice Age, Orca Incursion, and Frozen Peace.

## Time

Bundle time values are simulation ticks, not calendar years. Lorecraft may keep integer time internally, but its public schema, command output, and reader must label this world's values as ticks.

The canonical eras are:

- Great Thaw: ticks 0 through 27
- Faction Wars: ticks 27 through 69
- Clever Ice Age: ticks 69 through 123
- Orca Incursion: ticks 123 through 181
- Frozen Peace: ticks 181 through 240

A chronicle may touch more than one era. Its full tick range and touched-era list must survive even when the reader files it under one focal era.

## Relationships and events

Preserve all meaningful entity relationships, including historical relationships and their active intervals. Each bundle relationship kind must map to a named Lorecraft relation with an explicit domain and range. Generic `related_to` records require editorial classification or an explicit logged omission; they must not become an untyped edge.

Preserve each event cited by a chronicle as a source record. Represent events that carry distinct historical substance as Lorecraft moments. Aggregate repetitive state changes into the affected entity, relationship interval, or historical account when separate moment pages would repeat the same fact. Aggregation must retain the source event IDs so that chronicle citations remain resolvable.

Event order and causal links must not be inferred from prose when the bundle supplies them.

## Historian notes

Public historian notes are part of the published world. They need a reader-facing, anchored annotation model shared by entities and chronicles. Lorecraft `log` entries are unsuitable because logs hold hidden editorial reasoning and do not render to readers.

The annotation must preserve the note ID, anchor phrase, text, type, and display form. A missing anchor is a validation error unless an editorial change deliberately retargets or removes the note.

## Images

Preserve stable image IDs and their association with entities, chronicles, and era narratives. Chronicle and era-narrative media must retain the cover or inline role, anchor text and occurrence, caption, size, and justification.

Only completed generated image requests and entity images displayed by the public Viewer belong to the published media set. Pending or generating requests are production state, not canon.

The lore repository owns the semantic placement and stable image reference. Image bytes and image-generation records may remain in the Canonry image system as long as the reader can resolve each stable reference without joining by title or filename.

## Static pages

World and culture pages may become authored Lorecraft pages composed from canonical entries. Canonry product and system pages remain application documentation and do not become facts about The Ice Remembers.

## Acceptance checks

The completed migration must prove that:

- every one of the 321 entity source IDs resolves to a public entry
- every one of the 84 accepted chronicle IDs resolves to the complete accepted text
- all 5 completed era narratives resolve and link to their source chronicles
- every entity, event, and relationship selected by a chronicle resolves to a retained source record
- every public historian note resolves to its document and text anchor
- every displayed cover and inline image placement resolves to a stable media reference
- historical relationship intervals and chronicle tick ranges remain ordered and queryable
- the public reader labels Ice Remembers time as ticks
- no generation prompt, token-cost record, retry record, or pending image request appears as lore

Validation should compare these invariants with the pinned bundle, not only count generated files.

## Complete import findings

The complete deployed import preserves all source records above. Every one of
the 713 image records is a displayed placement: 321 entity images, 89 covers,
and 303 inline images. Twenty-eight historian notes pointed to a surviving
passage with changed capitalization, Markdown emphasis, or nearby wording; the
import retargets each note and retains its published phrase in `source_anchor`.
Eight inline images lacked a usable character fallback for their published
anchor text; the import retains the published text and adds a fallback at the
corresponding passage.

Eighty published entities have no relationship, Chronicle selection, or event
participation in the deployed bundle. They comprise 73 people, 6 locations,
and 1 faction. Their prose, notes, and images are still canonical. Lorecraft
keeps them and reports the missing graph connections instead of inventing
relationships.
