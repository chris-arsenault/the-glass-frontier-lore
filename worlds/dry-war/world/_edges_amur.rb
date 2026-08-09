# Typed relationships for the Amur condemnation cluster: the ring order, the post
# that issues it, the two humans who hold the benches, the file they disagreed on
# and the settlement the band moved. Temporal bounds use absolute years — see
# world/timeline.rb.

# ---- the order itself ----
relate :rel_amur_ring_at_line, :manifests_at, :the_ring_order, :the_amur_line
relate :rel_amur_ring_at_post, :manifests_at, :the_ring_order, :tangwang_post, since: 2088
relate :rel_amur_root_regulates_ring, :regulates, :the_great_root, :the_ring_order, since: 2088
relate :rel_amur_ring_depends_continuity, :depends_on, :the_ring_order, :continuity do
  prose "No compartment is condemned without a deviation sheet, and the cabinet that prints it belongs to a coalition on the other side of the #{ref :the_dry_war, "Dry War"}."
end
relate :rel_amur_ring_depends_gradients, :depends_on, :the_ring_order, :the_gradients
relate :rel_amur_others_mention_ring, :mentions, :the_others, :the_ring_order

# ---- the post ----
relate :rel_amur_post_in_line, :located_in, :tangwang_post, :the_amur_line, since: 2079
relate :rel_amur_root_maintains_post, :maintains, :the_great_root, :tangwang_post, since: 2088
relate :rel_amur_continuity_operates_post, :operates_in, :continuity, :tangwang_post, since: 2088 do
  prose "One shed, one mast, no crew. The reach's readings enter the file and leave for North America on the same schedule."
end
relate :rel_amur_continuity_models_line, :models, :continuity, :the_amur_line, since: 2088
relate :rel_amur_post_carries_mesh, :carries, :tangwang_post, :mycelial_neural_mesh, since: 2088
relate :rel_amur_post_records_on_ceramics, :depends_on, :tangwang_post, :memory_ceramics, since: 2089
relate :rel_amur_preservationists_operate_post, :operates_in, :the_preservationists, :tangwang_post, since: 2089
relate :rel_amur_post_mentions_peng, :mentions, :tangwang_post, :peng_meizhen, since: 2090
relate :rel_amur_post_regulates_sanchakou, :regulates, :tangwang_post, :sanchakou, since: 2088

# ---- the coring bench ----
relate :rel_amur_xie_employed_by_root, :employed_by, :xie_lanting, :the_great_root, since: 2084
relate :rel_amur_xie_at_post, :located_in, :xie_lanting, :tangwang_post, since: 2087
relate :rel_amur_xie_operates_line, :operates_in, :xie_lanting, :the_amur_line, since: 2084
relate :rel_amur_ring_conducted_by_xie, :conducted_by, :the_ring_order, :xie_lanting, since: 2087
relate :rel_amur_xie_studies_others, :studies, :xie_lanting, :the_others, since: 2084
relate :rel_amur_xie_studies_sanchakou, :studies, :xie_lanting, :sanchakou, since: 2087 do
  prose "Her comparison drawer holds cores off its orchard rows from each of the three register years the post has issued orders in."
end
relate :rel_amur_xie_cooperates_continuity, :cooperates_with, :xie_lanting, :continuity, since: 2087 do
  prose "Eleven files in the current register carry a core sheet and a deviation sheet that contradict each other, and both benches signed all twenty-two."
end

# ---- the scout hut ----
relate :rel_amur_tsoi_employed_by_post, :employed_by, :nadya_tsoi, :tangwang_post, since: 2085
relate :rel_amur_tsoi_operates_line, :operates_in, :nadya_tsoi, :the_amur_line, since: 2085
relate :rel_amur_ring_conducted_by_tsoi, :conducted_by, :the_ring_order, :nadya_tsoi, since: 2085
relate :rel_amur_tsoi_severed_from_mesh, :severed_from, :nadya_tsoi, :mycelial_neural_mesh do
  prose "She stands down in the hut for a night and a day after a walk before she is admitted to the post's air."
end
relate :rel_amur_tsoi_studies_others, :studies, :nadya_tsoi, :the_others, since: 2085
relate :rel_amur_tsoi_operates_sanchakou, :operates_in, :nadya_tsoi, :sanchakou, since: 2085 do
  prose "Its grid-hands have walked the band's far margin with her in every week since the band was published."
end
relate :rel_amur_continuity_petitions_tsoi, :petitions, :continuity, :nadya_tsoi, since: 2087 do
  prose "Filed on the day of every cut and again on every release, kept in copy, never answered and never withdrawn."
end

# ---- the two benches to each other ----
relate :rel_amur_xie_cooperates_tsoi, :cooperates_with, :xie_lanting, :nadya_tsoi, since: 2087 do
  prose "They have never put the same recommendation on a file the cabinet opened, and each has been in the compartment on the other's day."
end

# ---- the file ----
relate :rel_amur_file_during_holding, :active_during, :the_sanchakou_ring, :the_holding
relate :rel_amur_file_depends_ring_order, :depends_on, :the_sanchakou_ring, :the_ring_order
relate :rel_amur_file_at_post, :manifests_at, :the_sanchakou_ring, :tangwang_post
relate :rel_amur_file_at_line, :manifests_at, :the_sanchakou_ring, :the_amur_line
relate :rel_amur_file_at_sanchakou, :manifests_at, :the_sanchakou_ring, :sanchakou
relate :rel_amur_file_mentions_others, :mentions, :the_sanchakou_ring, :the_others
relate :rel_amur_continuity_in_file, :participated_in, :continuity, :the_sanchakou_ring do
  prose "It opened the file on the ninth consecutive reading above threshold and objected twice to what came out of the compartment."
end
relate :rel_amur_root_in_file, :participated_in, :the_great_root, :the_sanchakou_ring do
  prose "It moved thirty-one households 1,600 metres and entered the move as a completed transfer."
end
relate :rel_amur_xie_in_file, :participated_in, :xie_lanting, :the_sanchakou_ring
relate :rel_amur_tsoi_in_file, :participated_in, :nadya_tsoi, :the_sanchakou_ring do
  prose "Marking officer: two dies drawn, one hammer face set, one compartment condemned against the coring bench's count."
end
relate :rel_amur_file_conducted_by_tsoi, :conducted_by, :the_sanchakou_ring, :nadya_tsoi

# ---- the settlement ----
relate :rel_amur_sanchakou_in_line, :part_of, :sanchakou, :the_amur_line
relate :rel_amur_root_governs_sanchakou, :governs, :the_great_root, :sanchakou, since: 2052
relate :rel_amur_joined_inhabit_sanchakou, :inhabits, :the_joined, :sanchakou, since: 2052
relate :rel_amur_ring_regulates_sanchakou, :regulates, :the_ring_order, :sanchakou, since: 2090 do
  prose "Cutting, planting and residence end inside the band at the ring. Entry is on the bench's quarterly round."
end
relate :rel_amur_sanchakou_depends_textiles, :depends_on, :sanchakou, :living_textiles
relate :rel_amur_sanchakou_depends_mesh, :depends_on, :sanchakou, :mycelial_neural_mesh
