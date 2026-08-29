incident :the_glassfall do
  name "The Glassfall"
  summary "The Glassfall was the hours-long shattering of Kaleidos's inhabited orbital ring in 2140, leaving isolated habitats and debris across the system."
  subkind :disaster
  type_of :systemic_catastrophe
  path "player/history/events/the-glassfall.md"
  status :complete
  reviewed "2026-03-19"
  tags :catastrophe, :origin
  prominence :mythic
  date 2140
  fact :duration, "Hours"
  cause_status "Unknown; deliberate sabotage is the prevailing theory"
  prominence_xrefs ["lattice-proxy-synod"]

  descriptive_identity(
    marks:
      "Everything the system lives in dates from one day in 2140: " \
      "hundreds of surviving habs drifting where their ring sections " \
      "cracked free, wreckage settled into the Shear between atmosphere " \
      "and orbit, and ringglass sunk through Kaleidos's crust and " \
      "waterways still carrying the imprint of old transmissions.",
    stakes:
      "The cause is argued rather than known. Sabotage is the " \
      "prevailing theory, since the rings were built to outlast " \
      "anything the orbit could produce, and the Lattice Proxy Synod " \
      "holds classified custodian-AI archives without saying whether " \
      "they contain an answer."
  )

  prose <<~PROSE
    In 2140 CE, the orbital rings broke.

    It wasn't gradual. It wasn't a slow decline that people saw coming and argued about until it was too late. One day the rings were there — the same crystalline halo that had encircled Kaleidos since before anyone alive could remember — and then they weren't. The cascading failure took hours, not days. By nightfall, the sky was full of falling glass.

    The ring didn't vanish. It broke apart — enormous sections cracking free and drifting into new orbits, trailing debris. Many of these fragments were self-sustaining habitats, and they survived intact enough to keep their populations alive. But the connections between them severed. The integrated system that had made the ring a single civilization became hundreds of isolated fragments, each suddenly on its own.

    On the surface of Kaleidos, the damage was different. Debris rained down as showers of crystal fragments and dust — dangerous, but not extinction-level. The real destruction was systemic. The rings had been the backbone of the colony's infrastructure: power distribution, climate regulation, communication, orbital logistics. All of it, gone.
  PROSE
  prose <<~PROSE, section: :cause, heading: "The Cause"
    Nobody knows. Not with certainty.

    The prevailing theory is sabotage — some kind of internal attack that triggered a structural cascade. The evidence for this is mostly negative: the rings were engineered to survive natural stresses far beyond anything Kaleidos's orbit could produce. Something deliberate had to have initiated the failure.

    Who did it, and why, is the subject of #{elapsed :the_glassfall, approx: true} of speculation, investigation, and increasingly entrenched disagreement. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} maintains classified archives from the ring-era custodian AIs that might contain answers. Whether they've found anything and aren't sharing, or genuinely don't know, is itself a source of tension.

    Most people have stopped expecting an answer. The Glassfall is history now — the kind that shapes everything but that nobody alive experienced firsthand. It matters the way an earthquake matters: not as a mystery to solve, but as the reason the landscape looks the way it does.
  PROSE

  gm_note :appears, "The debris in the lanes, the #{ref :the_shear, "Shear"} between atmosphere and orbit, and the ringglass settled through crust and waterways all date from one day in 2140, so salvage, flight, and resonance problems bottom out in an event nobody alive witnessed."
  gm_note :triggered_by, "The question of who broke the ring produces the sabotage argument rather than an answer: the rings were built to survive far worse than Kaleidos's orbit could produce, so something deliberate must have started the cascade."
  gm_note :complicates, "Inquiry into the cause ends at the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"}, which holds classified archives from the ring-era custodian AIs and will not say whether they contain an answer."
end

moment :the_glassfall_begins, year: 2140, of: :the_glassfall do
  summary "Kaleidos's orbital ring shattered in 2140, beginning the Glassfall and the Signal Famine."
  prose "The orbital ring shattered in 2140, beginning the Glassfall and the Signal Famine."
end

# --- what the Glassfall caused (the consequences that define modern Kaleidos) ---
relate :rel_the_glassfall_destroyed_the_glass_frontier, :destroyed, :the_glassfall, :the_glass_frontier do
  prose <<~PROSE
    The ring did not vanish — it shattered. Enormous sections cracked free and drifted into new orbits, and what had been one continuous structure became the #{ref :the_glass_frontier, "Glass Frontier"}: hundreds of surviving habs, a growing debris field, and the raw material for most resonance technology. The integrated machine was destroyed; the archipelago it left behind is where everyone now lives.
  PROSE
end

relate :rel_the_glassfall_caused_signal_famine, :caused, :the_glassfall, :signal_famine do
  prose <<~PROSE
    Communication infrastructure collapsed, leaving surface settlements and ring habitats in #{elapsed :the_glassfall, :the_rekindling} of fragmented survival: the Signal Famine. Communities that had belonged to one connected civilization developed separate laws, practices, and repair traditions. When sustained contact returned, those differences had to be negotiated rather than erased; the #{ref :tempered_accord, "Tempered Accord"} now carries part of that work.
  PROSE
end

relate :rel_the_glassfall_caused_the_shear, :caused, :the_glassfall, :the_shear do
  prose <<~PROSE
    The same break that scattered the habs filled the orbital lanes with wreckage. Trailing debris from the cracking ring settled into a turbulent, resonance-distorted band between atmosphere and orbit — the #{ref :the_shear, "Shear"} — which has been the system's most dangerous and most lucrative salvage ground ever since.
  PROSE
end

relate :rel_the_glassfall_caused_kaleidos_echo_rivers, :caused, :the_glassfall, :kaleidos_echo_rivers do
  prose <<~PROSE
    When the ring broke, its #{encyclopedia_ref :ringglass, "ringglass"} rained across Kaleidos and settled into the planet's crust and waterways, still holding the faint imprint of the transmissions it had once carried. Those buried fragments surface through the #{ref :kaleidos_echo_rivers, "Kaleidos Echo Rivers"}.
  PROSE
end
