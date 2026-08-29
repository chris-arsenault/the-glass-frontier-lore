# Resource Encyclopedia Migration

Eight reusable resources remain Encyclopedia articles. Their duplicate Atlas type nodes were replaced by named particulars that can hold current events, custody, and scene pressure.

| Encyclopedia owner | Atlas particular | Classification | Retained Atlas connections |
|---|---|---|---|
| Blue Loam | The Warm Six | `type_of :blue_loam` | Located in Seren; studied by Nara Pell |
| Duskgrain | The Wrong-Side Lot | `type_of :duskgrain` | Supplied by Coremark; sourced from the Bloom Zones; two DM connections with the False Form |
| Microcavities | The Seed Tray | `type_of :microcavities`; `resource :ringglass` | Carried by Steady Return; sourced from the Shear |
| Pre-Glassfall Transmissions | The Two-Word Message | `type_of :pre_glassfall_transmissions` | Carried by the Choir Fragment; created during the Ring Age; studied by the Echo Ledger Conclave from 2421 |
| Ringglass | The Seven-New Load | `type_of :ringglass` | Carried by Nine Holds; currently at Keelward |
| Stillwater | The Returning Casing | `resource :stillwater` | Located at Cinder Gap; part of Lira's Wall |
| Thawglass | The Room Before the Ice | `resource :thawglass` | Located inside Mera |
| Velin | The Bound Roots | `type_of :velin` | Located in Olven; studied by Nara Pell |

## Intentional topology loss

The pre-migration snapshot contained 44 named relations incident to the eight duplicate Atlas nodes. The migration removes all 44 and adds 18 relations between named Atlas particulars and established Atlas entities. Named Atlas relations therefore fall from 1,424 to 1,398; Atlas entity count remains 502 because eight particulars replace eight type nodes. Connected-component count remains unchanged.

The removed edges that described reusable material behavior are not rebuilt in the Atlas graph. This includes resonance and ringglass dependencies, generic source and supply edges, Echo River carriage of pre-Glassfall transmissions, and stillwater's archival and thematic connections. Atlas prose now links those subjects with `encyclopedia_ref`. Ringglass is the explicit high-degree exception: all nineteen of its former incident Atlas relations are gone, while the Seven-New Load keeps only the current Nine Holds and Keelward connections.

The removal lowers one-hop focus coverage at Fermata Station, Mera, and Sithari by one choice each. Deep Shear and Kesh were already below the configured minimum in the saved snapshot. No substitute edges were added solely to satisfy topology counts.
