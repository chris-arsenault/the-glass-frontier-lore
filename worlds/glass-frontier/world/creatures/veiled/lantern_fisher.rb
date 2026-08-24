creature :lantern_fisher do
  name "Lantern Fisher"
  summary "Lantern fishers are light-casting anomalies found near Cold Lantern, Far Bell, and Outside. They stretch threads of cold light across docking mouths to collect charged dust."
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "Lantern fishers cast threads of cold light across docking mouths and reel in charged dust."
end

relate :rel_lantern_fisher_in_cold_lantern, :inhabits, :lantern_fisher, :cold_lantern
relate :rel_lantern_fisher_in_far_bell, :inhabits, :lantern_fisher, :far_bell
relate :rel_lantern_fisher_in_outside, :inhabits, :lantern_fisher, :outside
