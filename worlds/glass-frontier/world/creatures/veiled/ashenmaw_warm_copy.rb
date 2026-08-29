creature :ashenmaw_warm_copy do
  name "The Ashenmaw Warm-Copy"
  summary "The Ashenmaw Warm-Copy is a mirror leech recorded around Ashenmaw and in the Fracture while holding the same borrowed body."
  subkind :anomaly
  type_of :mirror_leech
  status :complete
  prominence :marginal
  veiled "The Ashenmaw Warm-Copy has kept the same borrowed body through sightings around Ashenmaw and in the Fracture."
end

relate :rel_mirror_leech_in_the_fracture, :inhabits, :ashenmaw_warm_copy, :the_fracture
relate :rel_mirror_leech_in_ashenmaw, :inhabits, :ashenmaw_warm_copy, :ashenmaw
