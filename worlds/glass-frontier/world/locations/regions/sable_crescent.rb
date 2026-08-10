geographic_location :sable_crescent do
  name "Sable Crescent"
  subkind :region
  path "player/locations/regions/sable-crescent.md"
  status :complete
  reviewed "2026-03-20"
  tags :surface, :resonance, :archives, :"signal-freq"
  prominence :recognized

  prose <<~PROSE
    A river delta on Kaleidos's surface — marshy lowlands cut through with high cliffs and deep canyons, where the water table is saturated with crystal sediment and the #{ref :echo_rivers, "Echo Rivers"} surface in greater concentration than anywhere else in the system. The landscape shifts between extremes: flooded plains thick with glass-seeded reeds, then sheer rock faces where the exposed crystal strata glow faintly at dusk. It's not a comfortable place. It is, for certain kinds of people, the most important one.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Geography"
    The Crescent covers a region roughly the size of a major river delta — large enough for multiple settlements, not large enough to be a continent. The crescent shape follows the curve of an ancient impact basin that channels runoff from the surrounding highlands. The water moves slowly through crystal-laced sediment, picking up #{ref :resonance, "resonance"} as it goes. By the time it surfaces, it carries voices.

    The terrain is dramatic and disorienting. Canyon walls rise directly from swamp floors. A settlement built on a cliff might look down at marshland two hundred meters below where a different community lives on stilts. Travel between points that look close on a map can take days because the direct route goes through a canyon or across a flood plain that shifts with the season.
  PROSE
  prose <<~PROSE, section: :people, heading: "People"
    The Crescent supports a semi-major settlement — #{future "Ledgerfall"} — plus scattered communities along the canyon rims and surfacing points. Trade hubs service the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}, which is headquartered here. Farms work the rich delta soil where the crystal content isn't too high for crops. Fishing in the flooded lowlands. Small-scale #{ref :ringglass, "ringglass"} mining from the sediment — low-grade aggregate, but the volume is steady.

    The people are used to hearing things. Background murmur from the rivers is part of the ambient soundscape in most of the delta. Newcomers find it unsettling. Residents stop noticing, the way you stop noticing traffic noise. Except sometimes a voice comes through clearly enough to make you look up, and then you remember what you're hearing.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Atmosphere"
    Wet, warm, and acoustically strange. Sound carries differently here — the crystal-saturated ground reflects and channels it. Conversations in a canyon can be heard from the rim. A shout across a marsh arrives distorted, mixed with harmonic undertones from the substrate. #{ref :tuners, "Tuners"} who visit the Crescent describe the resonance landscape as "loud" — not overwhelming, but dense with information that takes practice to filter.

    The light at dusk is distinctive. Exposed crystal strata in the canyon walls catch the setting sun and refract it through the mist rising from the swamps. The locals call it glasslight. Tourists come to see it. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} built their headquarters to face it.
  PROSE
end

relate :rel_sable_crescent_on_surface_kaleidos, :on_surface_of, :sable_crescent, :kaleidos do
  prose "Sable Crescent is a surface region of #{ref :kaleidos, "Kaleidos"} — and the place where the Echo Rivers surface most clearly, which has shaped everything about it."
end
