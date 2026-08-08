incident :the_glassfall do
  name "The Glassfall"
  path "player/history/events/the-glassfall.md"
  tags :catastrophe, :origin
  prominence :mythic
  date "2140 CE"
  prominence_xrefs ["lattice-proxy-synod"]

  prose <<~PROSE
    In 2140 CE, the orbital rings broke.

    It wasn't gradual. It wasn't a slow decline that people saw coming and argued about until it was too late. One day the rings were there — the same crystalline halo that had encircled Kaleidos since before anyone alive could remember — and then they weren't. The cascading failure took hours, not days. By nightfall, the sky was full of falling glass.

    The ring didn't vanish. It broke apart — enormous sections cracking free and drifting into new orbits, trailing debris. Many of these fragments were self-sustaining habitats, and they survived intact enough to keep their populations alive. But the connections between them severed. The integrated system that had made the ring a single civilization became hundreds of isolated fragments, each suddenly on its own.

    On the surface of Kaleidos, the damage was different. Debris rained down as showers of crystal fragments and dust — dangerous, but not extinction-level. The real destruction was systemic. The rings had been the backbone of the colony's infrastructure: power distribution, climate regulation, communication, orbital logistics. All of it, gone.
  PROSE
  prose <<~PROSE, section: :cause, heading: "The Cause"
    Nobody knows. Not with certainty.

    The prevailing theory is sabotage — some kind of internal attack that triggered a structural cascade. The evidence for this is mostly negative: the rings were engineered to survive natural stresses far beyond anything Kaleidos's orbit could produce. Something deliberate had to have initiated the failure.

    Who did it, and why, is the subject of over two centuries of speculation, investigation, and increasingly entrenched disagreement. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} maintains classified archives from the ring-era custodian AIs that might contain answers. Whether they've found anything and aren't sharing, or genuinely don't know, is itself a source of tension.

    Most people have stopped expecting an answer. The Glassfall is history now — the kind that shapes everything but that nobody alive experienced firsthand. It matters the way an earthquake matters: not as a mystery to solve, but as the reason the landscape looks the way it does.
  PROSE
end

# --- what the Glassfall caused (the consequences that define modern Kaleidos) ---
relate :rel_the_glassfall_destroyed_the_glass_frontier, :destroyed, :the_glassfall, :the_glass_frontier do
  prose <<~PROSE
    The ring did not vanish — it shattered. Enormous sections cracked free and drifted into new orbits, and what had been one continuous structure became the #{ref :the_glass_frontier, "Glass Frontier"}: hundreds of surviving habs, a growing debris field, and the raw material for most resonance technology. The integrated machine was destroyed; the archipelago it left behind is where everyone now lives.
  PROSE
end

relate :rel_the_glassfall_caused_signal_famine, :caused, :the_glassfall, :signal_famine do
  prose <<~PROSE
    What followed was worse than the event itself. Communication infrastructure collapsed, plunging settlements — surface and ring habs alike — into roughly sixty years of fragmented, disconnected survival: the Signal Famine. Communities that had been one interconnected colony became separate cultures. Surface settlements diverged from each other; sealed ring habs evolved in ways nobody could have predicted — some keeping the old technology with eerie fidelity, others reinventing themselves entirely — and the other worlds in the #{ref :kaleidos_system, "system"} carried on alone. When contact was finally re-established, those differences had to be negotiated rather than erased, a negotiation that — through the #{ref :tempered_accord, "Tempered Accord"} — is in many ways still ongoing.
  PROSE
end

relate :rel_the_glassfall_caused_the_shear, :caused, :the_glassfall, :the_shear do
  prose <<~PROSE
    The same break that scattered the habs filled the orbital lanes with wreckage. Trailing debris from the cracking ring settled into a turbulent, resonance-distorted band between atmosphere and orbit — the #{ref :the_shear, "Shear"} — which has been the system's most dangerous and most lucrative salvage ground ever since.
  PROSE
end

relate :rel_the_glassfall_caused_echo_rivers, :caused, :the_glassfall, :echo_rivers do
  prose <<~PROSE
    When the ring broke, its #{ref :ringglass, "ringglass"} rained across Kaleidos and settled into the planet's crust and waterways — still holding the faint imprint of the transmissions it had once carried. Those buried, half-audible fragments of pre-Glassfall signal are the #{ref :echo_rivers, "Echo Rivers"}.
  PROSE
end
