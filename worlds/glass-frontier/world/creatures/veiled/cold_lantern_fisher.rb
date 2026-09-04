creature :cold_lantern_fisher do
  name "The Cold Lantern Fisher"
  summary "The Cold Lantern Fisher is a light-casting anomaly ranging between Cold Lantern, Far Bell, and Outside. It stretches threads of cold light across docking mouths to collect charged dust."
  subkind :anomaly
  type_of :lanterns
  status :complete
  prominence :marginal
  veiled "The Cold Lantern Fisher casts threads of cold light across docking mouths and reels in charged dust."
end

relate :rel_lantern_fisher_in_cold_lantern, :inhabits, :cold_lantern_fisher, :cold_lantern
relate :rel_lantern_fisher_in_far_bell, :inhabits, :cold_lantern_fisher, :far_bell
relate :rel_lantern_fisher_in_outside, :inhabits, :cold_lantern_fisher, :outside
