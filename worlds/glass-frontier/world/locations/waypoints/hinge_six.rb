installation :hinge_six do
  name "Hinge Six"
  summary "Hinge Six is a small Keel waystation where traffic from Kaleidos turns outward toward Korvath and Ashvane."
  playable_as :chronicle_location
  subkind :station
  status :complete
  tags :orbital, :transport, :trade, :navigation, :resonance
  prominence :marginal
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: 0.55, angle_offset_deg: 18

  descriptive_identity(
    setting:
      "A small waystation where the Keel branches outward toward Korvath " \
      "and Ashvane: a still beacon house, one slowly rotating habitation " \
      "drum of twelve bunks, four docking collars on crossed trusses, " \
      "and an exterior freight frame holding up to six separated loads. " \
      "The passage between drum and beacon house has a floor that " \
      "gradually becomes a wall.",
    activity:
      "Most vessels pause only to trade route records and confirm their " \
      "receiving port, while five keepers and mechanics run overlapping " \
      "watches and passing crews cook, clean, and shift cargo to earn " \
      "water or bunk space. News crosses the station faster than " \
      "freight — port conditions, prices, and ships seen beyond the " \
      "last common beacon.",
    access:
      "The route room prints a joined strip reconciling inner-corridor " \
      "marks with the outer branch; a pilot may refuse it and keep their " \
      "own records, but must still name which port expects them. A " \
      "vessel without that answer stays at the collars or departs as " \
      "unreceived traffic, outside the ordinary rescue pools.",
    hazards:
      "Since Ironwhistle returned to the branch routes, outer strips " \
      "carry a disputed predator surcharge, and one collar is held by a " \
      "tug refusing release until the fee comes off — two passenger " \
      "craft stacked behind it. When an outer port closes late, the " \
      "drum overfills and stranded passengers sleep in the route room " \
      "behind privacy cloth."
  )

  prose <<~PROSE
    Hinge Six is a small waystation on the branch of #{ref :keel, "the Keel"} where traffic from Kaleidos turns outward toward Korvath and Ashvane. It consists of a beacon house, one rotating habitation drum, four docking collars, and a freight frame that can hold six separated loads. Most vessels stop only long enough to exchange route records and confirm the next receiving port.

    The station's name predates the present hull. It was the sixth marked change in direction on the first reopened outer route. Later surveys moved the corridor and rebuilt the station twice. The name stayed with the job rather than the structure.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Four Collars and a Drum"
    The docking collars sit at the ends of two crossed trusses. Each closes around a soft capture ring so a vessel can settle without making the station part of its drive frame. Cargo transfers across the central joint on mechanical rails. Energized loads remain on the exterior freight frame.

    The habitation drum contains twelve bunks, a galley, a route room, a clinic cabinet, and one wash space shared by crew and stranded passengers. Its slow rotation provides enough weight for sleep and cooking. The beacon house remains still, connected through a joint passage whose floor gradually becomes a wall.

    Water and pressure reserve sit near the center. A visiting ship can buy both. Drive mass and specialized parts depend on what the last freight tender left behind.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Turning Outward"
    A ship approaching from Kaleidos carries a route record shaped by the inner corridor's beacons. Hinge Six compares it with the outer branch, where receiving windows, rescue coverage, and field conditions follow different keepers. The route room prints one joined strip with the authority and expiry of every mark left visible.

    Pilots can decline the joined strip and continue under their own records. They must still declare which receiving port expects them. A vessel without an answer remains at the station or departs as unreceived traffic, outside the ordinary rescue pools.

    Mixed cargo uses the freight frame while its next leg is settled. Each of the six positions has separate ceramic breaks and a manual release. A load whose response changes can be left without holding every docked ship.
  PROSE

  prose <<~PROSE, section: :people, heading: "A Short Stop That Becomes Long"
    Five route keepers and mechanics staff the station under overlapping watches. Passing crews cook, clean, and help with cargo because the permanent hands cannot service four collars alone. Work earns water, bunk space, or a reduction in the route charge.

    The drum fills when an outer port closes after a ship has already left the inner system. Stranded passengers sleep in the bunks first, then in the route room and joint passage. Privacy cloth hangs from hooks installed after the first such closure.

    News moves through Hinge Six faster than freight. Crews arriving from opposite directions exchange port conditions, price changes, and the names of ships seen beyond the last common beacon.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Added Fee"
    Vantara has added a predator surcharge to Hinge Six's outer strips after Ironwhistle returned to the branch routes. The charge covers iron decoys and longer rescue standby. Independent carriers accept the decoys and contest a fee calculated by cargo mass when the dragon follows drive output.

    One collar is occupied by a tug refusing release until the charge is removed from its strip. Two passenger craft are waiting behind it. The station can move the tug only by cutting the soft ring or persuading its crew to bring the drive cold.
  PROSE

  gm_note :appears, "Turning outward from Kaleidos means stopping for a joined route strip, and the route room asks which receiving port " \
                    "expects the ship; a vessel with no answer stays at the collars or leaves as unreceived traffic, outside the " \
                    "rescue pools."
  gm_note :triggered_by, "Crews short of money work the station: cooking, cleaning, and cargo handling alongside the five permanent " \
                         "hands buys water, bunk space, or a cut in the route charge."
  gm_note :complicates, "One of four collars is held by a tug that will not release until the predator surcharge comes off its strip, " \
                        "with two passenger craft waiting behind it; freeing the berth means cutting the soft ring or talking its " \
                        "crew into a cold drive."
end

relate :rel_hinge_six_located_keel, :located_in, :hinge_six, :keel do
  prose "Hinge Six marks the branch where the inner Keel turns outward toward Korvath and Ashvane."
end
relate :rel_vantara_maintains_hinge_six, :maintains, :vantara, :hinge_six do
  prose "Vantara maintains the beacon, route room, and scheduled freight tender under public access rules."
end
relate :rel_hinge_six_active_corridor_disputes, :active_during, :hinge_six, :the_corridor_disputes do
  prose "Its joined route strips expose every disagreement over fees, expiry, rescue, and receiving ports."
end
relate :rel_hinge_six_resonates_ironwhistle, :resonates_with, :hinge_six, :ironwhistle do
  prose "The station now issues iron decoys and carries a disputed predator surcharge on outward routes."
end
relate :rel_nine_holds_operates_hinge_six, :operates_in, :nine_holds, :hinge_six do
  prose "The freighter exchanges partial manifests and outer-port marks at Hinge Six."
end
