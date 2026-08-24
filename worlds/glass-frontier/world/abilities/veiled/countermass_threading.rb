ability :countermass_threading do
  name "Countermass Threading"
  summary "Countermass Threading is a Keel rigging skill for moving loaded hulls through changing force by balancing four mobile weights by hand."
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Countermass riggers pass loaded hulls through the Keel by balancing four moving weights by hand."
end

relate :rel_countermass_threading_at_keel, :manifests_at, :countermass_threading, :keel
relate :rel_countermass_threading_at_hinge_six, :manifests_at, :countermass_threading, :hinge_six
relate :rel_countermass_threading_at_cold_lantern, :manifests_at, :countermass_threading, :cold_lantern
relate :rel_countermass_threading_at_third_latch, :manifests_at, :countermass_threading, :third_latch
