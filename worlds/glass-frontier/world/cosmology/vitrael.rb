geographic_location :vitrael do
  name "Vitrael"
  playable_as :chronicle_location
  subkind :celestial_body
  status :complete
  tags :cosmology, :materials, :trade, :danger, :"outer-system"
  prominence :recognized
  position frame: :kaleidos_system_chart, radius: 4, angle_deg: 202

  prose <<~PROSE
    Vitrael is the fourth planet, wrapped in a deep hot atmosphere whose upper clouds carry metal condensates and crystal-bearing dust. Permanent habitation occupies orbital stations and aerostats above the crushing lower layers. No crewed descent has returned from beneath the dark cloud deck.

    Sunlight reaches the high stations in pale bands. Storm towers rise from below and can overtake an aerostat before its orbiting support station sees the change. Settlements therefore travel in loose groups whose members can exchange forecasts and lifting gas without sharing one failure.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Cloud Harvests"
    Harvest skiffs draw charged droplets through ceramic vanes, separate the condensate, and return it to the aerostat before the storm field changes. The recovered metals include catalyst grades difficult to refine from rock. Crystal dust becomes abrasive and instrument substrate after repeated washing.

    A skiff never follows its own signal wake home. Vitrael's clouds preserve a transmission long enough to create a false bearing, especially after lightning. Crews return on pressure, wind, and a timed tone sent from a different station than the one that launched them.
  PROSE

  prose <<~PROSE, section: :people, heading: "Stations Above the Weather"
    Orbital platforms handle heavy refining and interplanetary cargo. Aerostats hold homes, clinics, light workshops, and the equipment that controls altitude. Families move between the two by scheduled shuttle, with emergency berths reserved on both sides.

    An aerostat identifies itself by pressure band as well as name. Two communities can pass within sight while occupying layers whose winds carry them in opposite directions. Meetings planned by distance often fail; meetings planned by the next shared band usually occur.
  PROSE
end

relate :rel_vitrael_orbits_the_sun, :orbits, :vitrael, :the_sun do
  prose "Vitrael is the fourth planet from the sun."
end
relate :rel_vitrael_inner_of_ashenmaw, :inner_of, :vitrael, :ashenmaw do
  prose "Vitrael orbits inside Ashenmaw."
end
relate :rel_vitrael_part_of_system, :part_of, :vitrael, :kaleidos_system do
  prose "Vitrael belongs to the Kaleidos system."
end
