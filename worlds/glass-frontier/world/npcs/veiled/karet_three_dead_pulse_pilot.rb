npc :karet_three_dead_pulse_pilot do
  name "The Karet Three Dead-Pulse Pilot"
  summary "The Karet Three Dead-Pulse Pilot holds a route by counting the silences between damaged navigation beacons."
  type_of :specialist_practitioner
  belongs_to :practice, :dead_pulse_reckoning
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Karet Three Dead-Pulse Pilot holds a route by counting the silences between damaged navigation beacons."
end
relate :rel_dead_pulse_reckoning_at_karet_three, :manifests_at, :karet_three_dead_pulse_pilot, :karet_three
relate :rel_dead_pulse_reckoning_at_far_bell, :manifests_at, :karet_three_dead_pulse_pilot, :far_bell
relate :rel_dead_pulse_reckoning_at_outside, :manifests_at, :karet_three_dead_pulse_pilot, :outside
relate :rel_dead_pulse_reckoning_at_gray_line, :manifests_at, :karet_three_dead_pulse_pilot, :gray_line
