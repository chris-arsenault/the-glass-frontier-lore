geographic_location :the_glass_frontier do
  name "The Glass Frontier"
  subkind :world_region
  path "player/cosmology/the-glass-frontier.md"
  status :complete
  reviewed "2026-03-19"
  tags :orbital, :"ring-hab", :salvage
  prominence :mythic
  form "Shattered orbital ring of inhabited fragments"
  population_pattern "Hundreds of sealed habitats with distinct communities"
  principal_hazards "Debris, resonance distortion, structural collapse and Bloom Zones"

  prose <<~PROSE
    The Glass Frontier is what's left of the orbital ring that once encircled Kaleidos — a vast, shattered halo of crystalline megastructures, still habitable, still inhabited, and still very much the center of everything.

    The ring didn't just disappear when it broke. It fragmented. Enormous sections — some hundreds of kilometers long — cracked apart and drifted into new orbits, trailing clouds of debris and dust. The spaces between them filled with glass particulate that catches the light and turns the sky prismatic. But the fragments themselves survived. Many of them were self-sustaining habitats before the #{ref :the_glassfall, "Glassfall"}, and they've remained so since — sealed environments with their own atmospheres, ecosystems, and populations.

    People live up there. A lot of people.
  PROSE
  prose <<~PROSE, section: :geography, heading: "The Habs"
    The ring fragments are called habs, and no two are alike. Before the Glassfall, they were standardized modules in an integrated system. After generations of isolation, drift, and improvisation, they've become anything their inhabitants made of them.

    Some habs maintained continuity with the old ring civilization and still run on the original infrastructure — vast, clean, quietly miraculous technology that would look like magic if you'd only ever lived dirtside. These are places where the legacy of the ring's builders is still tangible, where systems designed by minds far more sophisticated than anything currently operating still hum along, doing their work. The people living in them don't always understand what they have. They just know the lights come on and the air stays fresh.

    Other habs went their own way entirely. Cut off during the Signal Famine, they reinvented themselves from scratch. There are habs governed by musical consensus — where civic decisions are made through structured improvisation, and political authority flows to whoever holds the session. There are habs that let their environmental controls drift until the interior rewilded into something prehistoric and dense, and then decided they preferred it that way. There are habs where the #{ref :resonance, "resonance"} environment is so saturated and strange that the normal rules bend — where the boundary between what's real and what's imagined gets thin enough to step through.

    These fluid-reality habs are the hardest to describe and the most dangerous to visit. They're also, for certain kinds of people, the most interesting places in the system.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Kaleidos Orbit"
    The orbital space around Kaleidos — everything that used to be the ring — contains three distinct environments:

    **The ring** is what most people mean when they say "the frontier" — the surviving habs, the inhabited fragments, the places where people live. Shuttle traffic between the surface and the ring is routine in well-connected regions. The ring is also the gateway to the rest of the #{ref :kaleidos_system, "Kaleidos system"}. Most interplanetary traffic routes through ring-based stations and commerce hubs, because that's where the old infrastructure — docking systems, navigation beacons, #{ref :resonance, "resonance"} relay networks — is densest.

    **#{ref :the_shear, "The Shear"}** fills the pockets and layers between habitable fragments — roughly half the orbital volume. Debris, resonance distortion, and the #{ref :ringglass, "ringglass"} salvage industry that depends on both. The Shear has existed since the Glassfall and is, by now, broadly understood. Dangerous, but navigable. An environment people have learned to work in.

    **#{ref :bloom_zones, "Bloom Zones"}** are the exception to "understood." Man-made reality tears caused by the #{ref :the_silent_bloom, "Silent Bloom"} cascade of 2378, they can appear anywhere in orbit — in the Shear, adjacent to ring habs, or in otherwise clean space. Where the Shear distorts resonance, Bloom Zones break reality. They are actively expanding and require constant containment.

    The boundary between ring and Shear is not sharp. A hab that was stable for decades can lose structural integrity and become Shear — just another piece of debris. A section of Shear can be stabilized, sealed, and colonized into a new hab. And a Bloom Zone can erupt next to either. The frontier is, in this sense, always moving.
  PROSE
  prose <<~PROSE, section: :significance, heading: "What It Means"
    The Glass Frontier is the defining feature of this civilization. Not Kaleidos the planet, which is one world among several in the system. The ring. It's where the oldest technology lives, where the strangest communities flourish, and where the boundaries of the possible are thinnest.

    It's also, still, slowly falling apart. The Shear grows. Habs that were stable for decades occasionally collapse into it. The ring is not safe. It's not tame. But it is, emphatically, alive.
  PROSE
end

relate :rel_tgf_orbits_kaleidos, :orbits, :the_glass_frontier, :kaleidos do
  prose "The Frontier still rings #{ref :kaleidos, "Kaleidos"} the way the old structure always did — a broken halo of habs and debris bound to the planet's orbit, circling it now as a scattered archipelago rather than a single band."
end
relate :rel_tgf_part_of_kaleidos_system, :part_of, :the_glass_frontier, :kaleidos_system do
  prose "It is one body among many in the #{ref :kaleidos_system, "Kaleidos system"}: the most populous, the most fractured, and the one the rest of the system measures itself against."
end
