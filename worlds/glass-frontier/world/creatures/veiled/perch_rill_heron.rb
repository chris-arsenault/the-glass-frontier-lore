creature :perch_rill_heron do
  name "The Perch Rill Heron"
  summary "The Perch Rill Heron is an animal ranging between Perch and Talven. It spears rootfish and follows irrigation failures along the route."
  subkind :animal
  type_of :rill_heron
  status :complete
  prominence :marginal
  veiled "The Perch Rill Heron spears rootfish at Perch and follows irrigation failures toward Talven."
end

relate :rel_rill_heron_in_perch, :inhabits, :perch_rill_heron, :perch
relate :rel_rill_heron_in_talven, :inhabits, :perch_rill_heron, :talven
