# Lateral ties: three pairs that the graph left standing alone, joined by what
# sits between them rather than by an edge asserting they were connected all
# along.
#
#   the Brokers        ↔ feral models        — witness glass stored at Wing Lok
#   sterile machines   ↔ the Mediterranean Chain — the Kalkara ovens and their tiles
#   bonsai minds       ↔ orphan machines     — the Heshun house and its case bundles

# ---- Wing Lok and the samples above the street ----
relate :rel_tc_godown_in_pearl, :located_in, :wing_lok_godown, :the_pearl_river_delta, since: 2071
relate :rel_tc_brokers_operate_godown, :operates_in, :the_brokers, :wing_lok_godown, since: 2071
relate :rel_tc_godown_holds_glass, :possesses, :wing_lok_godown, :witness_glass, since: 2079
relate :rel_tc_godown_holds_strains, :possesses, :wing_lok_godown, :severed_strains, since: 2071
relate :rel_tc_gatekeepers_study_godown, :studies, :the_gatekeepers, :wing_lok_godown, since: 2074

relate :rel_tc_glass_carries_ferals, :carries, :witness_glass, :feral_models, since: 2079
relate :rel_tc_glass_derived_from_crypto, :derived_from, :witness_glass, :physical_cryptography
relate :rel_tc_dead_counties_supply_glass, :supplies, :the_dead_counties, :witness_glass, since: 2079

# ---- the eleven-day flush ----
relate :rel_tc_flush_at_godown, :manifests_at, :the_eleven_day_flush, :wing_lok_godown
relate :rel_tc_flush_during_holding, :active_during, :the_eleven_day_flush, :the_holding
relate :rel_tc_brokers_in_flush, :participated_in, :the_brokers, :the_eleven_day_flush
relate :rel_tc_dead_counties_in_flush, :participated_in, :the_dead_counties, :the_eleven_day_flush
relate :rel_tc_flush_depends_glass, :depends_on, :the_eleven_day_flush, :witness_glass
relate :rel_tc_flush_mentions_severed, :mentions, :the_eleven_day_flush, :severed_strains
relate :rel_tc_flush_mentions_ferals, :mentions, :the_eleven_day_flush, :feral_models

# ---- the tiles and the Kalkara ovens ----
relate :rel_tc_tiles_derived_from_sterile, :derived_from, :comparison_tiles, :sterile_machines
relate :rel_tc_medchain_depends_severed, :depends_on, :the_mediterranean_chain, :severed_strains

relate :rel_tc_kalkara_in_medchain, :located_in, :kalkara_bake_shed, :the_mediterranean_chain, since: 2072
relate :rel_tc_kalkara_supplies_tiles, :supplies, :kalkara_bake_shed, :comparison_tiles, since: 2087
relate :rel_tc_kalkara_regulates_sterile, :regulates, :kalkara_bake_shed, :sterile_machines, since: 2072

relate :rel_tc_zonqor_at_medchain, :manifests_at, :the_zonqor_drone, :the_mediterranean_chain
relate :rel_tc_zonqor_at_kalkara, :manifests_at, :the_zonqor_drone, :kalkara_bake_shed
relate :rel_tc_zonqor_depends_tiles, :depends_on, :the_zonqor_drone, :comparison_tiles
relate :rel_tc_zonqor_mentions_others, :mentions, :the_zonqor_drone, :the_others
relate :rel_tc_zonqor_during_reclamation, :active_during, :the_zonqor_drone, :the_reclamation

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
