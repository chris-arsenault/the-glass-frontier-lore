# Lateral ties between Race Street and Juyan, the Conowingo labor corridor,
# and the Tangwang forest crews.

# ---- the ceramic that crossed into a Philadelphia repair ----
relate :rel_tb_vault_possesses_shard, :possesses, :juyan_ceramic_vault, :the_six_faced_pipe_shard, since: 2071
relate :rel_tb_shard_derived_ceramics, :derived_from, :the_six_faced_pipe_shard, :memory_ceramics
relate :rel_tb_preservationists_possess_shard, :possesses, :the_preservationists, :the_six_faced_pipe_shard, since: 2071
relate :rel_tb_market_supplies_vault, :supplies, :market, :juyan_ceramic_vault, since: 2085
relate :rel_tb_brokers_supply_vault, :supplies, :the_brokers, :juyan_ceramic_vault, since: 2084
relate :rel_tb_warehouse_depends_shard, :depends_on, :race_street_warehouse, :the_six_faced_pipe_shard, since: 2085
relate :rel_tb_osei_studies_shard, :studies, :ruth_osei, :the_six_faced_pipe_shard, since: 2088

# ---- the repair the rubbing helped settle ----
relate :rel_tb_callowhill_at_warehouse, :manifests_at, :the_callowhill_riser, :race_street_warehouse
relate :rel_tb_callowhill_during_dry_war, :active_during, :the_callowhill_riser, :the_dry_war_era
relate :rel_tb_callowhill_depends_vault, :depends_on, :the_callowhill_riser, :juyan_ceramic_vault
relate :rel_tb_callowhill_depends_shard, :depends_on, :the_callowhill_riser, :the_six_faced_pipe_shard
relate :rel_tb_callowhill_conducted_by_osei, :conducted_by, :the_callowhill_riser, :ruth_osei
relate :rel_tb_osei_in_callowhill, :participated_in, :ruth_osei, :the_callowhill_riser
relate :rel_tb_receipt_holders_in_callowhill, :participated_in, :the_receipt_holders, :the_callowhill_riser
relate :rel_tb_market_in_callowhill, :participated_in, :market, :the_callowhill_riser

# ---- the Conowingo sluice yard ----
relate :rel_tb_yard_in_boswash, :located_in, :conowingo_sluice_yard, :boswash_ruins, since: 2079
relate :rel_tb_market_operates_yard, :operates_in, :market, :conowingo_sluice_yard, since: 2079
relate :rel_tb_yard_depends_water, :depends_on, :conowingo_sluice_yard, :water
relate :rel_tb_yard_supplies_warehouse, :supplies, :conowingo_sluice_yard, :race_street_warehouse, since: 2079
relate :rel_tb_pilgrims_operate_yard, :operates_in, :the_pilgrims, :conowingo_sluice_yard, since: 2082

# ---- the Long Grass return ----
relate :rel_tb_long_grass_at_yard, :manifests_at, :the_long_grass_return, :conowingo_sluice_yard
relate :rel_tb_long_grass_during_dry_war, :active_during, :the_long_grass_return, :the_dry_war_era
relate :rel_tb_pilgrims_in_long_grass, :participated_in, :the_pilgrims, :the_long_grass_return
relate :rel_tb_market_in_long_grass, :participated_in, :market, :the_long_grass_return

# ---- the Eight-Auger Round ----
relate :rel_tb_eight_augers_at_post, :manifests_at, :the_eight_auger_round, :tangwang_post
relate :rel_tb_eight_augers_at_sanchakou, :manifests_at, :the_eight_auger_round, :sanchakou
relate :rel_tb_eight_augers_during_dry_war, :active_during, :the_eight_auger_round, :the_dry_war_era
relate :rel_tb_eight_augers_caused_by_ring, :caused_by, :the_eight_auger_round, :the_sanchakou_ring
relate :rel_tb_continuity_in_eight_augers, :participated_in, :continuity, :the_eight_auger_round
relate :rel_tb_xie_in_eight_augers, :participated_in, :xie_lanting, :the_eight_auger_round
relate :rel_tb_gao_in_eight_augers, :participated_in, :gao_wen, :the_eight_auger_round
relate :rel_tb_eight_augers_mentions_root, :mentions, :the_eight_auger_round, :the_great_root
