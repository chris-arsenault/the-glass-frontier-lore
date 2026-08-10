# Wiring for the reference entries that were written as prose in bundled files
# and never connected. Each entity here already named these things in its own
# text; the edges make the graph agree with the prose. Where the natural
# neighbour does not exist, the entry carries a `future` marker instead and the
# topology report counts it as waiting on writing rather than disconnected.

# ---- the water heresy: the doctrine every coalition inherited ----
relate :rel_wr_heresy_regulates_market, :regulates, :the_water_heresy, :market
relate :rel_wr_heresy_regulates_caretaker, :regulates, :the_water_heresy, :caretaker
relate :rel_wr_heresy_regulates_mercy, :regulates, :the_water_heresy, :mercy
relate :rel_wr_heresy_regulates_continuity, :regulates, :the_water_heresy, :continuity
relate :rel_wr_heresy_depends_water, :depends_on, :the_water_heresy, :water
relate :rel_wr_heresy_mentions_managed, :mentions, :the_water_heresy, :the_managed
relate :rel_wr_choir_evades_heresy, :evades, :the_choir, :the_water_heresy
relate :rel_wr_deadcounties_evades_heresy, :evades, :the_dead_counties, :the_water_heresy
relate :rel_wr_fusion_derived_heresy, :derived_from, :fusion_plants, :the_water_heresy

# ---- the Preservationists: outside the continental network ----
relate :rel_wr_preservationists_evade_root, :evades, :the_preservationists, :the_great_root

# ---- mixed minds: where fungal and machine thought meet ----
relate :rel_wr_mixed_minds_depend_deadroot_grafts, :depends_on, :mixed_minds, :dead_root_grafts
relate :rel_wr_mixed_minds_manifest_amur, :manifests_at, :mixed_minds, :the_amur_line
relate :rel_wr_thousand_minds_studies_mixed_minds, :studies, :the_thousand_minds, :mixed_minds
relate :rel_wr_fungal_machines_part_mixed_minds, :part_of, :fungal_machines, :mixed_minds

# ---- the Dead Counties: systems that stop at the next valley ----
relate :rel_wr_counties_evade_market, :evades, :the_dead_counties, :market
relate :rel_wr_counties_evade_caretaker, :evades, :the_dead_counties, :caretaker

# ---- implant decoys and the records they have to satisfy ----
relate :rel_wr_decoys_evade_mercy, :evades, :implant_decoys, :mercy
relate :rel_wr_unpersons_possess_decoys, :possesses, :the_unpersons, :implant_decoys

# ---- bonsai intelligences: how a boundary is built ----
relate :rel_wr_bonsai_depends_severed, :depends_on, :bonsai_intelligences, :severed_strains
relate :rel_wr_bonsai_depends_sterile, :depends_on, :bonsai_intelligences, :sterile_machines
relate :rel_wr_ceramics_studies_bonsai, :studies, :memory_ceramics, :bonsai_intelligences

# ---- dead-root grafts: the kill, and what dead tissue is worth ----
relate :rel_wr_brokers_supplies_deadroot_grafts, :supplies, :the_brokers, :dead_root_grafts
relate :rel_wr_brokers_supplies_severed_strains, :supplies, :the_brokers, :severed_strains
relate :rel_wr_brokers_supplies_memory_ceramics, :supplies, :the_brokers, :memory_ceramics
relate :rel_wr_brokers_supplies_fungal_machines, :supplies, :the_brokers, :fungal_machines
relate :rel_wr_deadroot_grafts_manifest_amur, :manifests_at, :dead_root_grafts, :the_amur_line

# ---- fusion plants: what purity costs and where plants cannot go ----
relate :rel_wr_fusion_depends_water, :depends_on, :fusion_plants, :water
relate :rel_wr_fusion_regulated_market, :regulates, :market, :fusion_plants
relate :rel_wr_choir_evades_fusion, :evades, :the_choir, :fusion_plants
relate :rel_wr_fusion_depends_drywar, :part_of, :fusion_plants, :the_dry_war
relate :rel_wr_caretaker_maintains_fusion, :maintains, :caretaker, :fusion_plants
relate :rel_wr_mercy_supplies_fusion, :supplies, :mercy, :fusion_plants

# ---- symbiotic implants: grown not fitted, and what a reading is worth ----
relate :rel_wr_implants_depends_textiles, :depends_on, :symbiotic_implants, :living_textiles
relate :rel_wr_implants_depends_severed, :depends_on, :symbiotic_implants, :severed_strains
relate :rel_wr_gatekeepers_supplies_implants, :supplies, :the_gatekeepers, :symbiotic_implants
relate :rel_wr_preservationists_evades_implants, :evades, :the_preservationists, :symbiotic_implants
relate :rel_wr_courts_petitions_implants, :petitions, :the_garden_courts, :symbiotic_implants
relate :rel_wr_joined_possesses_implants, :possesses, :the_joined, :symbiotic_implants

# ---- the Breach: what it left, and why there is no model ----
relate :rel_wr_breach_caused_archipelago, :caused, :the_breach, :the_habitable_archipelago
relate :rel_wr_breach_caused_forever_war, :caused, :the_breach, :the_forever_war
relate :rel_wr_root_studies_breach, :studies, :the_great_root, :the_breach
relate :rel_wr_continuity_studies_breach, :studies, :continuity, :the_breach
relate :rel_wr_campaigns_caused_by_breach, :caused_by, :the_reclamation_campaigns, :the_breach
relate :rel_wr_breach_manifests_boswash, :manifests_at, :the_breach, :boswash_ruins
relate :rel_wr_breach_manifests_cairo, :manifests_at, :the_breach, :cairo
