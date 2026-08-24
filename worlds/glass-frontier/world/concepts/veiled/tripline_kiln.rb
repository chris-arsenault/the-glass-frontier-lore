concept :tripline_kiln do
  name "Tripline Kiln"
  summary "A Tripline Kiln is a river-clay kiln suspended from a Korvath barge so ground tremors cannot crack its firing load."
  subkind :technology
  status :complete
  prominence :marginal
  veiled "A tripline kiln fires river clay while suspended from a barge so Korvath tremors cannot crack the load."
end

relate :rel_tripline_kiln_at_ninth_kiln, :manifests_at, :tripline_kiln, :ninth_kiln
relate :rel_tripline_kiln_at_lowbank, :manifests_at, :tripline_kiln, :lowbank
