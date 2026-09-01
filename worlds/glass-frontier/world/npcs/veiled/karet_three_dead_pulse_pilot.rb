npc :karet_three_dead_pulse_pilot do
  name "The Karet Three Reckoner"
  summary "The Karet Three Reckoner holds a route by counting the silences between damaged navigation beacons."
  type_of :dead_pulse_reckoning
  subkind :specialist
  status :complete
  log "2026-08-31 — Renamed The Karet Three Dead-Pulse Pilot to The Karet Three Reckoner to use the craft's practitioner form."
  prominence :marginal
  veiled "The Karet Three Reckoner holds a route by counting the silences between damaged navigation beacons."
end
relate :rel_dead_pulse_reckoning_at_karet_three, :manifests_at, :karet_three_dead_pulse_pilot, :karet_three
relate :rel_dead_pulse_reckoning_at_far_bell, :manifests_at, :karet_three_dead_pulse_pilot, :far_bell
relate :rel_dead_pulse_reckoning_at_outside, :manifests_at, :karet_three_dead_pulse_pilot, :outside
relate :rel_dead_pulse_reckoning_at_gray_line, :manifests_at, :karet_three_dead_pulse_pilot, :gray_line
