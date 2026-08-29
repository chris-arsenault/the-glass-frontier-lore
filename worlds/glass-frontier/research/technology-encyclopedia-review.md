# Technology Atlas and Encyclopedia Review Ledger

Status: technology extraction complete. Resource is the next unresolved
category. This file records the technology boundary and its measured Atlas
effect; it is not a queue for new technology authoring.

## Boundary now in force

- A reusable tool, machine, vehicle class, record form, or motive system lives
  in the Encyclopedia.
- A named machine, vessel, instrument, record set, or historical event lives
  in the Atlas.
- A named Atlas instance declares its reusable class with `type_of`. Additional
  reusable classifications use `belongs_to` or a kind shorthand such as
  `technology`. Neither declaration creates an Atlas graph edge.
- Ordinary prose names a reusable technology with `encyclopedia_ref`; Atlas
  relationships connect named Atlas entities only.
- Removing a reusable Atlas hub requires an explicit exception. KITE is the
  sole exception in this category.

## Resolved technologies

| Encyclopedia technology | Atlas replacement | Atlas kind and ownership |
|---|---|---|
| Channel Barge | `low_lamp` — Low Lamp | transport; the barge working the Dovra and Lowbank neighborhood |
| Claim Rig | `four_shutters` — Four Shutters | transport; the Pell rig working Deep Shear claims |
| Echo Strip | `answering_strips` — The Answering Strips | artifact; the two records carried by Quiet Measure |
| The Eighth Seal | `six_returning_seals` — The Six Returning Seals | artifact; the seals recovered from the returning pods |
| Flitter | `pale_catch` — Pale Catch | transport; the Prismwell craft serving Keelward and Ladderwell |
| Heat-Road Hauler | `third_radiator` — Third Radiator | transport; the Ashvane surface hauler tied to four named stops and crews |
| Heavy Hauler | `steady_return` — Steady Return | transport; the Pell Assembly vessel carrying Ringglass and microcavities |
| Hood | `third_window` — Third Window | artifact; the Clarisant hood tied to Ratters, stillwater, ringglass, and the Empty Bearing |
| Kinetic Horn | `load_note` — The Load Note | artifact; the Clarisant horn used in the old load exercise |
| KITE | `first_repeatable_kite_tuning` — The First Repeatable Kite Tuning | incident; the 2235 reproducible tuning recorded during the Signal Famine |
| Resonant Instruments | `open_reed` — The Open Reed | artifact; the training instrument used by Tuners and the Clarisant |
| Stillweight | `blue_core_stillweights` — The Blue-Core Stillweights | artifact; the Blue Step Works set used at Ladderwell |
| Tuning Compass | `shared_reference` — The Shared Reference | artifact; the compass used by Counterweight and Underlayers route crews |
| Wurm-bit | `first_clean_plate` — The First Clean Plate | artifact; the Ninth Kiln plate cut from the Pell wurm-bit lot |

`Tally` also declares `type_of :flitter`, and `Nine Holds` declares
`type_of :heavy_hauler`. They were already distinct Atlas vessels and did not
replace graph nodes. Rainline, Pale Catch, Steady Return, and Third Radiator
declare KITE membership where the existing material identifies that engine.

The Encyclopedia retains the reusable construction, operation, limits, and
variations. The Atlas replacements retain the named object or vessel, its
current condition, and its graph neighborhood. In particular, the Answering
Strips, the Six Returning Seals, the Blue-Core Stillweights, and the First
Clean Plate now own the particular passages formerly embedded in their type
articles. The KITE article links to the dated Atlas incident instead of
repeating the event.

## KITE exception

KITE was a reusable, highly connected general component. Its nine Atlas
relationships mixed three kinds of information:

- one dated event during the Signal Famine;
- three reusable dependencies on microcavities, resonance, and ringglass; and
- five uses or responses involving Flitter, Heat-Road Hauler, Ironwhistle,
  Prismwell, and Rainline.

The dated statement now belongs to the First Repeatable Kite Tuning incident,
whose `active_during` relationship points to the Signal Famine. The reusable
dependencies remain in the KITE article. Atlas vessels use KITE membership,
and other Atlas prose uses `encyclopedia_ref`. The other eight graph edges are
intentionally absent; no named Atlas object was invented to impersonate the
general engine hub.

The incident's only graph relationship is bookkeeping, so the non-bookkeeping
topology reports it as an isolated degree-zero entry. This is the direct and
declared consequence of the KITE exception.

## Structural evidence

The review began at 502 Atlas entities, 1,432 named relationships, 497 game
entities, and 1,435 game edges, of which 1,423 were non-bookkeeping. It ends at
502 Atlas entities, 1,424 named relationships, 497 game entities, and 1,427
game edges, of which 1,415 are non-bookkeeping.

All 57 old relationships not incident to KITE have matching directed endpoints
after substituting the thirteen named replacement ids. Eleven replacements
retain the same total degree. Pale Catch and Third Radiator each lose only
their former edge to the removed KITE hub. Two relationship verbs changed to
describe the named evidence accurately while retaining endpoints and
direction: the Echo Ledger Conclave `studies` the Answering Strips rather than
possessing the technology class, and Tangent `studies` the Six Returning Seals
rather than carrying the reusable record type.

The KITE incident retains one dated relationship, so the net change is eight
named and game edges. The component count rises from four to five and the
isolated set gains only `first_repeatable_kite_tuning`. The established thin
set gains the same incident. Chronicle focus remains 84 of 86 playable
locations, with only the existing nine-choice deficits at Deep Shear and Kesh.

The reusable preflight is `lorecraft/tools/atlas_removal_impact.rb`. The saved
technology projection is
`build/glass-frontier/before-technology-review.json`. It inventories the 66
relationships in the original fourteen-node neighborhood, the references to
repair, the affected neighbors, and the raw-removal focus damage. The explicit
old-to-new comparison above separates the 57 preserved relationships from the
nine-edge KITE exception.

Validation passes. Lint reports only the pre-existing Deep Shear and Kesh
Chronicle focus deficits.
