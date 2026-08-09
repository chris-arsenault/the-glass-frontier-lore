# The Amur front, the people who read it and the dead forest left behind.

# ---- the dead rings ----
relate :rel_amur_rings_at_line, :manifests_at, :the_dead_rings, :the_amur_line
relate :rel_amur_rings_at_post, :manifests_at, :the_dead_rings, :tangwang_post, since: 2088
relate :rel_amur_rings_caused_by_others, :caused_by, :the_dead_rings, :the_others
relate :rel_amur_rings_depend_gradients, :depends_on, :the_dead_rings, :the_gradients
relate :rel_amur_root_maintains_rings, :maintains, :the_great_root, :the_dead_rings, since: 2088
relate :rel_amur_continuity_models_rings, :models, :continuity, :the_dead_rings, since: 2088

# ---- Tangwang Post ----
relate :rel_amur_post_in_line, :located_in, :tangwang_post, :the_amur_line, since: 2079
relate :rel_amur_root_maintains_post, :maintains, :the_great_root, :tangwang_post, since: 2088
relate :rel_amur_continuity_operates_post, :operates_in, :continuity, :tangwang_post, since: 2088
relate :rel_amur_continuity_models_line, :models, :continuity, :the_amur_line, since: 2088
relate :rel_amur_post_carries_mesh, :carries, :tangwang_post, :mycelial_neural_mesh, since: 2088
relate :rel_amur_post_records_on_ceramics, :depends_on, :tangwang_post, :memory_ceramics, since: 2089
relate :rel_amur_preservationists_operate_post, :operates_in, :the_preservationists, :tangwang_post, since: 2089
relate :rel_amur_post_mentions_peng, :mentions, :tangwang_post, :peng_meizhen, since: 2090
relate :rel_amur_post_regulates_sanchakou, :regulates, :tangwang_post, :sanchakou, since: 2088

# ---- Xie Lanting ----
relate :rel_amur_xie_employed_by_root, :employed_by, :xie_lanting, :the_great_root, since: 2084
relate :rel_amur_xie_at_post, :located_in, :xie_lanting, :tangwang_post, since: 2087
relate :rel_amur_xie_operates_line, :operates_in, :xie_lanting, :the_amur_line, since: 2084
relate :rel_amur_xie_studies_rings, :studies, :xie_lanting, :the_dead_rings, since: 2087
relate :rel_amur_xie_studies_others, :studies, :xie_lanting, :the_others, since: 2084
relate :rel_amur_xie_studies_sanchakou, :studies, :xie_lanting, :sanchakou, since: 2087
relate :rel_amur_xie_cooperates_continuity, :cooperates_with, :xie_lanting, :continuity, since: 2087

# ---- Nadya Tsoi ----
relate :rel_amur_tsoi_employed_by_post, :employed_by, :nadya_tsoi, :tangwang_post, since: 2085
relate :rel_amur_tsoi_operates_line, :operates_in, :nadya_tsoi, :the_amur_line, since: 2085
relate :rel_amur_tsoi_studies_rings, :studies, :nadya_tsoi, :the_dead_rings, since: 2085
relate :rel_amur_tsoi_severed_from_mesh, :severed_from, :nadya_tsoi, :mycelial_neural_mesh
relate :rel_amur_tsoi_studies_others, :studies, :nadya_tsoi, :the_others, since: 2085
relate :rel_amur_tsoi_operates_sanchakou, :operates_in, :nadya_tsoi, :sanchakou, since: 2085
relate :rel_amur_continuity_petitions_tsoi, :petitions, :continuity, :nadya_tsoi, since: 2087
relate :rel_amur_xie_cooperates_tsoi, :cooperates_with, :xie_lanting, :nadya_tsoi, since: 2087

# ---- the Sanchakou ring ----
relate :rel_amur_sanchakou_ring_during_holding, :active_during, :the_sanchakou_ring, :the_holding
relate :rel_amur_sanchakou_ring_embodies_rings, :embodies, :the_sanchakou_ring, :the_dead_rings
relate :rel_amur_sanchakou_ring_at_post, :manifests_at, :the_sanchakou_ring, :tangwang_post
relate :rel_amur_sanchakou_ring_at_line, :manifests_at, :the_sanchakou_ring, :the_amur_line
relate :rel_amur_sanchakou_ring_at_settlement, :manifests_at, :the_sanchakou_ring, :sanchakou
relate :rel_amur_sanchakou_ring_mentions_others, :mentions, :the_sanchakou_ring, :the_others
relate :rel_amur_continuity_in_sanchakou_ring, :participated_in, :continuity, :the_sanchakou_ring
relate :rel_amur_root_in_sanchakou_ring, :participated_in, :the_great_root, :the_sanchakou_ring
relate :rel_amur_xie_in_sanchakou_ring, :participated_in, :xie_lanting, :the_sanchakou_ring
relate :rel_amur_tsoi_in_sanchakou_ring, :participated_in, :nadya_tsoi, :the_sanchakou_ring
relate :rel_amur_sanchakou_ring_led_by_tsoi, :conducted_by, :the_sanchakou_ring, :nadya_tsoi

# ---- Sanchakou and Gao Wen ----
relate :rel_amur_sanchakou_in_line, :part_of, :sanchakou, :the_amur_line
relate :rel_amur_root_governs_sanchakou, :governs, :the_great_root, :sanchakou, since: 2052
relate :rel_amur_joined_inhabit_sanchakou, :inhabits, :the_joined, :sanchakou, since: 2052
relate :rel_amur_rings_at_sanchakou, :manifests_at, :the_dead_rings, :sanchakou, since: 2090
relate :rel_amur_sanchakou_depends_textiles, :depends_on, :sanchakou, :living_textiles
relate :rel_amur_sanchakou_depends_mesh, :depends_on, :sanchakou, :mycelial_neural_mesh
relate :rel_amur_gao_in_sanchakou, :inhabits, :gao_wen, :sanchakou
relate :rel_amur_gao_employed_by_post, :employed_by, :gao_wen, :tangwang_post, since: 2084
relate :rel_amur_gao_operates_line, :operates_in, :gao_wen, :the_amur_line, since: 2084
relate :rel_amur_gao_studies_rings, :studies, :gao_wen, :the_dead_rings, since: 2084
