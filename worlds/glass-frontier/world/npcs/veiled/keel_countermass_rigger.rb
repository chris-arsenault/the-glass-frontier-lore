npc :keel_countermass_rigger do
  name "The Keel Countermass Rigger"
  summary "The Keel Countermass Rigger passes loaded hulls through changing force by balancing four moving weights by hand."
  type_of :countermass_threading
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Keel Countermass Rigger passes loaded hulls through changing force by balancing four moving weights by hand."
end
relate :rel_countermass_threading_at_keel, :manifests_at, :keel_countermass_rigger, :keel
relate :rel_countermass_threading_at_hinge_six, :manifests_at, :keel_countermass_rigger, :hinge_six
relate :rel_countermass_threading_at_cold_lantern, :manifests_at, :keel_countermass_rigger, :cold_lantern
relate :rel_countermass_threading_at_third_latch, :manifests_at, :keel_countermass_rigger, :third_latch
