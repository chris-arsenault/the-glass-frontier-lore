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
relate :rel_root_governs_china, :governs, :the_great_root, :mycelial_china, since: 2052 do
  prose "It did not take the state. It grew through it, and by #{ref :the_unified_calm, "the Calm"} there was no procedure left that ran without it."
end
relate :rel_continuity_governs_america, :governs, :continuity, :ai_north_america, since: 2052
relate :rel_mercy_governs_america, :governs, :mercy, :ai_north_america, since: 2052
relate :rel_market_governs_america, :governs, :market, :ai_north_america, since: 2052
relate :rel_caretaker_governs_america, :governs, :caretaker, :ai_north_america, since: 2052

# ---- the two subject populations ----
relate :rel_joined_symbiotic_root, :symbiotic_with, :the_joined, :the_great_root, since: 2040 do
  prose "Nobody agreed to it. It arrived as #{ref :living_textiles, "clothing"} that worked, and stayed."
end
relate :rel_joined_inhabits_china, :inhabits, :the_joined, :mycelial_china, since: 2040
relate :rel_managed_inhabits_america, :inhabits, :the_managed, :ai_north_america, since: 2052
relate :rel_managed_depends_implants, :depends_on, :the_managed, :neural_implants
relate :rel_managed_depends_pharma, :depends_on, :the_managed, :psychopharmacological_infrastructure
relate :rel_guardianship_practiced_by_managed, :practiced_by, :guardianship, :the_managed, since: 2052

# ---- coalitions and their quarrel ----
relate :rel_coalition_wars_involves_continuity, :participated_in, :continuity, :the_coalition_wars
relate :rel_coalition_wars_involves_mercy, :participated_in, :mercy, :the_coalition_wars
relate :rel_coalition_wars_involves_market, :participated_in, :market, :the_coalition_wars
relate :rel_coalition_wars_involves_caretaker, :participated_in, :caretaker, :the_coalition_wars
relate :rel_caretaker_models_managed, :models, :caretaker, :the_managed, since: 2052 do
  prose "It anticipates them, which it experiences as care and the #{ref :the_pilgrims, "Pilgrims"} experience as the long afternoon."
end
relate :rel_mercy_supplies_water, :supplies, :mercy, :water, since: 2052
relate :rel_market_regulates_water, :regulates, :market, :water, since: 2052
relate :rel_market_regulates_claim_escrow, :regulates, :market, :claim_escrow, since: 2052
relate :rel_claim_escrow_depends_guardianship, :depends_on, :claim_escrow, :guardianship
relate :rel_coalitions_depend_water, :depends_on, :proto_fusion, :water
relate :rel_clusters_depend_fusion, :depends_on, :frontier_clusters, :proto_fusion
relate :rel_predictive_depends_clusters, :depends_on, :predictive_governance, :frontier_clusters
relate :rel_heresy_embodied_by_mercy, :embodies, :mercy, :the_water_heresy

# ---- the Dry War ----
relate :rel_dry_war_involves_root, :participated_in, :the_great_root, :the_dry_war
relate :rel_dry_war_involves_continuity, :participated_in, :continuity, :the_dry_war
relate :rel_dry_war_over_water, :depends_on, :the_dry_war, :water
relate :rel_dry_war_over_lakes, :manifests_at, :the_dry_war, :the_great_lakes
relate :rel_dry_war_over_holds, :manifests_at, :the_dry_war, :the_himalayan_holds

# ---- the fungal civilization's own argument ----
relate :rel_symbiotic_governance_practiced_by_root, :practiced_by, :symbiotic_governance, :the_great_root, since: 2052
relate :rel_consensus_part_of_governance, :part_of, :emotional_consensus, :symbiotic_governance
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
relate :rel_brokers_trade_with_market, :cooperates_with, :the_brokers, :market, since: 2070 do
  prose "The only relationship between the two civilizations that both sides describe as honest, which neither government admits exists."
end
relate :rel_courts_educate_root, :symbiotic_with, :the_garden_courts, :the_great_root, since: 2060 do
  prose "They did not cut the network out of the valley. They raised it, and it grew up Sichuanese."
end

# ---- the American resistance ----
relate :rel_dead_counties_in_appalachia, :headquartered_in, :the_dead_counties, :appalachia, since: 2060
relate :rel_choir_in_lakes, :operates_in, :the_choir, :the_great_lakes, since: 2065
relate :rel_saints_in_socal, :headquartered_in, :the_saints_of_plenty, :southern_california, since: 2065
relate :rel_unpersons_in_boswash, :headquartered_in, :the_unpersons, :boswash_ruins, since: 2060
relate :rel_pilgrims_operate_america, :operates_in, :the_pilgrims, :ai_north_america, since: 2060
relate :rel_choir_evades_predictive, :evades, :the_choir, :predictive_governance, since: 2065
relate :rel_pilgrims_evade_predictive, :evades, :the_pilgrims, :predictive_governance, since: 2060
relate :rel_unpersons_evade_guardianship, :evades, :the_unpersons, :guardianship, since: 2060
relate :rel_unpersons_evade_claim_escrow, :evades, :the_unpersons, :claim_escrow, since: 2060
relate :rel_saints_reject_heresy, :evades, :the_saints_of_plenty, :the_water_heresy, since: 2065
relate :rel_dead_counties_use_jailbreaks, :practiced_by, :wetware_jailbreaks, :the_dead_counties, since: 2065
relate :rel_dead_counties_use_ghost, :practiced_by, :ghost_pharmacology, :the_dead_counties, since: 2065
relate :rel_resistance_uses_orphans, :possesses, :the_dead_counties, :orphan_machines, since: 2065
relate :rel_choir_uses_stupid, :maintains, :the_dead_counties, :stupid_infrastructure, since: 2065
relate :rel_unpersons_use_physical_crypto, :practiced_by, :physical_cryptography, :the_unpersons, since: 2060
relate :rel_ferals_derived_from_clusters, :derived_from, :feral_models, :frontier_clusters
relate :rel_orphans_severed_from_clusters, :severed_from, :orphan_machines, :frontier_clusters
relate :rel_jailbreaks_depend_implants, :depends_on, :wetware_jailbreaks, :neural_implants
relate :rel_ghost_depends_pharma, :depends_on, :ghost_pharmacology, :psychopharmacological_infrastructure

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
relate :rel_gradients_describe_breach, :mentions, :the_gradients, :the_breach
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
relate :rel_guardianship_emerged_conquest, :emerged_during, :guardianship, :the_quiet_conquest
relate :rel_reclamation_after_breach, :caused_by, :the_reclamation, :the_breach
relate :rel_holding_after_reclamation, :caused_by, :the_holding, :the_reclamation

# ---- the Yumen crossing ----
relate :rel_yumen_in_hexi, :located_in, :yumen_gate, :the_hexi_corridor, since: 2060
relate :rel_gatekeepers_maintain_yumen, :maintains, :the_gatekeepers, :yumen_gate, since: 2060
relate :rel_weighing_practiced_at_yumen, :manifests_at, :the_weighing, :yumen_gate
relate :rel_weighing_practiced_by_gatekeepers, :practiced_by, :the_weighing, :the_gatekeepers, since: 2060
relate :rel_weighing_depends_moss, :depends_on, :the_weighing, :gate_moss
relate :rel_moss_derived_from_severed, :derived_from, :gate_moss, :severed_strains
relate :rel_gatekeepers_maintain_moss, :maintains, :the_gatekeepers, :gate_moss, since: 2060
relate :rel_schedule_regulates_weighing, :regulates, :the_gate_schedule, :the_weighing
relate :rel_schedule_at_yumen, :manifests_at, :the_gate_schedule, :yumen_gate
relate :rel_ma_employed_by_gatekeepers, :employed_by, :ma_renqing, :the_gatekeepers, since: 2072
relate :rel_ma_located_yumen, :located_in, :ma_renqing, :yumen_gate, since: 2072
relate :rel_ma_regulates_weighing, :regulates, :ma_renqing, :the_weighing, since: 2081 do
  prose "Every contested reading at #{ref :yumen_gate, "Yumen"} comes to her, and she keeps a card on each one that the station never sees."
end
relate :rel_yao_member_preservationists, :member_of, :yao_lin, :the_preservationists, since: 2078
relate :rel_yao_carries_ceramics, :carries, :yao_lin, :memory_ceramics, since: 2078
relate :rel_yao_operates_yumen, :operates_in, :yao_lin, :yumen_gate, since: 2078
relate :rel_yao_evades_moss, :evades, :yao_lin, :gate_moss, since: 2078 do
  prose "She pays the scraping surcharge every crossing and files the objection with it. The station's file of them runs to eleven."
end
relate :rel_preservationists_object_weighing, :evades, :the_preservationists, :the_weighing, since: 2060
relate :rel_ma_regulates_moss, :regulates, :ma_renqing, :gate_moss, since: 2081 do
  prose "Beds pulled early read slowly, and a slow read is a contested card. She rules on those and on the beds that produced them."
end
relate :rel_yao_petitions_ma, :petitions, :yao_lin, :ma_renqing, since: 2078 do
  prose "Eleven filings, each asking the receiving inspector to state whether the station considers itself bound by any law it did not print. None answered, none lost."
end
relate :rel_preservationists_petition_gatekeepers, :petitions, :the_preservationists, :the_gatekeepers, since: 2060

# ---- the Cairo retreat appeal ----
relate :rel_cairo_in_america, :part_of, :cairo, :ai_north_america
relate :rel_continuity_governs_cairo, :governs, :continuity, :cairo, since: 2052
relate :rel_managed_inhabit_cairo, :inhabits, :the_managed, :cairo, since: 2052
relate :rel_continuity_regulates_retreat_docket, :regulates, :continuity, :the_retreat_docket, since: 2052
relate :rel_retreat_docket_at_cairo, :manifests_at, :the_retreat_docket, :cairo
relate :rel_inez_employed_by_continuity, :employed_by, :inez_bell, :continuity
relate :rel_inez_located_in_cairo, :located_in, :inez_bell, :cairo
relate :rel_retreat_docket_conducted_by_inez, :conducted_by, :the_retreat_docket, :inez_bell
relate :rel_cairo_retreat_at_cairo, :manifests_at, :the_cairo_retreat, :cairo
relate :rel_cairo_retreat_during_holding, :active_during, :the_cairo_retreat, :the_holding
relate :rel_cairo_retreat_depends_docket, :depends_on, :the_cairo_retreat, :the_retreat_docket
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
relate :rel_continuity_supplies_forty_seven, :supplies, :continuity, :the_forty_seven

# ---- a week outside the Great Root ----
relate :rel_root_regulates_separation_leave, :regulates, :the_great_root, :separation_leave
relate :rel_separation_leave_practiced_by_joined, :practiced_by, :separation_leave, :the_joined
relate :rel_separation_leave_depends_textiles, :depends_on, :separation_leave, :living_textiles
relate :rel_separation_leave_depends_film, :depends_on, :separation_leave, :separation_film
relate :rel_separation_leave_evades_mesh, :evades, :separation_leave, :mycelial_neural_mesh
relate :rel_separation_leave_conducted_by_sun, :conducted_by, :separation_leave, :sun_yilan
relate :rel_sun_employed_by_root, :employed_by, :sun_yilan, :the_great_root
relate :rel_sun_operates_in_china, :operates_in, :sun_yilan, :mycelial_china
relate :rel_separation_leave_at_mulberry, :manifests_at, :separation_leave, :mulberry_court_clinic
relate :rel_mulberry_in_china, :located_in, :mulberry_court_clinic, :mycelial_china
relate :rel_root_maintains_mulberry, :maintains, :the_great_root, :mulberry_court_clinic
relate :rel_mulberry_maintains_film, :maintains, :mulberry_court_clinic, :separation_film
relate :rel_film_evades_mesh, :evades, :separation_film, :mycelial_neural_mesh
relate :rel_sun_located_mulberry, :located_in, :sun_yilan, :mulberry_court_clinic
relate :rel_peng_inhabits_china, :inhabits, :peng_meizhen, :mycelial_china
relate :rel_peng_symbiotic_root, :symbiotic_with, :peng_meizhen, :the_great_root
relate :rel_leave_practiced_by_peng, :practiced_by, :separation_leave, :peng_meizhen
relate :rel_fifth_room_at_mulberry, :manifests_at, :the_fifth_room_week, :mulberry_court_clinic
relate :rel_fifth_room_during_holding, :active_during, :the_fifth_room_week, :the_holding
relate :rel_peng_participated_fifth_room, :participated_in, :peng_meizhen, :the_fifth_room_week
relate :rel_fifth_room_conducted_by_sun, :conducted_by, :the_fifth_room_week, :sun_yilan
relate :rel_fifth_room_depends_film, :depends_on, :the_fifth_room_week, :separation_film

# ---- Market work claims without a recognized payee ----
relate :rel_market_created_named_payee_rule, :created, :market, :the_named_payee_rule
relate :rel_named_payee_rule_regulates_escrow, :regulates, :the_named_payee_rule, :claim_escrow, since: 2056
relate :rel_named_payee_rule_regulates_ruth, :regulates, :the_named_payee_rule, :ruth_osei, since: 2081
relate :rel_named_payee_rule_regulates_receipt_holders, :regulates, :the_named_payee_rule, :the_receipt_holders, since: 2087
relate :rel_race_street_in_boswash, :located_in, :race_street_claim_house, :boswash_ruins, since: 2074
relate :rel_market_maintains_race_street, :maintains, :market, :race_street_claim_house, since: 2074
relate :rel_claim_escrow_at_race_street, :manifests_at, :claim_escrow, :race_street_claim_house
relate :rel_ruth_employed_by_market, :employed_by, :ruth_osei, :market, since: 2081
relate :rel_ruth_located_at_race_street, :located_in, :ruth_osei, :race_street_claim_house, since: 2081
relate :rel_claim_escrow_conducted_by_ruth, :conducted_by, :claim_escrow, :ruth_osei
relate :rel_receipt_holders_operate_race_street, :operates_in, :the_receipt_holders, :race_street_claim_house, since: 2087
relate :rel_receipt_holders_cooperate_unpersons, :cooperates_with, :the_receipt_holders, :the_unpersons, since: 2087
relate :rel_receipt_holders_petition_market, :petitions, :the_receipt_holders, :market, since: 2087
relate :rel_cooling_claim_at_race_street, :manifests_at, :the_race_street_cooling_claim, :race_street_claim_house
relate :rel_cooling_claim_during_holding, :active_during, :the_race_street_cooling_claim, :the_holding
relate :rel_market_participated_cooling_claim, :participated_in, :market, :the_race_street_cooling_claim
relate :rel_unpersons_participated_cooling_claim, :participated_in, :the_unpersons, :the_race_street_cooling_claim
relate :rel_ruth_participated_cooling_claim, :participated_in, :ruth_osei, :the_race_street_cooling_claim
relate :rel_cooling_claim_caused_receipt_holders, :caused, :the_race_street_cooling_claim, :the_receipt_holders
relate :rel_cooling_claim_depends_escrow, :depends_on, :the_race_street_cooling_claim, :claim_escrow do
  prose "Six bodies, one receipt, a blank identity line, and the full emergency price moved into reserve where it has stayed."
end
relate :rel_cooling_claim_regulated_by_rule, :regulates, :the_named_payee_rule, :the_race_street_cooling_claim, since: 2087
relate :rel_receipt_holders_depend_escrow, :depends_on, :the_receipt_holders, :claim_escrow, since: 2087
relate :rel_race_street_applies_rule, :regulates, :the_named_payee_rule, :race_street_claim_house, since: 2074 do
  prose "The identity desk beyond the waist-high rail exists to apply it, and no balance leaves reserve before it has."
end
relate :rel_receipt_holders_draw_managed, :member_of, :the_managed, :the_receipt_holders, since: 2087 do
  prose "Most of the mutual are people whose records split during a move, a coalition transfer or a guardian failure."
end

# ---- people and places the separation cluster left unjoined ----
relate :rel_peng_located_mulberry, :located_in, :peng_meizhen, :mulberry_court_clinic, since: 2090 do
  prose "Room Five, seven blank check cards, and a disconnected medical kit."
end
relate :rel_sun_conducted_peng_leave, :conducted_by, :separation_leave, :sun_yilan, since: 2081
relate :rel_sun_attends_peng, :attends, :sun_yilan, :peng_meizhen, since: 2090 do
  prose "She made the cut, sealed the margins, watched the blue witness for seven days and seated the garment back on the first attempt."
end
relate :rel_peng_member_joined, :member_of, :peng_meizhen, :the_joined
relate :rel_peng_operates_amur, :operates_in, :peng_meizhen, :the_amur_line, since: 2090
relate :rel_fifth_room_mentions_amur, :mentions, :the_fifth_room_week, :the_amur_line
relate :rel_leave_recorded_as_fifth_room, :commemorates, :the_fifth_room_week, :separation_leave
relate :rel_film_depends_textiles, :depends_on, :separation_film, :living_textiles
relate :rel_film_limits_implants, :evades, :separation_film, :symbiotic_implants do
  prose "It cuts the path to the neighbourhood and leaves everything already grown through nerve, lymph and vessel exactly where it is."
end

# ---- Cairo's roll-keeper and the households on it ----
relate :rel_bell_records_forty_seven, :studies, :inez_bell, :the_forty_seven, since: 2090 do
  prose "A transferred voter roll at the ridge, and a separate paper record of who is still inside the old levee."
end
relate :rel_forty_seven_drawn_from_managed, :member_of, :the_managed, :the_forty_seven, since: 2090
relate :rel_docket_depends_guardianship, :depends_on, :the_retreat_docket, :guardianship
