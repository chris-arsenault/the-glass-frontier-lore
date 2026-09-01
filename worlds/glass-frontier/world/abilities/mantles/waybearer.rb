ability :waybearer do
  name "The Waybearer"
  summary "The Waybearer is a mantle of the Three that extends Waybearing into a traversable road for fleets or populations between genuinely known places anywhere in Kaleidos."
  type_of :passage
  subkind :the_three
  status :complete
  tags :resonance, :religion, :navigation, :transport
  prominence :recognized
  qualification "Answers a traveler who has opened a way to a place they did not know by trusting another person's lived memory or belonging"
  succession "Passes when the bearer yields an open road and its destination to a qualified successor, then remains at the other end until every pursuit on the road resolves"
  cost "The road remains open while anyone is upon it, and the bearer must keep both ends in perception until the last traveler or pursuer reaches one side"

  descriptive_identity(
    signs: "An ordinary opening shows the weather and light of a distant place, air moves through it, and the bearer is visible at both ends at once.",
    effect: "The mantle extends #{encyclopedia_ref :passage, "waybearing"} from one fixed threshold to a system-wide road for armies, fleets, or whole populations.",
    limits: "A destination requires lived memory, a trustworthy live signal, or a traveler who belongs there. The road joins both environments and remains open while anyone is upon it."
  )

  question "Who is the present or most recently attested Waybearer, and what occupied road did the former bearer yield to them?", raised: "2026-08-31"

  prose <<~PROSE
    The Waybearer makes distant places adjacent on a scale ordinary #{encyclopedia_ref :passage, "waybearing"} cannot sustain. A hangar can open onto a remote vessel, a freight court onto another world, or an embarkation ground onto a settlement held in one passenger's memory. Fleets and populations cross the same road anywhere in Kaleidos, carrying momentum and cargo intact.

    The intervening distance remains untouched because travelers never enter it. Both ends occupy one threshold for as long as the road holds: light and sound cross before the first traveler, air and loose matter follow, and the bearer stands visible from each side. The road stays open behind the intended traffic while anyone remains upon it.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Making an Address"
    Coordinates locate a point for instruments; they do not give the mantle an address. A lived memory carries the worn step at a door, the light from its window, and the surrounding rooms. A trustworthy live signal carries present weather, motion, and enough local response to distinguish one deck from another. A traveler who belongs somewhere can supply the anchor through habits and relationships even when the Waybearer has never seen the place.

    The qualification rests on that last kind of journey. A candidate must have trusted another person's knowledge strongly enough to open a way home to a place the candidate did not know. Mistaken or incomplete knowledge produces a real destination: the last place that satisfies the memory or signal as the bearer actually received it. Before moving a vessel, crews compare the anchor against current traffic, pressure, and motion at both ends.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Occupied Road"
    A road joins conditions as well as places. Pressure, radiation, fire, weapons, debris, and enemies can cross from either end. Momentum also survives the passage; a vessel opening onto a storm receives the storm's motion immediately. Once anyone enters the road, the bearer must keep both ends in perception and cannot close it until every traveler or pursuer reaches one side, turns back, or is removed from the road.

    Tessellan diagrams draw the mantle as a bright signal stroke between the gold and red panels: the path by which Form reaches Will and Will finds Form, widened until bodies and vessels can use it. Succession occurs when the bearer yields an occupied road and its destination to a qualified successor, then remains at the other end until the pursuit has resolved.
  PROSE

  gm_note :triggered_by, "When the group can supply lived memory, a trustworthy live signal, or someone who belongs at the destination, the Waybearer can make it adjacent; an incomplete anchor opens the last real place that satisfies it."
  gm_note :complicates, "While a road remains open, pressure, weather, momentum, weapons, debris, and pursuers cross in either direction, and the road cannot close until every occupant reaches one end or leaves the path."
end

relate :rel_waybearer_resonates_triptych, :resonates_with, :waybearer, :the_tessellan_triptych
