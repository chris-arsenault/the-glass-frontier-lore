# Source policy

## Canonical record

The deployed public Canonry Viewer bundle is the authority for Aurora Berg. The
pinned deployment URLs and checksums are recorded in
`research/canonical-viewer-contract.md`. Do not substitute a bundle from a
local Canonry checkout. Stop the migration if either deployed checksum changes.

Preserve every accepted chronicle and completed era narrative in full. Preserve
every entity's current description and summary, even when an entry is minor,
domestic, comic, religious, mercantile, or unrelated to a war. Public historian
notes remain attached to the passage they annotate.

Do not silently rewrite imported prose. A later consistency correction changes
the canonical entry explicitly and records the reason in its `log`.

The game repository can expose a weak portrayal, an unclear theme, or a useful
question. It cannot establish that an event happened on Aurora Berg.

## Entity mapping

Keep the bundle ID in `source_id`. Use the normal underscored Lorecraft ID for
the Ruby symbol and filename.

| Bundle record | Lorecraft kind and subkind |
|---|---|
| `ability/combat` | `ability/combat_ability` |
| `ability/magic` | `ability/magic_ability` |
| `ability/technology` | `ability/technical_ability` |
| `artifact/instrument` | `artifact/instrument` |
| `artifact/relic` | `artifact/relic` |
| `artifact/tome` | `artifact/tome` |
| `artifact/weapon` | `artifact/weapon` |
| `era/*` | `era/historical_period` |
| `faction/company` | `faction/company` |
| `faction/criminal` | `faction/criminal_network` |
| `faction/cult` | `faction/religious_order` |
| `faction/political` | `faction/political_body` |
| `location/anomaly` | `geographic_location/anomalous_site` |
| `location/colony` | `geographic_location/colony` |
| `location/point_of_interest` | `geographic_location/point_of_interest` |
| `location/resource_node` | `geographic_location/resource_site` |
| `npc/hero` | `npc/hero` |
| `npc/mayor` | `npc/mayor` |
| `npc/merchant` | `npc/merchant` |
| `npc/orca` | `npc/orca` |
| `npc/outlaw` | `npc/outlaw` |
| `occurrence/celebration` | `incident/celebration` |
| `occurrence/disaster` | `incident/disaster` |
| `occurrence/succession_crisis` | `incident/succession_crisis` |
| `occurrence/war` | `conflict/war` |
| `rule/ideology` | `concept/ideology` |
| `rule/law` | `edict/law` |
| `rule/memorial` | `concept/memorial_practice` |
| `rule/social` | `concept/social_practice` |

The bundle's `status` is an in-world fact named `world_status`. Lorecraft
`status` records editorial completeness; imported published entries use
`complete`. Preserve the original numeric prominence in `source_prominence` and
map its awareness band to Lorecraft prominence: below 1 is `forgotten`, 1 to
below 2 is `marginal`, 2 to below 3 is `recognized`, 3 to below 4 is `renowned`,
and 4 or above is `mythic`.

## Relationship mapping

Each relation instance keeps the bundle triple `src:dst:kind` as `source_id`.
Use these directional mappings:

| Bundle kind | Lorecraft relation |
|---|---|
| `active_during` | `active_during` |
| `adjacent_to` | `adjacent_to` |
| `allied_with` | `allied_with` |
| `believer_of` | `believes_in` |
| `blessed_by` | `blessed_by` |
| `catalyst_of` | `catalyzed` |
| `celebrated_by` | `celebrated_by` |
| `central_to` | `central_to` |
| `commemorates` | `commemorates` |
| `contained_by` | `part_of` |
| `contains` | `part_of`, with source and target reversed |
| `controls` | `controls` |
| `corrupted_by` | `corrupted_by` |
| `created_by` | `created`, with source and target reversed |
| `created_during` | `created_during` |
| `derived_from` | `derived_from` |
| `desecrated` | `desecrated` |
| `discovered_by` | `discovered_by` |
| `empowered_by` | `empowered_by` |
| `enemy_of` | `enemy_of` |
| `epicenter_of` | `occurred_at` |
| `explorer_of` | `explores` |
| `guardian_of` | `guards` |
| `instigated_by` | `instigated_by` |
| `leader_of` | `leads` |
| `manifests_at` | `manifests_at` |
| `member_of` | `member_of` |
| `occupies` | `occupies` |
| `occurred_at` | `occurred_at` |
| `originated_in` | `originated_in` |
| `owned_by` | `owned_by` |
| `participant_in` | `participated_in` |
| `practitioner_of` | `practiced_by`, with source and target reversed |
| `resident_of` | `inhabits` |
| `splinter_of` | `splinter_of` |
| `stored_at` | `located_in` |
| `subsumes` | `subsumes` |
| `supersedes` | `succeeded` |
| `taught_by` | `taught`, with source and target reversed |
| `trades_with` | `trades_with` |
| `triggered_by` | `triggered_by` |

Do not import `related_to`. Read both entries and the source event, choose a
specific relation, and record the classification in the owning entry's `log`.
If the record carries no world fact, log its omission instead.

The Great Thaw record `e-frostlings:long-dark-edict:related_to` maps to
`bound_by`: the Edict grants E'frostlings its trade authority, and the faction's
own account says it still operates under that charter.

## Excluded production records

Do not copy prompts, model output history, cost and token fields, retry state,
superseded drafts, pending image requests, or editor checkpoints into lore.
They describe how the Viewer was produced, not what is true on Aurora Berg.
