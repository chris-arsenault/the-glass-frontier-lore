ability :dead_pulse_reckoning do
  name "Dead-Pulse Reckoning"
  summary "Dead-Pulse Reckoning is a navigation skill that holds a route by counting the silences between damaged beacons."
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Dead-pulse pilots hold a route by counting the silences between damaged navigation beacons."
end

relate :rel_dead_pulse_reckoning_at_karet_three, :manifests_at, :dead_pulse_reckoning, :karet_three
relate :rel_dead_pulse_reckoning_at_far_bell, :manifests_at, :dead_pulse_reckoning, :far_bell
relate :rel_dead_pulse_reckoning_at_outside, :manifests_at, :dead_pulse_reckoning, :outside
relate :rel_dead_pulse_reckoning_at_gray_line, :manifests_at, :dead_pulse_reckoning, :gray_line
