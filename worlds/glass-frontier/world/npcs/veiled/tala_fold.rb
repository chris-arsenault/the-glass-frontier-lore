npc :tala_fold do
  name "Tala Fold"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tala Fold carries transfer claims among Rattle, Far Bell, Five Landing, and the Folded Annex."
end

relate :rel_tala_fold_at_exchange_c, :operates_in, :tala_fold, :exchange_c
relate :rel_tala_fold_at_far_bell, :operates_in, :tala_fold, :far_bell
relate :rel_tala_fold_at_five_landing, :operates_in, :tala_fold, :five_landing
relate :rel_tala_fold_at_folded_annex, :operates_in, :tala_fold, :folded_annex
