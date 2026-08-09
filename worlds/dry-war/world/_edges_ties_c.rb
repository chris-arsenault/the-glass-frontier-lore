# Lateral ties: three pairs that the graph left standing alone, joined by what
# sits between them rather than by an edge asserting they were connected all
# along.
#
#   the Brokers        ↔ feral models        — the counter-draw and the lodging house
#   sterile machines   ↔ the Mediterranean Chain — the fouling round and its tiles
#   bonsai minds       ↔ orphan machines     — the refusal sitting and its packets

# ---- the counter-draw: two halves, one term ----
relate :rel_tc_lodged_half_practiced_by_brokers, :practiced_by, :the_lodged_half, :the_brokers, since: 2071 do
  prose "Nothing that lives or learns leaves a Pearl River bench undrawn, and the counterfoil is what a buyer with no forum carries away instead of a warranty."
end
relate :rel_tc_lodged_half_at_godown, :manifests_at, :the_lodged_half, :wing_lok_godown
relate :rel_tc_lodged_half_depends_glass, :depends_on, :the_lodged_half, :witness_glass
relate :rel_tc_lodged_half_regulates_ferals, :regulates, :the_lodged_half, :feral_models, since: 2071 do
  prose "A model paid across the line is drawn in two in the same hour as the copy that ships, and the half that stays behind cannot be examined without ending it."
end
relate :rel_tc_lodged_half_regulates_severed, :regulates, :the_lodged_half, :severed_strains, since: 2071 do
  prose "A tissue slip off the same flush, sealed damp in a tinned copper tube, against the day the strain was sold as unable to reach anything."
end
relate :rel_tc_gatekeepers_study_lodged_half, :studies, :the_gatekeepers, :the_lodged_half, since: 2074

relate :rel_tc_godown_in_pearl, :located_in, :wing_lok_godown, :the_pearl_river_delta, since: 2071
relate :rel_tc_brokers_operate_godown, :operates_in, :the_brokers, :wing_lok_godown, since: 2071
relate :rel_tc_godown_holds_glass, :possesses, :wing_lok_godown, :witness_glass, since: 2079 do
  prose "Two hundred blocks on edge in wooden slip cases, in a room with no plumbing above it and nothing in it that sweats."
end

relate :rel_tc_glass_carries_ferals, :carries, :witness_glass, :feral_models, since: 2079
relate :rel_tc_glass_derived_from_crypto, :derived_from, :witness_glass, :physical_cryptography
relate :rel_tc_dead_counties_supply_glass, :supplies, :the_dead_counties, :witness_glass, since: 2079 do
  prose "Appalachian glass shops cut, write and glue the blocks, and write the shop's mark into a corner of every leaf rather than onto the case."
end

# ---- the case the practice is argued from ----
relate :rel_tc_complaint_at_godown, :manifests_at, :the_wing_lok_counter_complaint, :wing_lok_godown
relate :rel_tc_complaint_during_holding, :active_during, :the_wing_lok_counter_complaint, :the_holding
relate :rel_tc_brokers_participated_complaint, :participated_in, :the_brokers, :the_wing_lok_counter_complaint
relate :rel_tc_dead_counties_participated_complaint, :participated_in, :the_dead_counties, :the_wing_lok_counter_complaint
relate :rel_tc_complaint_depends_lodged_half, :depends_on, :the_wing_lok_counter_complaint, :the_lodged_half do
  prose "Filed on the three hundred and fiftieth day, decided six days after the term closed, and the reason a complaint received inside the term now holds both halves until the bench has answered it."
end
relate :rel_tc_complaint_depends_glass, :depends_on, :the_wing_lok_counter_complaint, :witness_glass
relate :rel_tc_complaint_mentions_severed, :mentions, :the_wing_lok_counter_complaint, :severed_strains
relate :rel_tc_complaint_mentions_ferals, :mentions, :the_wing_lok_counter_complaint, :feral_models

# ---- the fouling round: a grade, an area, an oven ----
relate :rel_tc_round_at_medchain, :manifests_at, :the_fouling_round, :the_mediterranean_chain
relate :rel_tc_round_at_kalkara, :manifests_at, :the_fouling_round, :kalkara_bake_shed
relate :rel_tc_round_depends_tiles, :depends_on, :the_fouling_round, :comparison_tiles do
  prose "Ten tiles in a copper case, laid against the surface under a raking lamp and dragged over with a leather pad. The grade is the tile the surface answers like."
end
relate :rel_tc_round_regulates_sterile, :regulates, :the_fouling_round, :sterile_machines, since: 2072 do
  prose "What may come inside a wall is what comes apart into pieces that fit an oven door, which is what the Chinese resistance shops were already building."
end
relate :rel_tc_round_regulates_severed, :regulates, :the_fouling_round, :severed_strains, since: 2072 do
  prose "The barrier is graded on the same sheet as the hulls. A bed that has crept onto the wall behind it is entered at a grade and cut back to the bed."
end
relate :rel_tc_tiles_derived_from_sterile, :derived_from, :comparison_tiles, :sterile_machines
relate :rel_tc_medchain_depends_severed, :depends_on, :the_mediterranean_chain, :severed_strains do
  prose "The fungal barrier inside every wall is disconnected stock with a documented lineage, bought from the unconnected world and graded every quarter."
end

relate :rel_tc_kalkara_in_medchain, :located_in, :kalkara_bake_shed, :the_mediterranean_chain, since: 2072
relate :rel_tc_kalkara_supplies_tiles, :supplies, :kalkara_bake_shed, :comparison_tiles, since: 2087 do
  prose "The shed stamps the season onto a new case, issues sets to named surveyors at the top of each quarter, and breaks the expired ones on a stone by the water door."
end
relate :rel_tc_kalkara_regulates_sterile, :regulates, :kalkara_bake_shed, :sterile_machines, since: 2072 do
  prose "The list on the water door names oiled bearings, seated gaskets, closed voids and sealed housings without complete material schedules."
end

relate :rel_tc_zonqor_at_medchain, :manifests_at, :the_zonqor_grading, :the_mediterranean_chain
relate :rel_tc_zonqor_at_kalkara, :manifests_at, :the_zonqor_grading, :kalkara_bake_shed
relate :rel_tc_zonqor_depends_tiles, :depends_on, :the_zonqor_grading, :comparison_tiles do
  prose "A set four seasons past its casting, worn toward the reading that requires no action. The grade was correct against the tiles in the surveyor's hand."
end
relate :rel_tc_zonqor_commemorates_round, :commemorates, :the_zonqor_grading, :the_fouling_round
relate :rel_tc_zonqor_mentions_others, :mentions, :the_zonqor_grading, :the_others
relate :rel_tc_zonqor_during_reclamation, :active_during, :the_zonqor_grading, :the_reclamation

# ---- Heshun: travelling lessons and the false headwater ----
relate :rel_tc_heshun_in_yunnan, :located_in, :heshun_reading_house, :yunnan, since: 2069
relate :rel_tc_heshun_supplies_brokers, :supplies, :heshun_reading_house, :the_brokers, since: 2074
relate :rel_tc_heshun_supplies_bonsai, :supplies, :heshun_reading_house, :bonsai_intelligences, since: 2069
relate :rel_tc_heshun_supplies_orphans, :supplies, :heshun_reading_house, :orphan_machines, since: 2074

relate :rel_tc_false_headwater_at_heshun, :manifests_at, :the_false_headwater, :heshun_reading_house
relate :rel_tc_false_headwater_during_reclamation, :active_during, :the_false_headwater, :the_reclamation
relate :rel_tc_false_headwater_mentions_bonsai, :mentions, :the_false_headwater, :bonsai_intelligences
relate :rel_tc_false_headwater_mentions_orphans, :mentions, :the_false_headwater, :orphan_machines
relate :rel_tc_dead_counties_in_false_headwater, :participated_in, :the_dead_counties, :the_false_headwater
relate :rel_tc_brokers_in_false_headwater, :participated_in, :the_brokers, :the_false_headwater
