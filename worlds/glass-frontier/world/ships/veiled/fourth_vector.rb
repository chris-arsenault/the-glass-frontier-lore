transport :fourth_vector do
  name "Fourth Vector"
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Fourth Vector follows Fracture debris by matching the spin of one marked shard at a time."
end

relate :rel_fourth_vector_at_the_fracture, :operates_in, :fourth_vector, :the_fracture
relate :rel_fourth_vector_at_ashenmaw, :operates_in, :fourth_vector, :ashenmaw
relate :rel_fourth_vector_at_vitrael, :operates_in, :fourth_vector, :vitrael
