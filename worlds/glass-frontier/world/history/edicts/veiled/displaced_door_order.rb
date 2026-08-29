edict :displaced_door_order do
  name "The Displaced-Door Order"
  summary "The Displaced-Door Order treats any threshold opening into Xyloathax as occupied housing until inspectors clear it."
  subkind :edict
  type_of :housing_presumption_rule
  status :complete
  prominence :marginal
  veiled "The Displaced-Door Order treats any threshold that opens into Xyloathax as occupied housing until inspected."
end

relate :rel_displaced_door_order_at_xyloathax, :manifests_at, :displaced_door_order, :xyloathax
relate :rel_displaced_door_order_at_outside, :manifests_at, :displaced_door_order, :outside
