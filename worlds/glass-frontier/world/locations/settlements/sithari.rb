installation :sithari do
  name "Sithari"
  subkind :settlement
  path "player/locations/settlements/sithari.md"
  status :complete
  reviewed "2026-03-19"
  tags :surface, :governance, :trade, :"ring-era"
  prominence :mythic
  registry true

  prose <<~PROSE
    The largest city in the Kaleidos system by a wide margin. Population a few million in the city proper, more in the sprawl beyond the old walls. Equatorial, vertical, built on top of itself in layers that go down further than most residents realize. The de facto capital of everything — seat of the Tempered Accord, cultural and financial center of the system, and the place everyone has an opinion about whether they've been there or not.

    Sithari is a Sitharian word that means, roughly, "the place that kept going." It did.
  PROSE
  prose <<~PROSE, section: :geography, heading: "The Layers"
    Sithari is vertical in a way that isn't immediately obvious from the surface. The modern city sits on top of the ring-era campus, which sits on top of older construction that predates the research complex. Go down far enough and you find rooms that don't appear on any survey, corridors that follow geometries the original builders understood and nobody since has replicated, and — occasionally — sealed chambers that open onto spaces larger than they should be.

    The stratification isn't clean. The ring-era structures weren't demolished; they were absorbed. A modern office tower might have a pre-Glassfall laboratory as its basement. A residential block might sit on a sealed corridor that runs for kilometers. The old walls of the original campus are still there, three or four stories below current street level, occasionally surfacing where the geography forces them up.

    Going deep is technically restricted and practically common. Urban explorers, historians, salvage operators, and people who know which cellar door leads somewhere interesting all navigate the #{future "Underlayers"}. The deepest levels are genuinely dangerous — not just structurally, but because the ring-era resonance systems down there are still partially active, tuned to frequencies that modern equipment can't always read. Things work differently in the deep layers. Sometimes a room is larger inside than outside. Sometimes a corridor connects two points that shouldn't be adjacent. The #{ref :elves, "elves"} built these spaces, and they built them to last.
  PROSE
  prose <<~PROSE, section: :governance, heading: "[future:The Continuity]"
    Sithari's ruling party. They have held power effectively unchallenged since the city stabilized during the Signal Famine. Their name is their argument: the Continuity preserved civilization when everything else collapsed. They kept the lights on, maintained the walls, organized the food distribution, ran the courts, and — when contact was re-established with the rest of the system — presented a functioning city-state to a world of scattered survivors.

    The Continuity is not a dictatorship. Sithari has a traditional democratic structure — elections, representatives, a free press, institutional checks. The Continuity wins because they've been winning since the Glassfall and nobody with a credible alternative has emerged. Their critics call this a lack of imagination. Their supporters call it evidence that the system works. Both readings have historical support.

    The party's identity is inseparable from the city's identity. Being Sitharian is not a political statement — it's a civic one, like being from Fermata — a relationship to a place, not a political faction. But the Continuity's fingerprints are on every institution, every procedure, every default assumption about how things should be organized. Opposition parties exist. They don't win.

    The name carries a quiet threat that nobody in the Continuity would acknowledge: the implication is that the alternative to their governance is discontinuity. They kept civilization going. Would you like to try not having them?
  PROSE
  # The Accord seat was written out here and in tempered_accord, fourteen shared
  # eight-word windows. The Accord owns its own seat; this entry embeds it and
  # keeps the part that is about the city.
  prose <<~PROSE, section: :governance, heading: "The Accord Seat", drafted_by: :ai
    #{embed :tempered_accord, :structure}

    What that arrangement does to the city is the part Sithari feels. The Accord operates independently, staffed by representatives from across the system, but the physical reality of being here — eating Sitharian food, hearing Sitharian language, navigating Sitharian bureaucracy — shapes the institution in ways that are hard to quantify and impossible to ignore.

    During the Contested Reach and the Bitter Reach, this caused real problems. Sithari the city remained neutral. The Continuity, as a political entity, was a combatant — providing logistical support, applying economic pressure, backing specific factions. The distinction between "the city is neutral" and "the government is a participant" was technically valid and practically meaningless. Other factions noticed. The resentment is still live.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Economy"
    Sithari doesn't make things. It makes decisions, manages money, and produces culture. The city's economic output is financial services, institutional knowledge, legal frameworks, academic research, and media. If you need a contract enforced across three jurisdictions, a resonance patent evaluated, or a historical claim authenticated, the relevant expertise is in Sithari.

    This is both a strength and a vulnerability. Sithari's economic centrality depends on other settlements accepting its institutions as legitimate. The moment the system decides it doesn't need Sitharian courts or Sitharian banks, the city's leverage evaporates. The Continuity is acutely aware of this, which is one reason they invest so heavily in making Sitharian standards the default across the system. The more everyone uses Sitharian legal language, Sitharian financial instruments, and Sitharian certification processes, the harder it is to route around them.
  PROSE
  prose <<~PROSE, section: :access, heading: "Access"
    Sithari has direct orbital access — shuttle infrastructure connecting to ring habs. Some habs serve as entry points to the Shear for salvage crews. Shuttle traffic is routine. A space elevator was attempted during the Rekindling; the project was abandoned due to political prioritization rather than technical failure, and the debate about resuming it surfaces every few years.

    The city is a major node on #{ref :keel, "the Keel"} — the system's primary orbital trade lane. Surface-access spurs connect Sithari's docking infrastructure to the orbital corridor. #{ref :vantara, "Vantara"} maintains its largest surface operations hub in Sithari's eastern sprawl.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What It Feels Like"
    Dense, vertical, old in places you don't expect. The modern surface is clean and functional — engineered crystal facades, resonance-integrated infrastructure, wide plazas designed to impress. Below that, the city gets stranger and more interesting. Street-level neighborhoods built into the gaps between ring-era structures have a compressed, lived-in quality that the planned districts lack. The walls of the original campus surface occasionally as exposed stone amid glass towers, and locals treat them the way a European city treats Roman ruins — part of the scenery, occasionally useful, mostly ignored until a construction crew hits one and has to stop.

    The light is equatorial and filtered through ring debris. Prismatic weather is normal here — the kind of refracting, color-shifted light that visitors find disorienting and residents stop noticing. Dawn and dusk are long, strange, and beautiful.

    Everyone speaks Sitharian. Everyone who doesn't learns to. The register is precise, measured, and carries an assumption of competence that can feel like warmth or condescension depending on which end of it you're on.
  PROSE
end

relate :rel_sithari_on_surface_of_kaleidos, :on_surface_of, :sithari, :kaleidos do
  prose "Sithari sits on the surface of #{ref :kaleidos, "Kaleidos"} — the largest planetside settlement and the system's prestige register."
end
relate :rel_sithari_depends_on_ringglass, :depends_on, :sithari, :ringglass do
  prose "Its wealth runs on #{ref :ringglass, "ringglass"}: Sithari is where Shear salvage is graded, financed, and turned into respectable money."
end
relate :rel_sithari_depends_on_resonance, :depends_on, :sithari, :resonance do
  prose "Like every major settlement it runs on #{ref :resonance, "resonance"} — but Sithari runs on more of it, and more conspicuously, than anywhere else."
end
relate :rel_sithari_hosts_tempered_accord, :hosts, :sithari, :tempered_accord, since: 2423 do
  prose "Since the Accord's founding it has hosted the #{ref :tempered_accord, "Tempered Accord"}'s standing offices — a convenience the city wields and resents in equal measure."
end
relate :rel_sithari_terminus_keel, :terminus_of, :sithari, :keel do
  prose "It is the surface terminus of #{ref :keel, "the Keel"}, where the orbital trade lane finally touches ground."
end

# --- history (moments) ---
moment :sithari_held_the_glassfall, year: 2140, of: :sithari do
  prose "Before the #{ref :the_glassfall, "Glassfall"} this was a ring-era #{ref :resonance, "resonance"}-science complex — hardened walls, independent power, sealed labs that could run without the ring. When the ring fell, the campus held: power stayed on, the walls stayed up, and the institutional culture stayed intact while the world outside came apart. People consolidated around it within weeks."
  effects { set :sithari, standing: :surviving_complex }
end
moment :sithari_becomes_capital, year: 2305, of: :sithari do
  prose "By the time the #{ref :signal_famine, "Signal Famine"} ended, the campus was a neighborhood in a city of hundreds of thousands, and nobody remembered when the settlement had stopped being temporary. Functioning infrastructure, an organizational culture that could scale, and walls had turned a research outpost into the de facto capital of the system."
  effects { set :sithari, standing: :capital }
end
relate :rel_sithari_governed_by_continuity, :governed_by, :sithari, :the_continuity, since: 2160 do
  prose "Sithari is run by #{ref :the_continuity, "the Continuity"} — the party that has held power effectively unchallenged since the city stabilized during the Famine, and whose name is its argument: the alternative to their governance is discontinuity."
end
