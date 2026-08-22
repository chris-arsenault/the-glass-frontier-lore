npc :kest_fold do
  name "Kest Fold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Kest Fold maps service passages in the Folded Annex, Fourth Bell House, Gray Line, and Hab Meridian."
end

relate :rel_kest_fold_at_folded_annex, :operates_in, :kest_fold, :folded_annex
relate :rel_kest_fold_at_fourth_bell_house, :operates_in, :kest_fold, :fourth_bell_house
relate :rel_kest_fold_at_gray_line, :operates_in, :kest_fold, :gray_line
relate :rel_kest_fold_at_hab_meridian, :operates_in, :kest_fold, :hab_meridian
