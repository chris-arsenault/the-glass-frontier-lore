phenomenon :second_channel do
  name "Second Channel"
  aka "The Second Channel"
  summary "Second Channel is the migrating route avulsion tracked on the Keel: after two fixed warning tones, a busy corridor begins delivering all traffic to a destination impressed into it by earlier journeys."
  type_of :route_avulsion
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :navigation, :transport, :trade
  prominence :recognized
  trigger "Repeated transit makes a corridor's combined kinetic and signal wake more coherent than its maintained approach to the published terminus"
  effect "After the second warning tone, every vessel remaining on the corridor reaches the strongest destination encoded in its accumulated journeys"
  recurrence "One avulsion migrates among the system's busiest routes, preserving the exact interval between its low first tone and high second tone"
  ending "The chosen terminus persists until another path accumulates the stronger coherent wake; the abandoned destination remains reachable only by different geometry"
  mitigation "Leave the marked corridor after the first tone, rebuild the abandoned approach from an independent bearing, or saturate a prepared diversion before the second tone"
  anchor_behavior "Follows accumulated transit rather than route ownership or beacon placement, carrying its warning interval into the next busy corridor"
  medium "Established corridors, vessel wakes, route beacons, joined route records, and repeated destination approaches"
  content "The accumulated return vectors, diversions, refuges, and ambush approaches carried by traffic through the active corridor"
  hazard "Convoys, rescue craft, refugees, and cargo can arrive together at an unprepared or hostile destination while the port expecting them loses that approach"

  descriptive_identity(
    signs: "Every beacon and hull on a busy corridor sounds one hull-deep tone and, after the same measured interval, one high tone while the forward view remains unchanged.",
    effects: "Traffic still on the marked line after the second tone reaches the destination most strongly preserved in the corridor's wakes and return vectors.",
    hazards: "Whole convoys arrive without reception, and rescue craft that follow the old line travel to the same new terminus instead of the port that called them."
  )

  prose <<~PROSE
    Keel pilots call the phenomenon Second Channel because one marked corridor begins carrying traffic to a second terminus. The first warning tone is low enough to feel through a hull. The high tone follows after an interval that has remained exact through every recorded migration. Stars, beacons, and the forward view remain unchanged. A vessel still following the corridor after the high tone arrives somewhere else.

    Wake ledgers narrow the possible destination to places repeatedly carried through the route: a diversion flown in bad seasons, a port preserved in thousands of return vectors, a refuge encoded into evacuation runs, or an ambush point approached often enough to dominate the line. The ledger does not settle which one has taken hold before the second tone. Afterward, the former terminus remains in place but the old approach no longer reaches it.
  PROSE
  prose <<~PROSE, section: :course, heading: "Between the Tones"
    The #{ref :keel, "Keel"} carries enough traffic to attract Second Channel repeatedly. Responsibility is divided among its route services, so each section closes its own departures, publishes an independent bearing away from the marked corridor, and compares local wake records with its neighbors after the first tone. A ship already under way has one measured interval to leave the line.

    Rescue craft rebuild their approach from outside the corridor. Following the missing convoy only reinforces the route that took it. The abandoned port likewise opens approaches from independent bearings, because sending more traffic down the published line carries more ships away from the place asking for help.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Writing the Destination"
    Traffic before the second tone can still strengthen one candidate. A fleet can saturate a prepared diversion and send an invasion into empty space. A settlement can make an emergency refuge the route's strongest habit. The choice remains collective and physical: decoys, commercial traffic, evacuation runs, and hostile vessels all write into the same wake.

    Route services maintain safe-diversion drills for that interval, but the Keel's patchwork authority makes a coordinated answer difficult. One section may flood the prepared refuge while its neighbor continues scheduled departures toward a profitable port. The channel counts both.
  PROSE

  gm_note :appears, "The low and high warning tones sound across a convoy at their fixed interval, leaving every vessel on the marked line time to break away or add its wake to the destination the corridor is choosing."
end

relate :rel_second_channel_manifests_keel, :manifests_at, :second_channel, :keel
