edict :ashenmaw_first_crossing_claim do
  name "The Ashenmaw First-Crossing Claim"
  summary "The Ashenmaw First-Crossing Claim grants the first safe claim on newly charted debris to the crew that charted its motion for a full crossing."
  type_of :ratter_order
  belongs_to :culture, :ratters
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Ashenmaw First-Crossing Claim grants the first safe claim on newly charted debris to the crew that charted its motion for a full crossing."
end

relate :rel_fracture_lots_at_the_fracture, :manifests_at, :ashenmaw_first_crossing_claim, :the_fracture
relate :rel_fracture_lots_at_ashenmaw, :manifests_at, :ashenmaw_first_crossing_claim, :ashenmaw
relate :rel_fracture_lots_at_vitrael, :manifests_at, :ashenmaw_first_crossing_claim, :vitrael
relate :rel_fracture_lots_at_vastine, :manifests_at, :ashenmaw_first_crossing_claim, :vastine
