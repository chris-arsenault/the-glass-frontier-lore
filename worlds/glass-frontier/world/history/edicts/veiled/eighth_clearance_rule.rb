edict :eighth_clearance_rule do
  name "The Eighth Clearance Rule"
  summary "The Eighth Clearance Rule gives disabled vessels the center line at Clearance Eight and Mareth and requires powered craft to yield outward."
  subkind :edict
  type_of :space_traffic_law
  status :complete
  prominence :marginal
  veiled "The Eighth Clearance Rule gives disabled vessels the center line and makes every powered craft yield outward."
end

relate :rel_eighth_clearance_rule_at_clearance_eight, :manifests_at, :eighth_clearance_rule, :clearance_eight
relate :rel_eighth_clearance_rule_at_mareth, :manifests_at, :eighth_clearance_rule, :mareth
