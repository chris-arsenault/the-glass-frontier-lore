# Lateral ties written by the connecting pass (craft/connecting-entities.md). Three
# pairs that reached each other only through a god now reach each other through
# something at their own scale: two food traditions through a proving bed, the
# Holds and programmed ecology through a catchment list, and Yunnan's local minds
# through the wood an Amur coring bench compares a core against.

# ---- A. the proving bed: Saints of Plenty ↔ Garden Courts ----
relate :rel_ties_growout_practiced_saints, :practiced_by, :the_grow_out, :the_saints_of_plenty
relate :rel_ties_growout_practiced_courts, :practiced_by, :the_grow_out, :the_garden_courts do
  prose "A valley bed is read by the valley's mycelium through the whole season as well as by hand at the seven readings, and only the hand's readings go on the card."
end
relate :rel_ties_growout_depends_card, :depends_on, :the_grow_out, :the_seven_line_card
relate :rel_ties_saints_maintain_card, :maintains, :the_saints_of_plenty, :the_seven_line_card
relate :rel_ties_courts_maintain_card, :maintains, :the_garden_courts, :the_seven_line_card do
  prose "A card that stops fitting the valley is replaced with a second card under the same name and a new number."
end
relate :rel_ties_card_depends_growout, :derived_from, :the_seven_line_card, :the_grow_out

relate :rel_ties_seventh_depends_growout, :depends_on, :the_seventh_line, :the_grow_out
relate :rel_ties_seventh_depends_card, :depends_on, :the_seventh_line, :the_seven_line_card
relate :rel_ties_saints_in_seventh, :participated_in, :the_saints_of_plenty, :the_seventh_line do
  prose "The Ensenada bench entered the failure under the card's original number, sowed the tin again to the same result, and marked the valley's card loose."
end
relate :rel_ties_courts_in_seventh, :participated_in, :the_garden_courts, :the_seventh_line do
  prose "The valley registry entered the Baja sheet as its second card's first season outside the valley and withdrew nothing."
end
relate :rel_ties_brokers_in_seventh, :participated_in, :the_brokers, :the_seventh_line do
  prose "Eleven hundred seeds out and one sheet back, on the same trading run."
end
relate :rel_ties_seventh_during_holding, :active_during, :the_seventh_line, :the_holding
relate :rel_ties_seventh_at_socal, :manifests_at, :the_seventh_line, :southern_california
relate :rel_ties_growout_at_socal, :manifests_at, :the_grow_out, :southern_california
relate :rel_ties_growout_at_sichuan, :manifests_at, :the_grow_out, :sichuan

# ---- B. the catchment list: Himalayan Holds ↔ programmable ecologies ----
relate :rel_ties_list_at_holds, :manifests_at, :the_catchment_list, :the_himalayan_holds
relate :rel_ties_holds_depend_list, :depends_on, :the_himalayan_holds, :the_catchment_list do
  prose "Living filtration holds only while what arrives in the source water is known, and the alternative is written on the first page of every copy in tonnes lifted, kilowatts and winter crew."
end
relate :rel_ties_list_regulates_ecologies, :regulates, :the_catchment_list, :programmable_ecologies do
  prose "A programmed ecology is entered as a set with the dependencies drawn between its lines, struck as a set and pulled as a set."
end
relate :rel_ties_ecologies_depend_list, :depends_on, :programmable_ecologies, :the_catchment_list, since: 2079

relate :rel_ties_coldhouse_in_holds, :located_in, :thorong_cold_house, :the_himalayan_holds
relate :rel_ties_list_depends_coldhouse, :depends_on, :the_catchment_list, :thorong_cold_house do
  prose "An ender line naming a winter stands only once a set has been shown one, and the entry then names the pass and the year of the reading."
end

relate :rel_ties_set_at_coldhouse, :manifests_at, :the_overwintered_set, :thorong_cold_house
relate :rel_ties_set_depends_list, :depends_on, :the_overwintered_set, :the_catchment_list
relate :rel_ties_set_at_holds, :manifests_at, :the_overwintered_set, :the_himalayan_holds
relate :rel_ties_set_mentions_ecologies, :mentions, :the_overwintered_set, :programmable_ecologies
relate :rel_ties_set_during_holding, :active_during, :the_overwintered_set, :the_holding
relate :rel_ties_root_in_set, :participated_in, :the_great_root, :the_overwintered_set do
  prose "Its line service planted the nineteen entries, sent the set up, filed the reading, burned eleven hectares of terrace and pasture, and holds the pulling account."
end

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
