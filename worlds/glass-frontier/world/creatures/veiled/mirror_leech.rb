creature :mirror_leech do
  name "Mirror Leech"
  summary "A mirror leech is a body-copying anomaly found in the Fracture and around Ashenmaw. Its reflective skin takes the shape of the last warm body it held until the leech feeds."
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "A mirror leech copies the last warm body reflected in its skin and keeps the shape until fed."
end

relate :rel_mirror_leech_in_the_fracture, :inhabits, :mirror_leech, :the_fracture
relate :rel_mirror_leech_in_ashenmaw, :inhabits, :mirror_leech, :ashenmaw
