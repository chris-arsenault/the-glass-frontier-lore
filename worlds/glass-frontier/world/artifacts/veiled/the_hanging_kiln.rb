artifact :the_hanging_kiln do
  name "The Hanging Kiln"
  summary "The Hanging Kiln is a river-clay kiln suspended from a Korvath barge so ground tremors cannot crack its firing load."
  type_of :tripline_kiln
  subkind :machine
  status :complete
  prominence :marginal
  veiled "The Hanging Kiln is a river-clay kiln suspended from a Korvath barge so ground tremors cannot crack its firing load."
end
relate :rel_tripline_kiln_at_ninth_kiln, :manifests_at, :the_hanging_kiln, :ninth_kiln
relate :rel_tripline_kiln_at_lowbank, :manifests_at, :the_hanging_kiln, :lowbank
