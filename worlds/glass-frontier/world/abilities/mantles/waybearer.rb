ability :waybearer do
  name "The Waybearer"
  summary "The Waybearer is a mantle of the Three that opens a traversable road between two genuinely known places anywhere in the Kaleidos system."
  type_of :passage
  subkind :the_three
  status :complete
  tags :resonance, :religion, :navigation, :transport
  prominence :recognized
  qualification "Answers a traveler who can be guided home by another person's knowledge rather than their own certainty"
  succession "Passes when a bearer holds an impossible road for a successor and remains behind to face what follows"
  cost "An apex road cannot close while a pursuer remains upon it, and the bearer must stay able to perceive both ends until the pursuit resolves"

  descriptive_identity(
    signs: "An ordinary opening shows the weather and light of a distant place, and the bearer stands where both ends can see them.",
    effect: "The bearer can use #{encyclopedia_ref :passage, "Passage"} to carry armies, fleets, and whole populations between genuinely known destinations.",
    limits: "A destination needs lived memory, a trustworthy live signal, or a traveler who belongs there; the open road carries enemies and hazards as readily as allies."
  )

  prose <<~PROSE
    The Waybearer makes a road where no route exists. A hangar door can open onto a harbor across the system. A step from a collapsing habitat can land on ground remembered by one evacuee. Fleets can cross the same opening with their momentum intact. Everything between the two places remains untouched because nothing using the road travels through it.

    Tessellan diagrams draw the mantle as a bright stroke between the gold and red panels. Signal is the path by which Form becomes Will and Will finds Form; the Waybearer makes that path wide enough for bodies and vessels. The destination must be known from life, living signal, or belonging. Accurate coordinates without encounter have never opened a road.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Last Pursuer"
    The road has no favored direction. Air, radiation, weapons, debris, and enemies can follow. Once a pursuer enters an apex road, the bearer cannot close it until that pursuer reaches an end, turns back, or is removed from the path. A rescue from a besieged city can therefore place its besiegers inside the refuge.

    The mantle passes through that danger. One bearer holds the road while a successor crosses, then remains at the other end to deal with the pursuit. The act need not be fatal. It must be genuine: the old bearer surrenders both the road and the choice of destination.
  PROSE

  gm_note :triggered_by, "An extraction across impossible distance succeeds immediately, then the scene turns to whatever entered the road behind the last intended traveler."
end

relate :rel_waybearer_resonates_triptych, :resonates_with, :waybearer, :the_tessellan_triptych
