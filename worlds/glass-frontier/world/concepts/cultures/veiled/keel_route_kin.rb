culture :keel_route_kin do
  name "Keel Route Kin"
  subkind :regional_culture
  status :complete
  prominence :marginal
  veiled "Keel Route Kin count family by the docking crews who answer the same emergency bell."
end

relate :rel_keel_route_kin_at_keel, :manifests_at, :keel_route_kin, :keel
relate :rel_keel_route_kin_at_hinge_six, :manifests_at, :keel_route_kin, :hinge_six
relate :rel_keel_route_kin_at_cold_lantern, :manifests_at, :keel_route_kin, :cold_lantern
relate :rel_keel_route_kin_at_third_latch, :manifests_at, :keel_route_kin, :third_latch
