concept :tripline_kiln do
  name "Tripline Kiln"
  subkind :technology
  status :complete
  prominence :marginal
  veiled "A tripline kiln fires river clay while suspended from a barge so Korvath tremors cannot crack the load."
end

relate :rel_tripline_kiln_at_ninth_kiln, :manifests_at, :tripline_kiln, :ninth_kiln
relate :rel_tripline_kiln_at_lowbank, :manifests_at, :tripline_kiln, :lowbank
