incident :white_fracture do
  name "The White Fracture"
  subkind :disaster
  status :complete
  prominence :marginal
  veiled "The White Fracture split a Vitrael cutting face and drove crystal debris across Ashenmaw's nearest route."
end

relate :rel_white_fracture_at_vitrael, :manifests_at, :white_fracture, :vitrael
relate :rel_white_fracture_at_ashenmaw, :manifests_at, :white_fracture, :ashenmaw
