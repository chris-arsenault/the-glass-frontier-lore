# Three pairs that once reached each other only through the gods. Each now has a
# connection through a place, material or event at the scale of ordinary life.

# ---- A. the Ensenada bed: Saints of Plenty ↔ Garden Courts ----
relate :rel_ties_saints_in_ensenada, :participated_in, :the_saints_of_plenty, :the_ensenada_bed
relate :rel_ties_courts_in_ensenada, :participated_in, :the_garden_courts, :the_ensenada_bed
relate :rel_ties_brokers_in_ensenada, :participated_in, :the_brokers, :the_ensenada_bed
relate :rel_ties_ensenada_during_holding, :active_during, :the_ensenada_bed, :the_holding
relate :rel_ties_ensenada_at_socal, :manifests_at, :the_ensenada_bed, :southern_california
relate :rel_ties_ensenada_seed_from_sichuan, :sourced_from, :the_ensenada_bed, :sichuan

# ---- B. Thorong and the Marsyangdi burn: Himalayan Holds ↔ programmable ecologies ----
relate :rel_ties_coldhouse_in_holds, :located_in, :thorong_cold_house, :the_himalayan_holds
relate :rel_ties_holds_depend_coldhouse, :depends_on, :the_himalayan_holds, :thorong_cold_house
relate :rel_ties_burn_at_coldhouse, :manifests_at, :the_marsyangdi_burn, :thorong_cold_house
relate :rel_ties_burn_at_holds, :manifests_at, :the_marsyangdi_burn, :the_himalayan_holds
relate :rel_ties_burn_caused_by_ecology, :caused_by, :the_marsyangdi_burn, :programmable_ecologies
relate :rel_ties_ecologies_practiced_courts, :practiced_by, :programmable_ecologies, :the_garden_courts
relate :rel_ties_burn_during_holding, :active_during, :the_marsyangdi_burn, :the_holding
relate :rel_ties_root_in_burn, :participated_in, :the_great_root, :the_marsyangdi_burn

# ---- C. the control series: Thousand Minds ↔ the Amur Line ----
relate :rel_ties_series_at_line, :manifests_at, :the_control_series, :the_amur_line
# The series itself is not at Tangwang. He Zhaolan's pressed halves have never
# left her ridge; what the post holds is billets it was sent, which the
# `possesses control_billets` edge below already carries. `mentions` keeps the
# prose reference legible without restating the structural claim.
relate :rel_ties_series_mentions_post, :mentions, :the_control_series, :tangwang_post
relate :rel_ties_ringorder_depends_series, :depends_on, :the_ring_order, :the_control_series do
  prose "A cited number does not count toward a compartment's threshold. An unknown does."
end
relate :rel_ties_series_derived_minds, :derived_from, :the_control_series, :the_thousand_minds do
  prose "Most of the series was cut in Yunnan, because the attribution needs a household that can name which mind did the work and in what year."
end
relate :rel_ties_minds_supply_series, :supplies, :the_thousand_minds, :the_control_series
relate :rel_ties_series_at_yunnan, :manifests_at, :the_control_series, :yunnan
relate :rel_ties_root_regulates_series, :regulates, :the_great_root, :the_control_series, since: 2084 do
  prose "A mind that joins the central network has its numbers frozen with the year of joining entered beside them. Four hundred and six numbers stand frozen."
end

relate :rel_ties_billets_part_of_series, :part_of, :control_billets, :the_control_series
relate :rel_ties_post_possesses_billets, :possesses, :tangwang_post, :control_billets, since: 2085 do
  prose "Ninety-six in the comparison drawer, on end in sand, faces inward, fifty-one of them frozen numbers."
end
relate :rel_ties_xie_carries_billets, :carries, :xie_lanting, :control_billets, since: 2085
relate :rel_ties_line_depends_billets, :depends_on, :the_amur_line, :control_billets

relate :rel_ties_he_in_yunnan, :located_in, :he_zhaolan, :yunnan
relate :rel_ties_he_studies_minds, :studies, :he_zhaolan, :the_thousand_minds
relate :rel_ties_he_maintains_series, :maintains, :he_zhaolan, :the_control_series, since: 2079
relate :rel_ties_he_created_billets, :created, :he_zhaolan, :control_billets
relate :rel_ties_he_supplies_post, :supplies, :he_zhaolan, :tangwang_post, since: 2084
relate :rel_ties_he_cooperates_xie, :cooperates_with, :he_zhaolan, :xie_lanting, since: 2084 do
  prose "A drawing, a billet request and a second core go south; a number, a refusal or a demand for a third core comes back. About one sheet in six is answered, and the two have not met."
end
relate :rel_ties_xie_studies_series, :studies, :xie_lanting, :the_control_series, since: 2084
