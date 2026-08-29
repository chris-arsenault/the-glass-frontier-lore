# Atlas Kind Removal Audit

The final Atlas does not use `species`, `culture`, or `concept`. Those kinds
remain in the engine only until the entries below have been migrated. Removing
a kind from `craft/schema/base.rb` is the last step, not the migration method.

For every entry, preserve its current Atlas id when the subject remains a named
particular. When the subject is reusable knowledge, move it to the Encyclopedia
and use the Atlas removal-impact report before choosing a named successor or
rewiring any edge. `type_of` and `belongs_to` never replace Atlas edges.

## Current counts

| World | Species | Culture | Concept | State |
|---|---:|---:|---:|---|
| Glass Frontier | 0 | 0 | 0 | Excluded from this world's active kind enum |
| The Dry War | 0 | 2 | 10 | Migration required |
| The Ice Remembers | 0 | 0 | 17 | Scaffold audit complete; migration required before activation |

## The Dry War

The two culture entries describe distributed ways of life rather than named
populations with independent histories. Move `the_managed` and `the_joined` to
Encyclopedia `culture`. Run removal-impact analysis for both together before
changing their Atlas edges; nearby named coalitions, communities, or incidents
must own any surviving historical claims.

The concept entries divide without ambiguity:

| Current id | Destination | Reason |
|---|---|---|
| `the_water_heresy` | Encyclopedia `doctrine` | A belief and allocation rule |
| `mixed_minds` | Encyclopedia `technology` | A reusable class of hybrid mind |
| `continental_mycelium` | Encyclopedia `technology` | A reusable biological computation system |
| `feral_models` | Encyclopedia `technology` | A reusable class of disconnected model |
| `mind_fragments` | Encyclopedia `technology` | A reusable preservation method and carrier class |
| `orphan_machines` | Encyclopedia `technology` | A reusable class of disconnected machine |
| `fungal_machines` | Encyclopedia `technology` | A reusable coupled machine-fungus system |
| `bonsai_intelligences` | Encyclopedia `technology` | A reusable bounded fungal intelligence |
| `seeded_ecosystems` | Encyclopedia `technology` | A reusable ecological construction method |
| `sterile_machines` | Encyclopedia `technology` | A reusable machine class and construction discipline |

None of these rows authorizes deletion of an Atlas neighborhood. Each removal
needs the reusable Atlas impact report and a named successor wherever a
historical relationship still needs an Atlas subject.

## The Ice Remembers

The imported `concept` kind currently mixes ideologies, laws, customs, and
recurring gatherings. Preserve the same Atlas id for every specific enacted law
or named recurring event.

Move these reusable beliefs and norms to Encyclopedia `doctrine`:

- `the_way_al_2`
- `the_way_ens`
- `pactum_myster`
- `the_way_al`
- `mandatum_absconditu`
- `gift_custom`

Retype these specific enacted laws, covenants, or memorial rules as Atlas
`edict`, retaining their ids, prose, moments, and edges. Give each a primary
Encyclopedia doctrine type; a shell is sufficient until its reference article
is authored:

- `mandatum_ccord`
- `echo_eliquiae`
- `umbra_im`
- `memoria_moria`
- `umbra_go`
- `vestigium_moria`
- `signum_men`
- `foedus_sper`

Retype these named recurring gatherings as Atlas `incident`, retaining their
ids, prose, moments, and edges. Their primary Encyclopedia type should describe
the reusable institution or observance, not duplicate the named gathering:

- `circle_gathering`
- `ritus_um`
- `tide_custom`

Before moving the six reusable doctrines out of the Atlas, run removal-impact
analysis as one set and inspect every relation, moment effect, and prose
reference. Their replacement requirement depends on those concrete claims, not
on the fact that the imported files share a kind.

## Enum removal gate

Glass Frontier now uses `restrict_entity_kinds!` to exclude `species`,
`culture`, and `concept` from its constructors and schema inspection. The
shared definitions remain available to Dry War and Ice Remembers while their
migrations continue.

Remove `species`, `culture`, and `concept` from the shared entity enum only
after all three conditions hold:

1. no world source declares an entry of those Atlas kinds;
2. every affected world validates and lints;
3. Atlas removal-impact reports show no unowned relationship, moment effect, or
   prose reference.
