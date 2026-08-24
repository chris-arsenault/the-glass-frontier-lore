creature :rill_heron do
  name "Rill Heron"
  summary "Rill herons are animals found between Perch and Talven. They spear rootfish and follow irrigation failures along the route."
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Rill herons spear rootfish at Perch and follow irrigation failures toward Talven."
end

relate :rel_rill_heron_in_perch, :inhabits, :rill_heron, :perch
relate :rel_rill_heron_in_talven, :inhabits, :rill_heron, :talven
