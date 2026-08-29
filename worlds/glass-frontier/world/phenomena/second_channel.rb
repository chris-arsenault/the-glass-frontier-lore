phenomenon :second_channel do
  name "The Second Channel"
  summary "The Second Channel makes a heavily traveled route choose a new destination after two warning tones, leaving its former terminus unreachable by that path."
  type_of :route_avulsion
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :navigation, :transport, :trade
  prominence :recognized
  trigger "Repeated traffic makes one route's kinetic and signal wakes more coherent than the destination it was built to reach"
  effect "After two tones, every vessel continuing on the established path arrives at a new destination selected by the accumulated traffic pattern"
  recurrence "The same channel migrates among the Kaleidos system's busiest routes, preserving the interval between its two warning tones"
  ending "The new channel persists until a different path carries the greater coherent traffic; the former terminus does not reopen on the old geometry"
  mitigation "Leave the route after the first tone, approach the abandoned destination on different geometry, or deliberately saturate a safer path before the second tone"
  anchor_behavior "Follows repeated transit rather than beacons, ownership, or published charts and carries its route state into the next busiest path"
  medium "Established travel corridors, vessel wakes, route beacons, and navigation records"
  hazard "Convoys, reinforcements, refugees, and cargo can arrive together at an unknown or hostile destination while the place expecting them becomes inaccessible"

  descriptive_identity(
    signs: "Every beacon and hull on a busy route sounds one low tone and, after the same measured interval, one high tone; the stars ahead do not visibly change.",
    effects: "Traffic that remains on the path after the second tone reaches a new terminus chosen from the route's accumulated wakes, while the previous terminus cannot be reached along that geometry.",
    hazards: "Whole convoys arrive together without preparation, and rescue craft following them reinforce the new channel instead of reaching the abandoned destination."
  )

  prose <<~PROSE
    The Second Channel announces itself with two tones. The first is low enough to feel through a hull. The second arrives after an interval that has remained exact in every confirmed appearance. Nothing on the forward view changes. Vessels that stay on the route after the second tone reach somewhere else.

    The new destination is not random. It is a place written into the traffic that formed the channel: a diversion repeatedly flown, a port carried in thousands of return vectors, a refuge encoded into evacuation runs, or an ambush point approached often enough to become the route's stronger habit. The former destination remains where it was and cannot be reached on the old geometry.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Choosing What the Keel Remembers"
    The #{ref :keel, "Keel"} carries enough traffic to attract the Second Channel repeatedly. Route services teach pilots to leave the corridor after the first tone and rebuild an approach from an independent bearing. Rescue ships that remain on the marked line go wherever the missing convoy went.

    Traffic can influence the next destination before the second tone. A fleet can saturate a prepared diversion and turn an invasion into empty space. A settlement can make an emergency refuge the route's strongest habit. The choice is collective and physical: every wake contributes, including decoys, commercial traffic, and enemies who know the same method.
  PROSE

  gm_note :appears, "The two warning tones sound across a convoy, leaving one short interval to abandon the route or help decide which destination its accumulated traffic will choose."
end

relate :rel_second_channel_manifests_keel, :manifests_at, :second_channel, :keel
