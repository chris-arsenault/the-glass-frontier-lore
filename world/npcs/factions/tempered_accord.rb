faction :tempered_accord do
  name "Tempered Accord"
  path "player/npcs/factions/tempered-accord.md"
  tags :governance, :diplomacy
  prominence :renowned
  prominence_xrefs ["lattice-proxy-synod", "vantara", "displacement-council", "shear-compact"]

  prose <<~PROSE
    The system's governance framework. Not a government — a mediation structure. A set of shared norms that most settlements have agreed to honor most of the time. It holds because the alternative is the Bitter Reach again, and nobody wants that.

    The Accord is four years old.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Origin"
    Born from exhaustion. The #{ref :bloom_coalition, "Bloom Coalition"} proved that cooperation worked. The #{future "Bitter Reach"} proved that the system couldn't survive without it. The #{ref :shear_compact, "Shear Compact"} proved that emergency structures could become permanent. By the time the fighting stopped, the preconditions for a broader framework were already in place — they just needed someone to write them down.

    Three institutions shaped the Accord's architecture: the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} provided a governance model derived from AI custodian outputs, #{ref :vantara, "Vantara"} shaped the trade provisions and logistics standards, and the #{ref :displacement_council, "Displacement Council"} contributed the humanitarian framework and served as trusted mediator.

    Ratified approximately 2365 CE. Signatories include surface settlements, ring habs, and outer-system representatives.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Structure"
    The Accord operates from a district in #{ref :sithari, "Sithari"} — a complex deliberately separated from the Continuity's government buildings. Tranquil. An artificial lake. Ducks. The architectural statement is intentional: this is not a seat of power, it's a place where disputes come to be resolved.

    The Accord is an international body in a national capital — technically independent, practically shaped by proximity. Other settlements wanted the Accord seated somewhere neutral. Sithari argued they had the infrastructure. They were right, and everyone resented them for it.

    The Accord's operations rely on member organizations for actual enforcement. It carries weight because people say it does. The sanctions for violating an Accord provision are reputational and economic — expulsion from the framework means losing access to the Compact's mediation, Vantara's trade infrastructure, and the legal recognition that makes inter-settlement commerce possible.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Mediation.** The Accord's core function. When settlements, fabs, or factions have disputes that can't be resolved bilaterally, they bring them to the Accord's mediation process. The process is derived from the Shear Compact's model and is universally considered slow, bureaucratic, and better than the alternative.

    **Standards.** The Accord maintains system-wide standards for resonance safety, trade documentation, salvage certification (via the Compact), and communication protocols. These standards are Sitharian in origin — drafted in Sitharian legal language, reflecting Sitharian institutional assumptions — which is resented by everyone who isn't Sitharian and exploited by everyone who is.

    **Humanitarian.** The Accord's humanitarian provisions, drafted by the Displacement Council, cover refugee rights, containment support, and sovereignty protections — including the hard-won provision that habs can legally refuse contact.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    The Accord is young, fragile, and untested. Four years of relative stability doesn't prove the framework works — it proves that nothing has broken it yet. Legitimate questions exist about what happens when it is genuinely tested: a faction that defies an Accord ruling and faces no real consequences, a crisis that requires action faster than the mediation process allows, a dispute where the stakes are too high for reputation damage to matter.

    #{ref :sithari, "Sithari"}'s influence is structural and resented. The Accord sits in Sithari, uses Sitharian legal language, and was partly designed by Sitharian political thinkers. The #{ref :sithari, "Continuity"} was a combatant during the Contested Reach and Bitter Reach while the city claimed neutrality. This distinction — the city is neutral, the government is a participant — was technically valid and practically meaningless. The resentment is still live.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Accord holds. The ducks are fine. Whether either condition is permanent remains to be seen.
  PROSE
end

relate :rel_tempered_accord_hq_sithari, :headquartered_in, :tempered_accord, :sithari, since: 2423 do
  prose "The Accord keeps its standing offices at #{ref :sithari, "Sithari"} — convenient, central, and a constant low irritation to a city that would rather not host anyone's authority but its own."
end
