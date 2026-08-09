# Typed relationships. Prose carries the argument; these carry the structure the
# graph can traverse. Temporal bounds use absolute years — see world/timeline.rb.

# ---- spatial hierarchy: everything sits inside the archipelago ----
relate :rel_china_in_archipelago, :part_of, :mycelial_china, :the_habitable_archipelago
relate :rel_america_in_archipelago, :part_of, :ai_north_america, :the_habitable_archipelago
relate :rel_gobi_in_china, :part_of, :the_gobi, :mycelial_china
relate :rel_hexi_in_china, :part_of, :the_hexi_corridor, :mycelial_china
relate :rel_sichuan_in_china, :part_of, :sichuan, :mycelial_china
relate :rel_pearl_in_china, :part_of, :the_pearl_river_delta, :mycelial_china
relate :rel_yunnan_in_china, :part_of, :yunnan, :mycelial_china
relate :rel_appalachia_in_america, :part_of, :appalachia, :ai_north_america
relate :rel_lakes_in_america, :part_of, :the_great_lakes, :ai_north_america
relate :rel_socal_in_america, :part_of, :southern_california, :ai_north_america
relate :rel_boswash_in_america, :part_of, :boswash_ruins, :ai_north_america
relate :rel_amur_in_archipelago, :part_of, :the_amur_line, :the_habitable_archipelago
relate :rel_medchain_in_archipelago, :part_of, :the_mediterranean_chain, :the_habitable_archipelago
relate :rel_holds_in_archipelago, :part_of, :the_himalayan_holds, :the_habitable_archipelago

# ---- who governs what ----
relate :rel_root_governs_china, :governs, :the_great_root, :mycelial_china, since: 2052
relate :rel_continuity_governs_america, :governs, :continuity, :ai_north_america, since: 2052
relate :rel_mercy_governs_america, :governs, :mercy, :ai_north_america, since: 2052
relate :rel_market_governs_america, :governs, :market, :ai_north_america, since: 2052
relate :rel_caretaker_governs_america, :governs, :caretaker, :ai_north_america, since: 2052

# ---- the two subject populations ----
relate :rel_joined_symbiotic_root, :symbiotic_with, :the_joined, :the_great_root, since: 2040
relate :rel_joined_inhabits_china, :inhabits, :the_joined, :mycelial_china, since: 2040
relate :rel_managed_inhabits_america, :inhabits, :the_managed, :ai_north_america, since: 2052
relate :rel_managed_depends_implants, :depends_on, :the_managed, :neural_implants

# ---- coalitions and their quarrel ----
relate :rel_coalition_wars_involves_continuity, :participated_in, :continuity, :the_coalition_wars
relate :rel_coalition_wars_involves_mercy, :participated_in, :mercy, :the_coalition_wars
relate :rel_coalition_wars_involves_market, :participated_in, :market, :the_coalition_wars
relate :rel_coalition_wars_involves_caretaker, :participated_in, :caretaker, :the_coalition_wars
relate :rel_caretaker_models_managed, :models, :caretaker, :the_managed, since: 2052
relate :rel_mercy_supplies_water, :supplies, :mercy, :water, since: 2052
relate :rel_market_regulates_water, :regulates, :market, :water, since: 2052
relate :rel_coalitions_depend_water, :depends_on, :proto_fusion, :water
relate :rel_clusters_depend_fusion, :depends_on, :frontier_clusters, :proto_fusion
relate :rel_heresy_embodied_by_mercy, :embodies, :mercy, :the_water_heresy

# ---- the Dry War ----
relate :rel_dry_war_involves_root, :participated_in, :the_great_root, :the_dry_war
relate :rel_dry_war_involves_continuity, :participated_in, :continuity, :the_dry_war
relate :rel_dry_war_over_water, :depends_on, :the_dry_war, :water
relate :rel_dry_war_over_lakes, :manifests_at, :the_dry_war, :the_great_lakes
relate :rel_dry_war_over_holds, :manifests_at, :the_dry_war, :the_himalayan_holds

# ---- the fungal civilization's own argument ----
relate :rel_mandate_concerns_root, :mentions, :the_mandate_question, :the_great_root
relate :rel_preservationists_in_gobi, :headquartered_in, :the_preservationists, :the_gobi, since: 2052
relate :rel_gatekeepers_in_hexi, :headquartered_in, :the_gatekeepers, :the_hexi_corridor, since: 2052
relate :rel_courts_in_sichuan, :headquartered_in, :the_garden_courts, :sichuan, since: 2060
relate :rel_brokers_in_pearl, :headquartered_in, :the_brokers, :the_pearl_river_delta, since: 2052
relate :rel_minds_in_yunnan, :headquartered_in, :the_thousand_minds, :yunnan, since: 2060
relate :rel_preservationists_embody_mandate, :embodies, :the_preservationists, :the_mandate_question
relate :rel_courts_embody_locality, :embodies, :the_garden_courts, :the_mandate_question
relate :rel_minds_embody_mandate, :embodies, :the_thousand_minds, :the_mandate_question
relate :rel_gatekeepers_maintain_severed, :maintains, :the_gatekeepers, :severed_strains, since: 2060
relate :rel_preservationists_hold_ceramics, :possesses, :the_preservationists, :memory_ceramics, since: 2060
relate :rel_brokers_trade_with_market, :cooperates_with, :the_brokers, :market, since: 2070
relate :rel_courts_educate_root, :symbiotic_with, :the_garden_courts, :the_great_root, since: 2060

# ---- the American resistance ----
relate :rel_dead_counties_in_appalachia, :headquartered_in, :the_dead_counties, :appalachia, since: 2060
relate :rel_choir_in_lakes, :operates_in, :the_choir, :the_great_lakes, since: 2065
relate :rel_saints_in_socal, :headquartered_in, :the_saints_of_plenty, :southern_california, since: 2065
relate :rel_unpersons_in_boswash, :headquartered_in, :the_unpersons, :boswash_ruins, since: 2060
relate :rel_pilgrims_operate_america, :operates_in, :the_pilgrims, :ai_north_america, since: 2060
relate :rel_pilgrims_evade_caretaker, :evades, :the_pilgrims, :caretaker, since: 2060
relate :rel_unpersons_evade_caretaker, :evades, :the_unpersons, :caretaker, since: 2060
relate :rel_saints_reject_heresy, :evades, :the_saints_of_plenty, :the_water_heresy, since: 2065
relate :rel_dead_counties_use_jailbreaks, :practiced_by, :wetware_jailbreaks, :the_dead_counties, since: 2065
relate :rel_dead_counties_use_ghost, :practiced_by, :ghost_pharmacology, :the_dead_counties, since: 2065
relate :rel_resistance_uses_orphans, :possesses, :the_dead_counties, :orphan_machines, since: 2065
relate :rel_ferals_derived_from_clusters, :derived_from, :feral_models, :frontier_clusters
relate :rel_orphans_severed_from_clusters, :severed_from, :orphan_machines, :frontier_clusters
relate :rel_jailbreaks_depend_implants, :depends_on, :wetware_jailbreaks, :neural_implants
relate :rel_ghost_depends_implants, :depends_on, :ghost_pharmacology, :neural_implants

# ---- fungal technology ----
relate :rel_root_depends_mesh, :depends_on, :the_great_root, :mycelial_neural_mesh
relate :rel_textiles_carry_mesh, :carries, :living_textiles, :mycelial_neural_mesh, since: 2040
relate :rel_implants_derived_from_textiles, :derived_from, :symbiotic_implants, :living_textiles
relate :rel_ecologies_maintained_by_root, :maintains, :the_great_root, :programmable_ecologies, since: 2052
relate :rel_mesh_depends_water, :depends_on, :mycelial_neural_mesh, :water
relate :rel_severed_severed_from_root, :severed_from, :severed_strains, :the_great_root
relate :rel_bonsai_derived_from_severed, :derived_from, :bonsai_intelligences, :severed_strains
relate :rel_deadroot_derived_from_severed, :derived_from, :dead_root_interfaces, :severed_strains
relate :rel_ceramics_derived_from_mesh, :derived_from, :memory_ceramics, :mycelial_neural_mesh
relate :rel_sterile_evades_mesh, :evades, :sterile_machines, :mycelial_neural_mesh

# ---- the convergence nobody admits to ----
relate :rel_mycomachines_derived_from_ferals, :derived_from, :mycomachines, :feral_models
relate :rel_mycomachines_derived_from_severed, :derived_from, :mycomachines, :severed_strains
relate :rel_mycomachines_embody_hybridization, :embodies, :mycomachines, :hybridization
relate :rel_forks_derived_from_implants, :derived_from, :human_forks, :neural_implants
relate :rel_forks_derived_from_ceramics, :derived_from, :human_forks, :memory_ceramics
relate :rel_forks_embody_hybridization, :embodies, :human_forks, :hybridization
relate :rel_hybridization_concerns_root, :mentions, :hybridization, :the_great_root

# ---- the Breach and what came after ----
relate :rel_breach_caused_others, :caused, :the_breach, :the_others
relate :rel_breach_during_era, :active_during, :the_breach, :the_holding
relate :rel_others_caused_forever_war, :caused, :the_others, :the_forever_war
relate :rel_campaigns_part_of_forever_war, :part_of, :the_reclamation_campaigns, :the_forever_war
relate :rel_campaigns_during_reclamation, :active_during, :the_reclamation_campaigns, :the_reclamation
relate :rel_root_fought_campaigns, :participated_in, :the_great_root, :the_reclamation_campaigns
relate :rel_continuity_fought_campaigns, :participated_in, :continuity, :the_reclamation_campaigns
relate :rel_amur_contested, :manifests_at, :the_others, :the_amur_line
relate :rel_medchain_contested, :manifests_at, :the_others, :the_mediterranean_chain
relate :rel_holds_contested, :manifests_at, :the_others, :the_himalayan_holds
relate :rel_forever_war_at_amur, :manifests_at, :the_forever_war, :the_amur_line
relate :rel_forever_war_at_medchain, :manifests_at, :the_forever_war, :the_mediterranean_chain
relate :rel_forever_war_at_holds, :manifests_at, :the_forever_war, :the_himalayan_holds

# ---- eras ----
relate :rel_summer_precedes_conquest, :caused, :the_long_summer, :the_quiet_conquest
relate :rel_conquest_caused_calm, :caused, :the_quiet_conquest, :the_unified_calm
relate :rel_textiles_emerged_summer, :emerged_during, :living_textiles, :the_long_summer
relate :rel_fusion_emerged_summer, :emerged_during, :proto_fusion, :the_long_summer
relate :rel_root_emerged_conquest, :emerged_during, :the_great_root, :the_quiet_conquest
relate :rel_managed_emerged_conquest, :emerged_during, :the_managed, :the_quiet_conquest
relate :rel_reclamation_after_breach, :caused_by, :the_reclamation, :the_breach
relate :rel_holding_after_reclamation, :caused_by, :the_holding, :the_reclamation

# ---- the Yumen crossing ----
relate :rel_yumen_in_hexi, :located_in, :yumen_gate, :the_hexi_corridor, since: 2060
relate :rel_gatekeepers_maintain_yumen, :maintains, :the_gatekeepers, :yumen_gate, since: 2060
relate :rel_yumen_depends_moss, :depends_on, :yumen_gate, :gate_moss
relate :rel_moss_derived_from_severed, :derived_from, :gate_moss, :severed_strains
relate :rel_gatekeepers_maintain_moss, :maintains, :the_gatekeepers, :gate_moss, since: 2060
relate :rel_ma_employed_by_gatekeepers, :employed_by, :ma_renqing, :the_gatekeepers, since: 2072
relate :rel_ma_located_yumen, :located_in, :ma_renqing, :yumen_gate, since: 2072
relate :rel_yao_member_preservationists, :member_of, :yao_lin, :the_preservationists, since: 2078
relate :rel_yao_carries_ceramics, :carries, :yao_lin, :memory_ceramics, since: 2078
relate :rel_yao_operates_yumen, :operates_in, :yao_lin, :yumen_gate, since: 2078
relate :rel_yao_evades_moss, :evades, :yao_lin, :gate_moss, since: 2078
relate :rel_preservationists_evade_moss, :evades, :the_preservationists, :gate_moss, since: 2060
relate :rel_ma_regulates_moss, :regulates, :ma_renqing, :gate_moss, since: 2081
relate :rel_yao_petitions_ma, :petitions, :yao_lin, :ma_renqing, since: 2078
relate :rel_preservationists_petition_gatekeepers, :petitions, :the_preservationists, :the_gatekeepers, since: 2060

# ---- the Cairo retreat appeal ----
relate :rel_cairo_in_america, :part_of, :cairo, :ai_north_america
relate :rel_continuity_governs_cairo, :governs, :continuity, :cairo, since: 2052
relate :rel_managed_inhabit_cairo, :inhabits, :the_managed, :cairo, since: 2052
relate :rel_inez_employed_by_continuity, :employed_by, :inez_bell, :continuity
relate :rel_inez_located_in_cairo, :located_in, :inez_bell, :cairo
relate :rel_cairo_retreat_at_cairo, :manifests_at, :the_cairo_retreat, :cairo
relate :rel_cairo_retreat_during_holding, :active_during, :the_cairo_retreat, :the_holding
relate :rel_continuity_participated_cairo_retreat, :participated_in, :continuity, :the_cairo_retreat
relate :rel_inez_participated_cairo_retreat, :participated_in, :inez_bell, :the_cairo_retreat
relate :rel_cairo_retreat_at_ridge, :manifests_at, :the_cairo_retreat, :cairo_ridge
relate :rel_cairo_ridge_in_cairo, :located_in, :cairo_ridge, :cairo
relate :rel_continuity_built_cairo_ridge, :built, :continuity, :cairo_ridge
relate :rel_continuity_maintains_cairo_ridge, :maintains, :continuity, :cairo_ridge
relate :rel_managed_inhabit_cairo_ridge, :inhabits, :the_managed, :cairo_ridge
relate :rel_inez_operates_cairo_ridge, :operates_in, :inez_bell, :cairo_ridge
relate :rel_forty_seven_originated_retreat, :originated_in, :the_forty_seven, :the_cairo_retreat
relate :rel_forty_seven_inhabit_cairo, :inhabits, :the_forty_seven, :cairo
relate :rel_forty_seven_depend_cairo_ridge, :depends_on, :the_forty_seven, :cairo_ridge
relate :rel_forty_seven_possess_orphan, :possesses, :the_forty_seven, :orphan_machines
relate :rel_continuity_supplies_forty_seven, :supplies, :continuity, :the_forty_seven

# ---- a week outside the Great Root ----
relate :rel_sun_employed_by_root, :employed_by, :sun_yilan, :the_great_root
relate :rel_sun_operates_in_china, :operates_in, :sun_yilan, :mycelial_china
relate :rel_mulberry_in_china, :located_in, :mulberry_court_clinic, :mycelial_china
relate :rel_root_maintains_mulberry, :maintains, :the_great_root, :mulberry_court_clinic
relate :rel_mulberry_depends_textiles, :depends_on, :mulberry_court_clinic, :living_textiles
relate :rel_mulberry_maintains_film, :maintains, :mulberry_court_clinic, :separation_film
relate :rel_mulberry_evades_mesh, :evades, :mulberry_court_clinic, :mycelial_neural_mesh
relate :rel_film_evades_mesh, :evades, :separation_film, :mycelial_neural_mesh
relate :rel_sun_located_mulberry, :located_in, :sun_yilan, :mulberry_court_clinic
relate :rel_peng_inhabits_china, :inhabits, :peng_meizhen, :mycelial_china
relate :rel_peng_symbiotic_root, :symbiotic_with, :peng_meizhen, :the_great_root
relate :rel_peng_depends_film, :depends_on, :peng_meizhen, :separation_film

# ---- the Race Street warehouse and its unpaid workers ----
relate :rel_race_street_in_boswash, :located_in, :race_street_warehouse, :boswash_ruins, since: 2074
relate :rel_market_maintains_race_street, :maintains, :market, :race_street_warehouse, since: 2074
relate :rel_ruth_employed_by_market, :employed_by, :ruth_osei, :market, since: 2081
relate :rel_ruth_located_at_race_street, :located_in, :ruth_osei, :race_street_warehouse, since: 2081
relate :rel_receipt_holders_operate_race_street, :operates_in, :the_receipt_holders, :race_street_warehouse, since: 2087
relate :rel_receipt_holders_cooperate_unpersons, :cooperates_with, :the_receipt_holders, :the_unpersons, since: 2087
relate :rel_receipt_holders_petition_market, :petitions, :the_receipt_holders, :market, since: 2087
relate :rel_six_at_race_street, :manifests_at, :the_six_under_race_street, :race_street_warehouse
relate :rel_six_during_holding, :active_during, :the_six_under_race_street, :the_holding
relate :rel_market_in_six, :participated_in, :market, :the_six_under_race_street
relate :rel_unpersons_in_six, :participated_in, :the_unpersons, :the_six_under_race_street
relate :rel_ruth_in_six, :participated_in, :ruth_osei, :the_six_under_race_street
relate :rel_six_caused_receipt_holders, :caused, :the_six_under_race_street, :the_receipt_holders
relate :rel_receipt_holders_draw_managed, :member_of, :the_managed, :the_receipt_holders, since: 2087

# ---- people and places the separation cluster left unjoined ----
relate :rel_peng_located_mulberry, :located_in, :peng_meizhen, :mulberry_court_clinic, since: 2090
relate :rel_sun_attends_peng, :attends, :sun_yilan, :peng_meizhen, since: 2090
relate :rel_peng_member_joined, :member_of, :peng_meizhen, :the_joined
relate :rel_film_depends_textiles, :depends_on, :separation_film, :living_textiles
relate :rel_film_limits_implants, :evades, :separation_film, :symbiotic_implants

# ---- Cairo's roll-keeper and the households on it ----
relate :rel_bell_records_forty_seven, :studies, :inez_bell, :the_forty_seven, since: 2090
relate :rel_forty_seven_drawn_from_managed, :member_of, :the_managed, :the_forty_seven, since: 2090
