npc :hesh_fold do
  name "Hesh Fold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Hesh Fold charts matching wall seams in the Folded Annex and the Underlayers with a jointed measuring rod."
end

relate :rel_hesh_fold_at_underlayers, :operates_in, :hesh_fold, :underlayers
relate :rel_hesh_fold_at_folded_annex, :operates_in, :hesh_fold, :folded_annex
