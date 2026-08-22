npc :urn_fold do
  name "Urn Fold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Urn Fold maps service stairs that continue from the Folded Annex into the Underlayers."
end

relate :rel_urn_fold_at_underlayers, :operates_in, :urn_fold, :underlayers
relate :rel_urn_fold_at_folded_annex, :operates_in, :urn_fold, :folded_annex
