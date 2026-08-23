concept :fracture_lots do
  name "Fracture Lots"
  subkind :doctrine
  status :complete
  prominence :marginal
  veiled "Fracture Lots grants the first safe claim on new debris to the crew that charted its motion for a full crossing."
end

relate :rel_fracture_lots_at_the_fracture, :manifests_at, :fracture_lots, :the_fracture
relate :rel_fracture_lots_at_ashenmaw, :manifests_at, :fracture_lots, :ashenmaw
relate :rel_fracture_lots_at_vitrael, :manifests_at, :fracture_lots, :vitrael
relate :rel_fracture_lots_at_vastine, :manifests_at, :fracture_lots, :vastine
