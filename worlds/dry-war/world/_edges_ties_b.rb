# Lateral ties written to join three pairs of entities that had no route to each
# other except through a god. Each cluster is a connector plus the object or case
# it turns on:
#
#   the face warrant       — Race Street's claim files ↔ the Juyan stack
#   the engagement allotment — the Pilgrims ↔ claim escrow
#   the paired month       — emotional consensus ↔ predictive governance
#
# Temporal bounds are absolute years; see world/timeline.rb.

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
relate :rel_tb_warrant_at_claim_house, :manifests_at, :the_face_warrant, :race_street_claim_house, since: 2085
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
relate :rel_tb_claim_house_depends_schedule, :depends_on, :race_street_claim_house, :the_pressure_schedule, since: 2085 do
  prose "The acceptance figures for one class of pre-Breach chilled-water plant, held nowhere in Market's own files."
end
relate :rel_tb_preservationists_possess_schedule, :possesses, :the_preservationists, :the_pressure_schedule, since: 2071

# ---- the case the extract was used in ----
relate :rel_tb_callowhill_at_claim_house, :manifests_at, :the_callowhill_duplicate, :race_street_claim_house
relate :rel_tb_callowhill_at_register_house, :manifests_at, :the_callowhill_duplicate, :juyan_register_house
relate :rel_tb_callowhill_during_holding, :active_during, :the_callowhill_duplicate, :the_holding
relate :rel_tb_callowhill_depends_escrow, :depends_on, :the_callowhill_duplicate, :claim_escrow
relate :rel_tb_callowhill_depends_payee_rule, :depends_on, :the_callowhill_duplicate, :the_named_payee_rule
relate :rel_tb_callowhill_depends_warrant, :depends_on, :the_callowhill_duplicate, :the_face_warrant
relate :rel_tb_callowhill_depends_schedule, :depends_on, :the_callowhill_duplicate, :the_pressure_schedule
relate :rel_tb_callowhill_conducted_by_osei, :conducted_by, :the_callowhill_duplicate, :ruth_osei
relate :rel_tb_osei_in_callowhill, :participated_in, :ruth_osei, :the_callowhill_duplicate do
  prose "Three questions put twice: what the line was brought to, how long it was held there, and who was standing at the joints."
end
relate :rel_tb_receipt_holders_in_callowhill, :participated_in, :the_receipt_holders, :the_callowhill_duplicate
relate :rel_tb_market_in_callowhill, :participated_in, :market, :the_callowhill_duplicate
relate :rel_tb_callowhill_mentions_guardianship, :mentions, :the_callowhill_duplicate, :guardianship
relate :rel_tb_brokers_in_callowhill, :participated_in, :the_brokers, :the_callowhill_duplicate
relate :rel_tb_receipt_holders_cooperates_brokers, :cooperates_with, :the_receipt_holders, :the_brokers, since: 2089 do
  prose "The mutual opens a warrant request before a claim on plant older than the Breach reaches the identity desk, and pays the freight."
end
relate :rel_tb_osei_studies_schedule, :studies, :ruth_osei, :the_pressure_schedule, since: 2088 do
  prose "Nine certified extracts on the shelf behind the identity desk, covering nine classes of plant. She will not put the three questions to a claimant on a class she has no extract for."
end

# ---- the engagement allotment ----
relate :rel_tb_market_regulates_allotment, :regulates, :market, :the_engagement_allotment, since: 2079
relate :rel_tb_allotment_depends_escrow, :depends_on, :the_engagement_allotment, :claim_escrow do
  prose "The buyer funds the whole price, the allotted fraction leaves reserve on the counter's payment days, and the remainder waits for a record entitled to it."
end
relate :rel_tb_allotment_depends_payee_rule, :depends_on, :the_engagement_allotment, :the_named_payee_rule do
  prose "Not an assignment: the allottee's entitlement is created with the contract, from a class of relatives who cannot be purchasers of the claim."
end
relate :rel_tb_allotment_at_counter, :manifests_at, :the_engagement_allotment, :conowingo_engagement_counter, since: 2079
relate :rel_tb_allotment_practiced_by_pilgrims, :practiced_by, :the_engagement_allotment, :the_pilgrims, since: 2082
relate :rel_tb_allotment_mentions_unpersons, :mentions, :the_engagement_allotment, :the_unpersons

# ---- the counter ----
relate :rel_tb_counter_in_boswash, :located_in, :conowingo_engagement_counter, :boswash_ruins, since: 2079
relate :rel_tb_market_operates_counter, :operates_in, :market, :conowingo_engagement_counter, since: 2079
relate :rel_tb_counter_depends_escrow, :depends_on, :conowingo_engagement_counter, :claim_escrow
relate :rel_tb_counter_depends_water, :depends_on, :conowingo_engagement_counter, :water
relate :rel_tb_counter_supplies_claim_house, :supplies, :conowingo_engagement_counter, :race_street_claim_house, since: 2079 do
  prose "A completion record naming a crew of nine and no worker is the file the claim house then spends years opening."
end
relate :rel_tb_pilgrims_operate_counter, :operates_in, :the_pilgrims, :conowingo_engagement_counter, since: 2082

# ---- the season that settled how a group uses a note ----
relate :rel_tb_priced_return_at_counter, :manifests_at, :the_priced_return, :conowingo_engagement_counter
relate :rel_tb_priced_return_during_holding, :active_during, :the_priced_return, :the_holding
relate :rel_tb_priced_return_depends_allotment, :depends_on, :the_priced_return, :the_engagement_allotment
relate :rel_tb_priced_return_depends_escrow, :depends_on, :the_priced_return, :claim_escrow
relate :rel_tb_pilgrims_in_priced_return, :participated_in, :the_pilgrims, :the_priced_return
relate :rel_tb_market_in_priced_return, :participated_in, :market, :the_priced_return do
  prose "Gallery work pulled forward, priced against an expected supply of crews, and posted on the chalk board six days early as every rate in the yard is."
end
relate :rel_tb_priced_return_regulates_allotment, :regulates, :the_priced_return, :the_engagement_allotment, since: 2089
relate :rel_tb_priced_return_mentions_predictive, :mentions, :the_priced_return, :predictive_governance

# ---- the paired month ----
relate :rel_tb_paired_month_at_post, :manifests_at, :the_paired_month, :tangwang_post, since: 2088
relate :rel_tb_paired_month_depends_consensus, :depends_on, :the_paired_month, :emotional_consensus do
  prose "The clinic's roster aggregate is the same quantity a district's policy is read from, and it is one of the two series the month sets against each other."
end
relate :rel_tb_paired_month_depends_predictive, :depends_on, :the_paired_month, :predictive_governance do
  prose "A model that forecasts one person at a time will not take a figure it cannot attribute, so the month produces thirty days of attributable behaviour by hand."
end
relate :rel_tb_paired_month_practiced_by_continuity, :practiced_by, :the_paired_month, :continuity, since: 2088
relate :rel_tb_paired_month_depends_mesh, :depends_on, :the_paired_month, :mycelial_neural_mesh
relate :rel_tb_paired_month_regulates_ring_order, :regulates, :the_paired_month, :the_ring_order, since: 2088 do
  prose "It governs one thing in the order: who the cabinet will clear onto the quarterly round into the reserved band."
end
relate :rel_tb_paired_month_mentions_sanchakou, :mentions, :the_paired_month, :sanchakou

# ---- the card ----
relate :rel_tb_card_at_post, :located_in, :the_conversion_card, :tangwang_post, since: 2088
relate :rel_tb_card_depends_paired_month, :depends_on, :the_conversion_card, :the_paired_month
relate :rel_tb_continuity_created_card, :created, :continuity, :the_conversion_card
relate :rel_tb_card_depends_predictive, :depends_on, :the_conversion_card, :predictive_governance
relate :rel_tb_card_depends_consensus, :depends_on, :the_conversion_card, :emotional_consensus
relate :rel_tb_card_depends_mesh, :depends_on, :the_conversion_card, :mycelial_neural_mesh
relate :rel_tb_xie_maintains_card, :maintains, :xie_lanting, :the_conversion_card, since: 2088
relate :rel_tb_card_mentions_tsoi, :mentions, :the_conversion_card, :nadya_tsoi
relate :rel_tb_ring_order_depends_card, :depends_on, :the_ring_order, :the_conversion_card, since: 2088 do
  prose "No entrant is cleared onto the quarterly round against a card the cabinet has not printed or the roll keeper has not signed."
end

# ---- the case the conversion was applied in ----
relate :rel_tb_grid_hand_at_post, :manifests_at, :the_ninth_grid_hand, :tangwang_post
relate :rel_tb_grid_hand_at_sanchakou, :manifests_at, :the_ninth_grid_hand, :sanchakou
relate :rel_tb_grid_hand_during_holding, :active_during, :the_ninth_grid_hand, :the_holding
relate :rel_tb_grid_hand_depends_card, :depends_on, :the_ninth_grid_hand, :the_conversion_card
relate :rel_tb_grid_hand_depends_paired_month, :depends_on, :the_ninth_grid_hand, :the_paired_month
relate :rel_tb_grid_hand_caused_by_ring, :caused_by, :the_ninth_grid_hand, :the_sanchakou_ring do
  prose "The post's roster aggregate fell through the weeks its crews spent closing the compartment and moving the settlement, and every converted per-person figure fell with it."
end
relate :rel_tb_continuity_in_grid_hand, :participated_in, :continuity, :the_ninth_grid_hand
relate :rel_tb_xie_in_grid_hand, :participated_in, :xie_lanting, :the_ninth_grid_hand
relate :rel_tb_grid_hand_mentions_tsoi, :mentions, :the_ninth_grid_hand, :nadya_tsoi
relate :rel_tb_grid_hand_mentions_root, :mentions, :the_ninth_grid_hand, :the_great_root
