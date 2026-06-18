# Relationship edges — generated from the graph snapshot.
# Each becomes a named, addressable relation instance (promotable later).
relate :rel_cultures_extends_hab_worlder, :extends, :cultures, :hab_worlder
relate :rel_cultures_extends_sitharian_culture, :extends, :cultures, :sitharian_culture
relate :rel_fae_depends_on_gnomes, :depends_on, :fae, :gnomes
relate :rel_fae_depends_on_resonance, :depends_on, :fae, :resonance
relate :rel_gnomes_attuned_to_resonance, :attuned_to, :gnomes, :resonance
relate :rel_hab_worlder_manifests_at_the_glass_frontier, :manifests_at, :hab_worlder, :the_glass_frontier
relate :rel_hab_worlder_originated_in_the_glass_frontier, :originated_in, :hab_worlder, :the_glass_frontier
relate :rel_hab_worlder_depends_on_shuttered_habs, :depends_on, :hab_worlder, :shuttered_habs
relate :rel_humans_inhabits_sithari, :inhabits, :humans, :sithari, since: 2050
relate :rel_humans_inhabits_the_glass_frontier, :inhabits, :humans, :the_glass_frontier, since: 2050
relate :rel_naming_conventions_extends_sitharian_culture, :extends, :naming_conventions, :sitharian_culture
relate :rel_naming_conventions_extends_hab_worlder, :extends, :naming_conventions, :hab_worlder
relate :rel_orcs_inhabits_the_glass_frontier, :inhabits, :orcs, :the_glass_frontier, since: 2080
relate :rel_orcs_practiced_by_ringglass, :practiced_by, :orcs, :ringglass, since: 2080
relate :rel_prominence_depends_on_resonance, :depends_on, :prominence, :resonance
relate :rel_ringglass_powers_resonance, :powers, :ringglass, :resonance
relate :rel_ringglass_sourced_from_the_shear, :sourced_from, :ringglass, :the_shear
relate :rel_sitharian_culture_originated_in_sithari, :originated_in, :sitharian_culture, :sithari
relate :rel_sitharian_culture_manifests_at_sithari, :manifests_at, :sitharian_culture, :sithari
relate :rel_species_extends_humans, :extends, :species, :humans
relate :rel_species_extends_elves, :extends, :species, :elves
relate :rel_tuners_emerged_during_signal_famine, :emerged_during, :tuners, :signal_famine
relate :rel_tuners_practiced_by_resonant_instruments, :practiced_by, :tuners, :resonant_instruments, since: 2260
relate :rel_resonance_conducted_by_ringglass, :conducted_by, :resonance, :ringglass
relate :rel_ratters_operates_in_the_shear, :operates_in, :ratters, :the_shear, since: 2320
relate :rel_ratters_operates_in_deep_shear, :operates_in, :ratters, :deep_shear, since: 2320
relate :rel_kaleidos_orbits_the_sun, :orbits, :kaleidos, :the_sun
relate :rel_kaleidos_inner_of_korvath, :inner_of, :kaleidos, :korvath
relate :rel_cthonic_beasts_inhabits_the_shear, :inhabits, :cthonic_beasts, :the_shear, since: 2140
relate :rel_cthonic_beasts_inhabits_deep_shear, :inhabits, :cthonic_beasts, :deep_shear, since: 2140
relate :rel_the_silent_bloom_caused_bloom_zones, :caused, :the_silent_bloom, :bloom_zones
relate :rel_the_silent_bloom_caused_displacement, :caused, :the_silent_bloom, :displacement
relate :rel_the_silent_bloom_caused_bloom_coalition, :caused, :the_silent_bloom, :bloom_coalition
relate :rel_the_silent_bloom_caused_shear_compact, :caused, :the_silent_bloom, :shear_compact
relate :rel_the_bitter_reach_caused_tempered_accord, :caused, :the_bitter_reach, :tempered_accord
relate :rel_shardfall_caused_shear_compact, :caused, :shardfall, :shear_compact
relate :rel_displacement_caused_displacement_council, :caused, :displacement, :displacement_council
relate :rel_glasswake_on_surface_of_kaleidos, :on_surface_of, :glasswake, :kaleidos
relate :rel_glasswake_located_in_kaleidos, :located_in, :glasswake, :kaleidos, since: 2160
relate :rel_pelhari_orbits_vastine, :orbits, :pelhari, :vastine
relate :rel_pelhari_terminus_of_span_nine, :terminus_of, :pelhari, :span_nine
relate :rel_sable_crescent_on_surface_of_kaleidos, :on_surface_of, :sable_crescent, :kaleidos
relate :rel_pyre_caused_the_silent_bloom, :caused, :pyre, :the_silent_bloom
relate :rel_pyre_in_orbit_of_kaleidos, :in_orbit_of, :pyre, :kaleidos
relate :rel_bloom_zones_in_orbit_of_kaleidos, :in_orbit_of, :bloom_zones, :kaleidos
relate :rel_bloom_zones_in_orbit_of_the_fracture, :in_orbit_of, :bloom_zones, :the_fracture
relate :rel_deep_shear_part_of_the_shear, :part_of, :deep_shear, :the_shear
relate :rel_tempered_accord_headquartered_in_sithari, :headquartered_in, :tempered_accord, :sithari, since: 2423
relate :rel_prismwell_kite_guild_operates_in_sithari, :operates_in, :prismwell_kite_guild, :sithari, since: 2330
relate :rel_shear_compact_regulates_the_shear, :regulates, :shear_compact, :the_shear, since: 2383
relate :rel_shear_compact_regulates_ratters, :regulates, :shear_compact, :ratters, since: 2383
relate :rel_the_continuity_governs_sithari, :governs, :the_continuity, :sithari, since: 2245
relate :rel_bloom_coalition_caused_the_bitter_reach, :caused, :bloom_coalition, :the_bitter_reach
relate :rel_displacement_council_maintains_bloom_zones, :maintains, :displacement_council, :bloom_zones, since: 2384
relate :rel_displacement_council_maintains_liras_wall, :maintains, :displacement_council, :liras_wall, since: 2384
relate :rel_lira_vashtenri_designed_liras_wall, :designed, :lira_vashtenri, :liras_wall
relate :rel_lira_vashtenri_member_of_displacement_council, :member_of, :lira_vashtenri, :displacement_council, since: 2384
relate :rel_shei_lush_chairs_fermata_station, :chairs, :shei_lush, :fermata_station, since: 2427
relate :rel_ol_dent_maintains_fermata_station, :maintains, :ol_dent, :fermata_station, since: 2426
relate :rel_signal_famine_caused_tuners, :caused, :signal_famine, :tuners
relate :rel_signal_famine_caused_fermata_station, :caused, :signal_famine, :fermata_station
relate :rel_signal_famine_caused_disappearance_of_the_elves, :caused, :signal_famine, :disappearance_of_the_elves, dm: true
relate :rel_the_dissident_taught_tuners, :taught, :the_dissident, :tuners, dm: true
relate :rel_the_dissident_member_of_elves, :member_of, :the_dissident, :elves, since: 2050, dm: true
relate :rel_threshold_station_in_orbit_of_kaleidos, :in_orbit_of, :threshold_station, :kaleidos
relate :rel_threshold_station_terminus_of_span_nine, :terminus_of, :threshold_station, :span_nine
relate :rel_hab_meridian_part_of_kaleidos_orbit, :part_of, :hab_meridian, :kaleidos_orbit
relate :rel_hab_meridian_cooperates_with_glasswake, :cooperates_with, :hab_meridian, :glasswake, since: 2305
relate :rel_thornvault_located_in_sable_crescent, :located_in, :thornvault, :sable_crescent, since: 2308
relate :rel_venn_talis_member_of_coriolis_breach, :member_of, :venn_talis, :coriolis_breach, since: 2358, till: 2363
relate :rel_crucible_orbits_the_sun, :orbits, :crucible, :the_sun
relate :rel_crucible_inner_of_kaleidos, :inner_of, :crucible, :kaleidos
relate :rel_korvath_orbits_the_sun, :orbits, :korvath, :the_sun
relate :rel_korvath_inner_of_vitrael, :inner_of, :korvath, :vitrael
relate :rel_vitrael_orbits_the_sun, :orbits, :vitrael, :the_sun
relate :rel_vitrael_inner_of_ashenmaw, :inner_of, :vitrael, :ashenmaw
relate :rel_ashenmaw_orbits_the_sun, :orbits, :ashenmaw, :the_sun
relate :rel_ashenmaw_inner_of_the_fracture, :inner_of, :ashenmaw, :the_fracture
relate :rel_ashvane_orbits_ashenmaw, :orbits, :ashvane, :ashenmaw
relate :rel_the_fracture_orbits_the_sun, :orbits, :the_fracture, :the_sun
relate :rel_the_fracture_inner_of_vastine, :inner_of, :the_fracture, :vastine
relate :rel_vastine_orbits_the_sun, :orbits, :vastine, :the_sun
relate :rel_liras_wall_depends_on_stillwater, :depends_on, :liras_wall, :stillwater
relate :rel_kaleidos_system_depends_on_resonance, :depends_on, :kaleidos_system, :resonance
relate :rel_resonant_instruments_depends_on_resonance, :depends_on, :resonant_instruments, :resonance
relate :rel_microcavities_derived_from_ringglass, :derived_from, :microcavities, :ringglass
relate :rel_microcavities_sourced_from_the_shear, :sourced_from, :microcavities, :the_shear
relate :rel_stillwater_derived_from_echo_rivers, :derived_from, :stillwater, :echo_rivers
relate :rel_duskgrain_manifests_at_bloom_zones, :manifests_at, :duskgrain, :bloom_zones
relate :rel_duskgrain_derived_from_resonance, :derived_from, :duskgrain, :resonance
relate :rel_duskgrain_derived_from_the_false_form, :derived_from, :duskgrain, :the_false_form, dm: true
relate :rel_bloom_relics_manifests_at_bloom_zones, :manifests_at, :bloom_relics, :bloom_zones
relate :rel_bloom_relics_derived_from_resonance, :derived_from, :bloom_relics, :resonance
relate :rel_life_in_the_system_depends_on_resonance, :depends_on, :life_in_the_system, :resonance
relate :rel_life_in_the_system_depends_on_ringglass, :depends_on, :life_in_the_system, :ringglass
relate :rel_heavy_hauler_operates_in_the_keel, :operates_in, :heavy_hauler, :the_keel, since: 2335
relate :rel_the_three_forms_derived_from_resonance, :derived_from, :the_three_forms, :resonance
