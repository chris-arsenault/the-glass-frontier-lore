# Repository boundaries for The Ice Remembers

## Current responsibilities

| Repository or application | Owns | Does not own |
|---|---|---|
| Canonry Viewer bundle | The published simulation snapshot: entities, relationships, source events, accepted chronicles, era narratives, published lore pages, historian notes, and media associations | Editable Lorecraft structure or multi-world authoring rules |
| Tsonu Canon | The source-linked Lorecraft representation, explicit consistency corrections, editorial review state, and its generated multi-world reader | Simulation state, image generation records, or image bytes |
| Canonry Pics | The wider image catalog, visual curation metadata, gallery browsing, and derivatives of the shared image store | Which image illustrates a canonical entity or passage |

Tsonu Canon should import through the published JSON contract. It should not
load Canonry packages or query Canonry's working database. Stable source IDs,
the bundle checksum, and losslessness checks give the two repositories a narrow
interface that can be reviewed when either side changes.

The two readers overlap in search, entity pages, graph views, timelines, and
chronicle reading. They have different release boundaries. Canonry Viewer is an
exact presentation of an exported simulation; the Tsonu Canon reader presents
an editable Lorecraft corpus beside other worlds. Sharing React components
would tie both release trees to Canonry's application workspace without sharing
their data models. Share the bundle contract and asset identifiers first. A UI
package is warranted only if both readers later adopt the same page contract.

## Lore and Chronicle handling

Every accepted Chronicle and completed era narrative remains a document with
its complete published text and source selections. Every source event remains
queryable even when it does not become a reader page. The compact event record
keeps procedural history without turning 6,419 state changes into 6,419
articles.

The sixteen published `World:`, `Cultures:`, and `Lore:` pages are canonical
world guides and belong in the Lorecraft reader. The seven `System:` pages
describe Canonry, its generation tools, and its product interface; they remain
Canonry documentation.

## Images

Canonry's Viewer CloudFront distribution serves the private image bucket at
`https://theiceremembers.com/raw/...`. The Pics catalog uses
`https://theiceremembers.com` as the same asset base. Tsonu Canon should retain
the image ID, role, text anchor, and caption in the Lorecraft source while
linking to that existing public asset URL. It should not copy image bytes or
import the full Pics catalog.

The Pics catalog currently contains 4,482 images, far more than the images
placed in the published world. Catalog membership does not make an image part
of a canonical entry or Chronicle. A future gallery link should use an image ID
only after Pics declares a stable route for that ID; title and filename joins
are not acceptable.

## Deployed publication selected for migration

The deployed Viewer is the current canonical publication. Its bundle and the
older file in the local Canonry checkout describe the same project and
simulation run. Their core world counts agree at 321 entities, 1,544
relationships, 6,419 events, and 84 accepted Chronicles. Their publication
layers differ:

| Record | Local Canonry file | Deployed Viewer checked 2026-08-23 |
|---|---:|---:|
| Completed era narratives | 4 | 5 |
| Image map entries | 432 | 713 |

The local file was exported on 2026-02-22. The deployed bundle was exported on
2026-03-07, and its manifest was generated on 2026-03-30. The deployed Viewer
therefore includes later publication work, including the Frozen Peace era
narrative and additional image placements, while retaining the same simulated
history.

The importer reads the deployed manifest and complete fallback bundle directly,
then verifies both pinned checksums. It does not inspect the local Canonry
checkout or merge the two snapshots record by record.

## Update procedure after activation

1. Read the deployed manifest and record its checksum, generation time, core
   file, and fallback file.
2. Download the deployed fallback bundle and compare its checksum, source IDs,
   and publication counts with the prior snapshot.
3. Update the importer's pinned checksums after auditing the changed records.
4. Run the Ice Remembers importer into Lorecraft.
5. Review explicit correction logs and the generated diff.
6. Run the losslessness checks, Lorecraft checks, and reader build.
7. Activate the revision only after a person reviews changed prose and media
   placement.
