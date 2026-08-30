installation :far_bell do
  name "Far Bell"
  summary "Far Bell is the outer traffic marker for Karet-3, beyond Outside's inhabited platform and clear of the Bloom cordon's working space."
  playable_as :chronicle_location
  context_tags :orbital, :road, :cordon
  subkind :station
  status :complete
  tags :orbital, :transport, :navigation, :danger, :resonance
  prominence :marginal

  descriptive_identity(
    setting:
      "A truss anchored to an evacuated freight tank beyond the " \
      "inhabited platform at Outside: a dock frame for one small " \
      "vessel, two shelter rooms with no passage between them, and a " \
      "thick oval ringglass plate in a ceramic rim. No beacon repeats " \
      "here — the station is silent except when the plate gives its " \
      "single stroke. Cargo tallies, Karet family names, and " \
      "contractors' warnings cover the shelter walls.",
    activity:
      "Arrivals hold and listen; departures stop to shed the cordon's " \
      "local marks, sealing boundary instruments into transfer cases " \
      "and taking a clean route strip from the shelter locker. Council " \
      "workers come out regularly to inspect everything and rewind the " \
      "striker by hand, since the plate sounds once and cannot sound " \
      "again until reset.",
    access:
      "One stroke through the hull means approach on the route sent " \
      "with it; silence means hold and query Outside by burst; a " \
      "second stroke in the same arrival is false. Larger ships stand " \
      "off and transfer by line or flitter, no cargo opens here, and " \
      "waiting visitors are tolerated only while a vessel supplies " \
      "them and vouches for immediate departure in a closure.",
    hazards:
      "The divided shelters mean a split party is out of each other's " \
      "reach, and either room can lose pressure and release on its " \
      "own. The last two reset crews found narrow bare footprints in " \
      "the dust, crossing both ceramic breaks and stopping under the " \
      "striker — the Council now sends pairs from separate rooms and " \
      "photographs the dust before anyone touches the spring."
  )

  prose <<~PROSE
    Far Bell is the outer traffic marker for #{ref :karet_three, "Karet-3"}. It stands beyond the inhabited platform at #{ref :outside, "Outside"}, far enough from the Bloom boundary that an arriving vessel can stop there without entering cordon working space. A dock frame, two shelter rooms, and a single large signal plate surround a truss anchored to an evacuated freight tank.

    The station transmits no repeating beacon. When the approach is open, its plate gives one broad structural stroke to an arriving ship. Cordon crews call that stroke the far bell. Silence means hold position and ask Outside by burst signal.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Signal Plate"
    The plate is a thick oval of ringglass held inside a ceramic rim. A mechanical striker works from a wound spring released by Outside through an isolated line. The plate sounds once and the mechanism must be reset by hand at the station.

    Two shelter rooms sit on opposite sides of the truss with no internal connection. Each contains pressure reserve, water, hand signals, and a view of the dock. If one room changes or loses pressure, the other can release independently.

    The docking frame accepts one small vessel. Larger ships hold beside the marker and transfer by line or flitter. No cargo opens at Far Bell. Anything needing inspection continues to the separated bays at Outside.
  PROSE

  prose <<~PROSE, section: :operations, heading: "One Stroke"
    Outside releases the striker after comparing the arriving vessel with the current cordon geometry. The pilot hears the stroke through the hull, acknowledges once, and approaches under the route sent with it. A second stroke during the same arrival is treated as a false signal.

    Departing ships stop at the station to shed the cordon's local marks before joining ordinary traffic. Exterior guide lines remain behind. Instruments used inside the boundary go into sealed transfer cases. The crew receives a clean route strip from the shelter locker.

    The hand reset forces regular visits. A Council worker inspects the plate, spring, dock, and both rooms before winding the striker. If nobody reaches Far Bell, the approach eventually goes silent even while the remote line still functions.
  PROSE

  prose <<~PROSE, section: :people, heading: "Waiting Outside"
    Supply crews waiting on a closed approach occupy the shelter rooms in order of medical and pressure need. Everyone else remains aboard. The station has no galley and little privacy. Its walls carry cargo tallies, family names from Karet, and warnings left by contractors rotating home.

    Permanent Vestige residents use the hand-reset trip as ordinary outside work. New contractors often volunteer because it is their first clear view of Karet-3 from beyond the platform. Fewer volunteer after their first boundary shift.

    Visitors sometimes ask to remain at Far Bell rather than enter the town. The Council permits it only while a vessel keeps them supplied and accepts responsibility for immediate departure during a closure.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Steps at the Rim"
    Far Bell's last two reset crews found narrow bare footprints in the dust around the signal plate. The tracks begin at the outer end of the truss, cross both ceramic breaks, and stop beneath the striker. No print enters either shelter or approaches the dock.

    The plate continues to give one clean stroke. #{ref :held_breath, "*Held Breath*"} recorded similar steps stopping at each break in its painted hull line. The Council now sends reset crews in pairs from separate shelter rooms and photographs the dust before anyone touches the spring.
  PROSE

  gm_note :appears, "Every arrival at Karet-3 stops here first. One stroke through the hull means approach on the route sent with it, silence means hold and ask #{ref :outside} by burst, and a second stroke in the same arrival is false."
  gm_note :triggered_by, "Wanting the approach kept open means winding the spring yourself, inspecting plate, dock, and both rooms, and finding out what has crossed the dust since the last crew came out."
  gm_note :complicates, "The two shelter rooms have no door between them. Split a waiting party and each half is out of the other's reach, and either room can lose pressure and release on its own."
end

relate :rel_far_bell_located_karet_three, :located_in, :far_bell, :karet_three do
  prose "Far Bell marks the traffic approach outside Karet-3's active cordon."
end
relate :rel_far_bell_located_outside, :located_in, :far_bell, :outside do
  prose "Outside controls the isolated striker line and dispatches the hand-reset crews."
end
relate :rel_displacement_council_maintains_far_bell, :maintains, :displacement_council, :far_bell do
  prose "The Council maintains the dock, divided shelters, and single-stroke signal plate."
end
relate :rel_held_breath_operates_far_bell, :operates_in, :held_breath, :far_bell do
  prose "Held Breath transfers cordon marks and waiting crews through Far Bell."
end
relate :rel_far_bell_resonates_bloom_zones, :resonates_with, :far_bell, :bloom_zones do
  prose "Its isolated single stroke avoids the repeating signals that Bloom boundaries can capture."
end
