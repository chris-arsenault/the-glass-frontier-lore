incident :avar_water_order do
  name "The Avar Water Order"
  summary "The Avar Water Order was Avar's emergency diversion of two road cisterns to Marker House Twelve after its buried well began ringing."
  subkind :policy_action
  status :complete
  prominence :marginal
  veiled "Avar redirected two road cisterns to Marker House Twelve after its buried well began ringing."
end

relate :rel_avar_water_order_at_avar, :manifests_at, :avar_water_order, :avar
relate :rel_avar_water_order_at_marker_house_twelve, :manifests_at, :avar_water_order, :marker_house_twelve
