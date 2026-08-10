# Three pairs that once reached each other only through the gods. Each now has a
# connection through a place, material or event at the scale of ordinary life.

# ---- A. the Ensenada bed: Saints of Plenty ↔ Garden Courts ----
relate :rel_ties_saints_in_ensenada, :participated_in, :the_saints_of_plenty, :the_ensenada_bed
relate :rel_ties_courts_in_ensenada, :participated_in, :the_garden_courts, :the_ensenada_bed
relate :rel_ties_brokers_in_ensenada, :participated_in, :the_brokers, :the_ensenada_bed
relate :rel_ties_ensenada_during_holding, :active_during, :the_ensenada_bed, :the_holding
relate :rel_ties_ensenada_at_socal, :manifests_at, :the_ensenada_bed, :southern_california
relate :rel_ties_ensenada_seed_from_sichuan, :sourced_from, :the_ensenada_bed, :sichuan

# ---- B. Thorong and the Marsyangdi burn: Himalayan Holds and seeded ecosystems ----
relate :rel_ties_coldhouse_in_holds, :located_in, :thorong_cold_house, :the_himalayan_holds
relate :rel_ties_holds_depend_coldhouse, :depends_on, :the_himalayan_holds, :thorong_cold_house
relate :rel_ties_burn_at_coldhouse, :manifests_at, :the_marsyangdi_burn, :thorong_cold_house
relate :rel_ties_burn_at_holds, :manifests_at, :the_marsyangdi_burn, :the_himalayan_holds
relate :rel_ties_burn_caused_by_ecosystem, :caused_by, :the_marsyangdi_burn, :seeded_ecosystems
relate :rel_ties_ecosystems_practiced_courts, :practiced_by, :seeded_ecosystems, :the_garden_courts
relate :rel_ties_burn_during_holding, :active_during, :the_marsyangdi_burn, :the_holding
relate :rel_ties_root_in_burn, :participated_in, :the_great_root, :the_marsyangdi_burn

# ---- C. Yunnan reference wood: Thousand Minds ↔ the Amur Line ----
relate :rel_ties_reference_wood_from_minds, :derived_from, :yunnan_reference_wood, :the_thousand_minds
relate :rel_ties_reference_wood_from_yunnan, :sourced_from, :yunnan_reference_wood, :yunnan
relate :rel_ties_minds_supply_reference_wood, :supplies, :the_thousand_minds, :yunnan_reference_wood
relate :rel_ties_line_depends_reference_wood, :depends_on, :the_amur_line, :yunnan_reference_wood
relate :rel_ties_rings_depend_reference_wood, :depends_on, :the_dead_rings, :yunnan_reference_wood
relate :rel_ties_post_possesses_reference_wood, :possesses, :tangwang_post, :yunnan_reference_wood, since: 2085
relate :rel_ties_xie_carries_reference_wood, :carries, :xie_lanting, :yunnan_reference_wood, since: 2085

relate :rel_ties_he_in_yunnan, :located_in, :he_zhaolan, :yunnan
relate :rel_ties_he_studies_minds, :studies, :he_zhaolan, :the_thousand_minds
relate :rel_ties_he_created_reference_wood, :created, :he_zhaolan, :yunnan_reference_wood
relate :rel_ties_he_supplies_post, :supplies, :he_zhaolan, :tangwang_post, since: 2084
relate :rel_ties_he_cooperates_xie, :cooperates_with, :he_zhaolan, :xie_lanting, since: 2084
relate :rel_ties_xie_studies_reference_wood, :studies, :xie_lanting, :yunnan_reference_wood, since: 2084
