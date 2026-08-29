transport :fourth_vector do
  name "Fourth Vector"
  summary "Fourth Vector is a debris-tracking vessel operating around the Fracture, Ashenmaw, and Vitrael. It follows Fracture debris by matching the spin of one marked shard at a time."
  subkind :vessel
  type_of :utility_vessel
  status :complete
  prominence :marginal
  veiled "Fourth Vector follows Fracture debris by matching the spin of one marked shard at a time."
end

relate :rel_fourth_vector_at_the_fracture, :operates_in, :fourth_vector, :the_fracture
relate :rel_fourth_vector_at_ashenmaw, :operates_in, :fourth_vector, :ashenmaw
relate :rel_fourth_vector_at_vitrael, :operates_in, :fourth_vector, :vitrael
