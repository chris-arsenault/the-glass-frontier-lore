# The last lateral tie of the connecting pass (craft/connecting-entities.md). The
# Himalayan catchment cluster reached the rest of the world only through two
# renowned entities; it now reaches a Gatekeeper challenge yard at its own scale,
# because a yard that cannot run a season buys one from a pass that has nothing
# else to sell.

# ---- E. the season credit: the catchment list ↔ the seam pass ----
relate :rel_te_credit_derived_seam, :derived_from, :the_season_credit, :the_seam_pass
relate :rel_te_credit_depends_coldhouse, :depends_on, :the_season_credit, :thorong_cold_house
relate :rel_te_credit_depends_book, :depends_on, :the_season_credit, :the_thorong_book
relate :rel_te_credit_depends_moss, :depends_on, :the_season_credit, :gate_moss do
  prose "The reference set is cut from a crossing bed, so the winter is fixed against the one organism both traditions handle without argument."
end
relate :rel_te_yard_depends_credit, :depends_on, :xincheng_yard, :the_season_credit do
  prose "Eleven of the yard's renewals in 2085 carried a credit line. The card says four days at five metres; the credit says what four days is worth."
end
relate :rel_te_credit_practiced_gatekeepers, :practiced_by, :the_season_credit, :the_gatekeepers
relate :rel_te_credit_mentions_severed, :mentions, :the_season_credit, :severed_strains
relate :rel_te_credit_during_holding, :active_during, :the_season_credit, :the_holding

# The carry is the whole of the contact: a rate, a season, and no standing party.
relate :rel_te_gatekeepers_coldhouse, :cooperates_with, :the_gatekeepers, :thorong_cold_house do
  prose "A carry fee paid out of the villages below the pass at the season's rate, and a hand copy of two figures back. No agreement, and no clerk on either side who has met one on the other."
end
relate :rel_te_credit_mentions_list, :mentions, :the_season_credit, :the_catchment_list do
  prose "A sealed tube is not a planting. A foreign set is counted on the house's book, travels alone in its case, and reads as nothing if it arrives warm."
end

relate :rel_te_book_at_coldhouse, :located_in, :the_thorong_book, :thorong_cold_house
relate :rel_te_coldhouse_has_book, :possesses, :thorong_cold_house, :the_thorong_book
relate :rel_te_book_mentions_moss, :mentions, :the_thorong_book, :gate_moss
relate :rel_te_book_mentions_list, :mentions, :the_thorong_book, :the_catchment_list
relate :rel_te_book_depends_carry, :depends_on, :the_thorong_book, :the_overwintered_set do
  prose "Line forty-one. The reading that closed a term is one line among the others, in the same hand, written the same morning it was read."
end
relate :rel_te_book_mentions_gatekeepers, :mentions, :the_thorong_book, :the_gatekeepers do
  prose "A carry fee buys two figures in a hand copy, unsigned: the reference for the year and the ratio for the class. The lines that name parties do not leave the room."
end
relate :rel_te_book_during_holding, :active_during, :the_thorong_book, :the_holding

relate :rel_te_coldhouse_depends_moss, :depends_on, :thorong_cold_house, :gate_moss do
  prose "One rack position every autumn, held for a set nobody above the pass has an interest in."
end

relate :rel_te_borrowed_at_yumen, :manifests_at, :the_borrowed_season, :yumen_gate
relate :rel_te_borrowed_at_yard, :manifests_at, :the_borrowed_season, :xincheng_yard
relate :rel_te_borrowed_depends_credit, :depends_on, :the_borrowed_season, :the_season_credit
relate :rel_te_borrowed_caused_credit, :caused, :the_borrowed_season, :the_season_credit do
  prose "The class line went onto the form and onto the card. A credit read against one substrate stopped travelling to another."
end
relate :rel_te_borrowed_depends_seam, :depends_on, :the_borrowed_season, :the_seam_pass
relate :rel_te_borrowed_depends_schedule, :depends_on, :the_borrowed_season, :the_gate_schedule do
  prose "Clinic days void for the cycle and the fees returned at the posted rate, out of the tray for that month."
end
relate :rel_te_borrowed_conducted_by_ma, :conducted_by, :the_borrowed_season, :ma_renqing
relate :rel_te_ma_in_borrowed, :participated_in, :ma_renqing, :the_borrowed_season do
  prose "She had the bed off the floor the same afternoon and entered nothing about manner. Her own card for the cycle held the seven mismatched classes and was never produced."
end
relate :rel_te_gatekeepers_in_borrowed, :participated_in, :the_gatekeepers, :the_borrowed_season
relate :rel_te_preservationists_in_borrowed, :participated_in, :the_preservationists, :the_borrowed_season do
  prose "They paid the lineage-audit rate on a year of expired cards for a failure in a practice they had asked the yard to lengthen rather than renew."
end
relate :rel_te_borrowed_mentions_severed, :mentions, :the_borrowed_season, :severed_strains
relate :rel_te_borrowed_during_holding, :active_during, :the_borrowed_season, :the_holding
