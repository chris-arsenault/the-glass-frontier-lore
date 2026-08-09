# Lateral ties between Race Street and Juyan, the Conowingo labor corridor,
# and the Tangwang forest crews.

# ---- the face warrant ----
relate :rel_tb_warrant_at_register_house, :manifests_at, :the_face_warrant, :juyan_register_house
relate :rel_tb_warrant_practiced_by_preservationists, :practiced_by, :the_face_warrant, :the_preservationists, since: 2084
relate :rel_tb_warrant_practiced_by_market, :practiced_by, :the_face_warrant, :market, since: 2085 do
  prose "Twelve of the fifteen granted. A claim office files the request, states the use it will be put to, and signs title in the sheet away before the piece leaves its coffer."
end
relate :rel_tb_warrant_depends_squeeze, :depends_on, :the_face_warrant, :the_squeeze do
  prose "One face, one sheet, and the thickness the plate took entered on the piece's line."
end
relate :rel_tb_warrant_depends_register, :depends_on, :the_face_warrant, :entry_into_the_register
relate :rel_tb_warrant_regulates_ceramics, :regulates, :the_face_warrant, :memory_ceramics, since: 2084
relate :rel_tb_warrant_conducted_by_bao, :conducted_by, :the_face_warrant, :bao_qiuyan, since: 2084 do
  prose "The bench enters the grant, the thickness, the album number and — four times so far — the lapse of a warrant nobody executed inside its register year."
end
relate :rel_tb_warrant_at_warehouse, :manifests_at, :the_face_warrant, :race_street_warehouse, since: 2085
relate :rel_tb_brokers_carry_warrant, :carries, :the_brokers, :the_face_warrant, since: 2084
relate :rel_tb_yao_carries_warrant, :carries, :yao_lin, :the_face_warrant, since: 2085
relate :rel_tb_liangzhou_regulates_warrant, :regulates, :the_liangzhou_double_return, :the_face_warrant do
  prose "Four requests stopped. A house certificate over a line the settlement cannot close would carry a disputed reading into a file where nobody can find the dispute."
end

# ---- the piece the warrants are filed against ----
relate :rel_tb_house_possesses_schedule, :possesses, :juyan_register_house, :the_pressure_schedule, since: 2071
relate :rel_tb_schedule_derived_ceramics, :derived_from, :the_pressure_schedule, :memory_ceramics
relate :rel_tb_schedule_depends_squeeze, :depends_on, :the_pressure_schedule, :the_squeeze
relate :rel_tb_schedule_depends_register, :depends_on, :the_pressure_schedule, :entry_into_the_register
relate :rel_tb_warrant_regulates_schedule, :regulates, :the_face_warrant, :the_pressure_schedule, since: 2085 do
  prose "Six faces at admission, three spent on warrants, three standing. A warrant buys a face and receives whatever text that face carries."
end
relate :rel_tb_warehouse_depends_schedule, :depends_on, :race_street_warehouse, :the_pressure_schedule, since: 2085
relate :rel_tb_preservationists_possess_schedule, :possesses, :the_preservationists, :the_pressure_schedule, since: 2071

# ---- the case the extract was used in ----
relate :rel_tb_callowhill_at_warehouse, :manifests_at, :the_callowhill_riser, :race_street_warehouse
relate :rel_tb_callowhill_at_register_house, :manifests_at, :the_callowhill_riser, :juyan_register_house
relate :rel_tb_callowhill_during_holding, :active_during, :the_callowhill_riser, :the_holding
relate :rel_tb_callowhill_depends_warrant, :depends_on, :the_callowhill_riser, :the_face_warrant
relate :rel_tb_callowhill_depends_schedule, :depends_on, :the_callowhill_riser, :the_pressure_schedule
relate :rel_tb_callowhill_conducted_by_osei, :conducted_by, :the_callowhill_riser, :ruth_osei
relate :rel_tb_osei_in_callowhill, :participated_in, :ruth_osei, :the_callowhill_riser
relate :rel_tb_receipt_holders_in_callowhill, :participated_in, :the_receipt_holders, :the_callowhill_riser
relate :rel_tb_market_in_callowhill, :participated_in, :market, :the_callowhill_riser
relate :rel_tb_callowhill_mentions_guardianship, :mentions, :the_callowhill_riser, :guardianship
relate :rel_tb_brokers_in_callowhill, :participated_in, :the_brokers, :the_callowhill_riser
relate :rel_tb_receipt_holders_cooperates_brokers, :cooperates_with, :the_receipt_holders, :the_brokers, since: 2089
relate :rel_tb_osei_studies_schedule, :studies, :ruth_osei, :the_pressure_schedule, since: 2088

# ---- the Conowingo sluice yard ----
relate :rel_tb_yard_in_boswash, :located_in, :conowingo_sluice_yard, :boswash_ruins, since: 2079
relate :rel_tb_market_operates_yard, :operates_in, :market, :conowingo_sluice_yard, since: 2079
relate :rel_tb_yard_depends_water, :depends_on, :conowingo_sluice_yard, :water
relate :rel_tb_yard_supplies_warehouse, :supplies, :conowingo_sluice_yard, :race_street_warehouse, since: 2079
relate :rel_tb_pilgrims_operate_yard, :operates_in, :the_pilgrims, :conowingo_sluice_yard, since: 2082

# ---- the Long Grass return ----
relate :rel_tb_long_grass_at_yard, :manifests_at, :the_long_grass_return, :conowingo_sluice_yard
relate :rel_tb_long_grass_during_holding, :active_during, :the_long_grass_return, :the_holding
relate :rel_tb_pilgrims_in_long_grass, :participated_in, :the_pilgrims, :the_long_grass_return
relate :rel_tb_market_in_long_grass, :participated_in, :market, :the_long_grass_return
relate :rel_tb_long_grass_mentions_predictive, :mentions, :the_long_grass_return, :predictive_governance

# ---- the Eight-Auger Round ----
relate :rel_tb_eight_augers_at_post, :manifests_at, :the_eight_auger_round, :tangwang_post
relate :rel_tb_eight_augers_at_sanchakou, :manifests_at, :the_eight_auger_round, :sanchakou
relate :rel_tb_eight_augers_during_holding, :active_during, :the_eight_auger_round, :the_holding
relate :rel_tb_eight_augers_caused_by_ring, :caused_by, :the_eight_auger_round, :the_sanchakou_ring
relate :rel_tb_eight_augers_mentions_consensus, :mentions, :the_eight_auger_round, :emotional_consensus
relate :rel_tb_eight_augers_mentions_predictive, :mentions, :the_eight_auger_round, :predictive_governance
relate :rel_tb_continuity_in_eight_augers, :participated_in, :continuity, :the_eight_auger_round
relate :rel_tb_xie_in_eight_augers, :participated_in, :xie_lanting, :the_eight_auger_round
relate :rel_tb_gao_in_eight_augers, :participated_in, :gao_wen, :the_eight_auger_round
relate :rel_tb_eight_augers_mentions_root, :mentions, :the_eight_auger_round, :the_great_root
