ability :fracture_afterimage do
  name "Fracture Afterimage"
  summary "Fracture Afterimage is an innate visual effect that preserves the safe outline of moving debris for several breaths after it vanishes."
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Fracture-touched eyes retain the safe outline of moving debris for several breaths after it vanishes."
end

relate :rel_fracture_afterimage_at_the_fracture, :manifests_at, :fracture_afterimage, :the_fracture
relate :rel_fracture_afterimage_at_ashenmaw, :manifests_at, :fracture_afterimage, :ashenmaw
