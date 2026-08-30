# Encyclopedia placement plan

Phase 9 measurement of plan `adce063e` (2026-08-30). Two matrices over the
authored corpus, then the per-entry predicate plan phase 10 executes.

## Matrix 1 — kind × prevalence, complete entries only

Target inherited from the ten-kind plan: 10 common / 10 uncommon / 5 rare per
kind. Shells and drafts count nowhere.

| kind | common | uncommon | rare | complete | authored (drafts incl.) |
|---|---:|---:|---:|---:|---:|
| ability | 0 | 1 | 10 | 11 | 37 |
| culture | 4 | 0 | 0 | 4 | 33 |
| lifeform | 9 | 7 | 0 | 16 | 39 |
| phenomenon | 2 | 2 | 1 | 5 | 21 |
| resource | 3 | 2 | 3 | 8 | 19 |
| role | 1 | 2 | 0 | 3 | 3 |
| technology | 11 | 1 | 2 | 14 | 20 |

Only technology meets any single quota. Every complete ability is rare — the
everyday tier of the spellbook is entirely draft. The target itself needs a
decision at seven kinds; see the plan.

## Matrix 2 — kind × placement tag, authored entries

After the phase 7 rename, selectors use only the four base properties
(surface, orbital, outer_system, sealed_hab). No entry yet selects any of the
17 new tags. The projection below is what the corpus looks like after phase 10
applies the predicate plan in the next section.

Projected selecting-entry counts per tag (all kinds):
debris_field ~20, garden ~12, dock ~11, waterway ~10, yard ~9, hot ~8,
road ~8, damaged_signal ~7, ringglass_rich ~7, cold ~5, displacement_zone ~5,
bloom_adjacent ~4, archive ~4, cordon ~4, **urban ~2, unstable_route ~2,
market ~2**.

Thin cells (bold) are the phase 11 authoring targets alongside the prevalence
deficits: urban texture (only gutter crowns and the drain migration), unstable
routes (only Avar material), and market texture (only tally dust and the
Thirty-One echo).

## Predicate plan — phase 10 work list

For each non-global authored entry, the availability it should declare after
generalization. `+` means and (`all`), `/` means or (`any`), `!` means not
(`none`). Base realm terms are kept only where they still carry meaning.
Powers, law bodies, sapient species, and roles not listed here go
`available_globally` (participant scope is a later, game-side concern).

### ability

| entry | predicate |
|---|---|
| ash_veiling | hot |
| bloom_sense | bloom_adjacent |
| cold_count | cold |
| countermass_threading | dock |
| current_holding | waterway |
| dead_pulse_reckoning | damaged_signal |
| dustline_crossing | surface + unstable_route |
| echo_orientation | ringglass_rich |
| fracture_afterimage | debris_field |
| glass_taste | ringglass_rich |
| heatwalking | hot + yard |
| hinge_step | dock |
| hollow_balance | sealed_hab |
| ledger_recall | global |
| load_singing | yard + debris_field |
| loam_hearing | garden |
| pressure_memory | sealed_hab |
| quiet_breath | debris_field |
| remote_cutting | debris_field |
| rill_calling | garden |
| root_tracing | surface + ringglass_rich |
| signal_folding | damaged_signal |
| span_listening | sealed_hab |
| vault_stilling | archive |
| wake_counting | sealed_hab |
| white_signal_practice | damaged_signal |

### culture

| entry | predicate |
|---|---|
| avar_road_people | surface + unstable_route |
| bellward_guests | road |
| breath_debt | sealed_hab |
| cordon_children | cordon / bloom_adjacent |
| crowncut_shifts | yard |
| displaced_room_law | displacement_zone |
| doorstep_claimants | displacement_zone |
| fracture_wake_crews | debris_field |
| keel_route_kin | dock / road |
| kesh_challenge_names | sealed_hab |
| living_cargo_stewardship | garden |
| ratter_order | debris_field |
| ratters | debris_field |
| reconstruction_and_salvage_claims | debris_field / yard |
| reedwater_people | waterway |
| rill_households | garden + sealed_hab |
| rootward_households | garden |
| sable_riverfolk | waterway |
| shade_families | hot |
| shearfolk | debris_field |
| space_traffic_law | orbital + road |
| span_names | damaged_signal |

### lifeform

| entry | predicate |
|---|---|
| breach_lichen | surface + ringglass_rich |
| cinderback | hot |
| cold_route_spores | cold + road |
| cordon_scavengers | bloom_adjacent |
| displaced_fauna | displacement_zone |
| drift_eel | debris_field |
| farborn | debris_field |
| glasswurm | debris_field |
| gutter_crown | urban |
| hushmaw | debris_field |
| mera_flute_reed | garden |
| mirror_bee | garden |
| mirror_leech | debris_field / outer_system |
| navren | garden |
| pole_thief | waterway |
| rind | debris_field |
| root_deck_symbiotes | garden |
| sarn | debris_field |
| shellback | debris_field |
| signal_fed_life | damaged_signal |
| sorel | sealed_hab + garden |
| (bell_lung_colossus, kesh_wallrunner, marrower, ravel_clampweed, ravel_claspworm) | sealed_hab — already correct |
| (marn) | surface — already correct |

### phenomenon

Each local anomaly is rewritten as its pattern (phase 10 also decides whether
the named instance earns an Atlas node).

| entry | predicate |
|---|---|
| clearance_hunger | dock |
| cold_archive_weather | cold + archive |
| crowncut_spark_bloom | yard + debris_field |
| drain_migration | urban |
| echo_rivers | waterway + ringglass_rich |
| empty_berth_fever | dock + sealed_hab |
| korvath_groundsong | waterway |
| kyther_glass_rain | surface + ringglass_rich |
| latch_quiet | cordon |
| mareth_recoil | dock |
| pyre_afterheat | cordon + hot |
| ravel_tides | damaged_signal + sealed_hab |
| room_rain | displacement_zone |
| root_sleep | garden |
| rootlight | surface + ringglass_rich |
| sable_backecho | archive + waterway |
| thirty_one_echo | sealed_hab + yard |
| (glassfall_showers, shuttered_habs) | already correct |

### resource

| entry | predicate |
|---|---|
| blue_loam | garden |
| blue_yard_pitch | yard |
| cold_marrow_draught | cold + road |
| duskgrain | bloom_adjacent / debris_field |
| perch_salt_egg | sealed_hab |
| pyre_softglass | hot + yard |
| rattle_tally_dust | dock / market |
| root_broth | garden |
| sable_witness_spool | archive / waterway |
| shade_burn_salve | hot |
| thawglass | cold |
| white_signal_cloth | damaged_signal |
| (lung_moss, ravel_water_silk) | sealed_hab — already correct |

### technology

| entry | predicate |
|---|---|
| bellhouse_air_frame | sealed_hab / dock |
| channel_barge | waterway |
| claim_rig | debris_field |
| clearance_catch | dock |
| displaced_door_brace | displacement_zone |
| eighth_seal | dock |
| heat_road_hauler | hot + road |
| tripline_kiln | waterway |
| vigil_shock_pin | cordon / ringglass_rich |
| wurm_bit | debris_field + yard |
| (heavy_hauler, hood) | orbital — already usable |
