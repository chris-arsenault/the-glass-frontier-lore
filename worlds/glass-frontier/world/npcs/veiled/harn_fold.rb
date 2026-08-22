npc :harn_fold do
  name "Harn Fold"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Harn Fold services cargo alarms at Five Landing, the Folded Annex, Fourth Bell House, and Glasswake."
end

relate :rel_harn_fold_at_five_landing, :operates_in, :harn_fold, :five_landing
relate :rel_harn_fold_at_folded_annex, :operates_in, :harn_fold, :folded_annex
relate :rel_harn_fold_at_fourth_bell_house, :operates_in, :harn_fold, :fourth_bell_house
relate :rel_harn_fold_at_glasswake, :operates_in, :harn_fold, :glasswake
