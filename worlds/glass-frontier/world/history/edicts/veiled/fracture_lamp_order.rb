edict :fracture_lamp_order do
  name "The Fracture-Lamp Order"
  summary "The Fracture-Lamp Order requires claim vessels working the Fracture and Ashenmaw routes to leave a beacon on abandoned debris."
  subkind :edict
  type_of :salvage_marking_rule
  status :complete
  prominence :marginal
  veiled "The Fracture-Lamp Order requires every claim vessel to leave one beacon burning on abandoned debris."
end

relate :rel_fracture_lamp_order_at_the_fracture, :manifests_at, :fracture_lamp_order, :the_fracture
relate :rel_fracture_lamp_order_at_ashenmaw, :manifests_at, :fracture_lamp_order, :ashenmaw
