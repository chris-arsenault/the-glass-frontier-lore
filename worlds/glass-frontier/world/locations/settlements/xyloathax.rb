installation :xyloathax do
  name "Xyloathax"
  summary "Xyloathax is a ring-hab settlement of sixty-four hundred people in clean Kaleidos orbit, with one service truss caught inside a Bloom boundary."
  playable_as :chronicle_location
  context_tags :"realm:ring_habitat", :"realm:orbital"
  subkind :settlement
  type_of :settlement
  population 6400
  population_band "About sixty-four hundred residents inside the occupied arc"
  role "Inhabited ring habitat beside a Bloom Zone cordon"
  setting "A stable ring fragment in clean Kaleidos orbit, with one service truss inside a Bloom boundary"
  access "Two controlled dock corridors on the hab's far arc"
  tags :"ring-hab", :orbital, :resonance, :danger, :governance
  prominence :recognized
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: 0.1, angle_offset_deg: -118
  status :complete
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A ring hab in clean Kaleidos orbit, curved around a narrow garden " \
      "valley with homes and workshops set into both walls and a service " \
      "truss crossing the open side. Since 2431 the Bloom Zone shows " \
      "through the valley as a dark break across that truss, while " \
      "ordinary sunlight passes around it.",
    activity:
      "Sixty-four hundred people keep the hab running as if the boundary " \
      "were weather: gardens tended below the inner doors, meals and " \
      "shifts marked by the truss shadow, evacuation cases packed and " \
      "left by the door. Growers are currently moving the next harvest " \
      "into sealed storage.",
    access:
      "The sunward dock is closed; arrivals use the two controlled " \
      "corridors on the far arc, stopping at an outer buoy to surrender " \
      "automatic docking control to a local pilot. The approach distance " \
      "is checked by paired clocks, and a disagreement shuts the " \
      "corridor until a Tuner and a pilot survey it together.",
    hazards:
      "The outer buoy now reads early on the dock clocks and on time on " \
      "its own isolated mechanism, and the gap widens after every supply " \
      "transfer — so each delivery worsens the next approach, with only " \
      "one corridor left open while a third clock goes onto the hab " \
      "wall."
  )

  prose <<~PROSE
    Xyloathax is an inhabited ring hab in a clean orbit of Kaleidos. Its old name survives in spoken form; the intact wall script begins with the same sounds and continues for another line. The hab curves around a narrow garden valley, with homes and workshops set into both walls and a service truss crossing the open side.

    A #{ref :bloom_zones, "Bloom Zone"} appeared beside the sunward truss in 2431. The boundary cut through empty space, one cargo rail, and the outer end of a pressure conduit without spreading into the inhabited arc. Xyloathax remained structurally stable. Its council rejected evacuation after three independent surveys found no displacement inside the main hull.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Living Beside the Boundary"
    The #{ref :displacement_council, "Displacement Council"} closed the sunward dock and established two approach corridors on the far arc. Arriving vessels stop at an outer buoy, surrender automatic docking control, and follow a local pilot through a path whose distance is checked by paired clocks. A clock disagreement closes the corridor until a Tuner and a pilot survey it together.

    Inside the hab, the zone is visible through the valley's open side as a dark break across the truss. Residents use the truss shadow to mark meals and work shifts because ordinary sunlight passes around it. Children born since the boundary appeared learn the cordon colors with their dock signs. Families keep evacuation cases by their inner doors and continue to tend the gardens below them.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The outer buoy has begun arriving early according to the dock clocks and on time according to its own isolated mechanism. The discrepancy is small and grows after each supply transfer. The Council has reduced traffic to one corridor while Xyloathax's mechanics install a third clock on the hab wall.

    The hab council will close both corridors if the wall clock disagrees with the vessel pair. The #{ref :ring_collective, "Ring Collective"} is holding emergency berths at #{ref :hab_meridian, "Hab Meridian"}, while Xyloathax's growers move the next harvest into sealed storage.
  PROSE

  gm_note :appears, "Vessels stop at the outer buoy, surrender automatic docking control to a local pilot, and run the approach against paired clocks. A disagreement between the two closes that corridor until a Tuner and a pilot have surveyed it together."
  gm_note :triggered_by, "Raising evacuation with the hab council gets the three independent surveys quoted back, none of which found displacement inside the main hull. Residents keep cases by their inner doors and go on tending the gardens below the truss."
  gm_note :complicates, "The outer buoy reads early on the dock clocks and on time on its own mechanism, and the gap widens after every supply transfer, so each delivery makes the next approach worse while only one corridor is still open."
end

moment :xyloathax_zone_appears, year: 2431, of: :xyloathax do
  summary "A Bloom boundary opened beside Xyloathax's sunward service truss in 2431, the first recorded zone beside a stable hab in clean orbit."
  prose "A Bloom boundary appeared beside Xyloathax's sunward service truss in 2431, the first recorded zone to open beside a stable hab in otherwise clean orbit."
end

relate :rel_xyloathax_orbits_kaleidos, :in_orbit_of, :xyloathax, :kaleidos do
  prose "Xyloathax occupies a stable Kaleidos orbit outside the Shear."
end
relate :rel_xyloathax_located_in_frontier, :located_in, :xyloathax, :the_glass_frontier do
  prose "Xyloathax is an inhabited fragment of the broken ring."
end
relate :rel_xyloathax_member_ring_collective, :member_of, :xyloathax, :ring_collective do
  prose "The hab sends one delegation to the Ring Collective and uses its register for emergency berths."
end
relate :rel_bloom_zones_manifest_at_xyloathax, :manifests_at, :bloom_zones, :xyloathax do
  prose "A Bloom Zone opened across Xyloathax's sunward service truss without entering the inhabited arc."
end
relate :rel_displacement_council_operates_xyloathax, :operates_in, :displacement_council, :xyloathax, since: 2431 do
  prose "The Council maintains the external cordon and controls the two remaining approach corridors."
end
