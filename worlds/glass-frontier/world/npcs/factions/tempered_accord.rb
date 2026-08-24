faction :tempered_accord do
  name "Tempered Accord"
  summary "The Tempered Accord is the system's mediation framework and set of shared standards, ratified by member settlements in 2423."
  subkind :government
  path "player/npcs/factions/tempered-accord.md"
  reviewed "2026-03-18"
  tags :governance, :diplomacy
  prominence :renowned
  prominence_xrefs ["lattice-proxy-synod", "vantara", "displacement-council", "shear-compact"]
  founded 2423
  mandate "Mediate disputes and maintain shared standards between settlements"
  authority "Reputation, trade access and member enforcement"

  prose <<~PROSE
    The system's governance framework is a mediation structure and a set of shared norms that most settlements have agreed to honor most of the time. The memory of the Bitter Reach gives its members a common reason to preserve it.

    The Accord is barely a decade old, and it has never been tested by a crisis as bad as the ones that made it.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Structure"
    #{embed :accord_shore, :governance}

    Each member appoints a standing delegation and can send additional specialists for a particular dispute. Delegations choose a presiding mediator from a roster accepted by both parties. The permanent secretariat maintains records, schedules hearings, and publishes the standards adopted by member vote. It cannot order a member government to act.

    The Accord relies on member organizations for enforcement. Its sanctions are reputational and economic: expulsion from the framework means losing access to the Compact's mediation, Vantara's trade infrastructure, and the legal recognition that makes inter-settlement commerce possible.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Mediation.** The Accord's core function. When settlements, fabs, or factions have disputes that can't be resolved bilaterally, they bring them to the Accord's mediation process. The process is derived from the Shear Compact's model and is universally considered slow, bureaucratic, and better than the alternative.

    **Standards.** The Accord maintains system-wide standards for resonance safety, trade documentation, salvage certification (via the Compact), and communication protocols. These standards are Sitharian in origin — drafted in Sitharian legal language, reflecting Sitharian institutional assumptions — which is resented by everyone who isn't Sitharian and exploited by everyone who is.

    **Humanitarian.** The Accord's humanitarian provisions, drafted by the Displacement Council, cover refugee rights, containment support, and sovereignty protections — including the hard-won provision that habs can legally refuse contact.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    The Accord is young, fragile, and untested. Its first decade contains no faction that defied a ruling without consequence, no crisis that required action faster than its mediation process allowed, and no dispute whose stakes made reputational sanctions irrelevant. Its records therefore offer no evidence for how the framework would handle those cases.

    #{ref :sithari, "Sithari"}'s influence is structural and resented. The Accord sits in Sithari, uses Sitharian legal language, and was partly designed by Sitharian political thinkers. #{ref :the_continuity, "The Continuity"} supported combatants during the Contested Reach and Bitter Reach while the city retained its formal neutrality. Other governments remember the credit restrictions, freight delays, and institutional pressure that distinction allowed.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Accord's offices remain active, its member provisions remain in force, and no crisis has yet tested the limits identified by its critics. The district staff still maintain the lake and its ducks.
  PROSE

  gm_note :triggered_by, "Players who ask the Accord to make someone act learn the secretariat cannot order a member government. What it can " \
                         "put on the table is a hearing and expulsion, which costs the target Compact mediation, #{ref :vantara, "Vantara"}'s routes, and enforceable contracts."
  gm_note :appears, "Any dispute the party cannot settle bilaterally gets referred here, and the referral itself buys months. Both sides keep trading and arguing while the case sits on the hearing schedule."
  gm_note :complicates, "A hearing needs a presiding mediator both parties accept from the roster, so an opponent can spend the first sessions striking names. The party's evidence waits behind the argument over who reads it."
end

relate :rel_tempered_accord_hq_accord_shore, :headquartered_in, :tempered_accord, :accord_shore, since: 2423 do
  prose "The Accord keeps its standing offices at #{ref :accord_shore, "Accord Shore"}, in a compound separate from the Continuity's executive buildings."
end

# --- history (moments) ---
moment :tempered_accord_ratified, year: 2423, of: :tempered_accord do
  summary "The settlements ending the Bitter Reach ratified the Tempered Accord in 2423."
  prose "Born from exhaustion at the end of the #{ref :the_bitter_reach, "Bitter Reach"}. The #{ref :bloom_coalition, "Bloom Coalition"} had proved cooperation worked; the Bitter Reach proved the system couldn't survive without it; the #{ref :shear_compact, "Shear Compact"} proved emergency structures could become permanent. By the time the fighting stopped the preconditions only needed writing down. Three institutions shaped it: the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} supplied an AI-derived governance model, #{ref :vantara, "Vantara"} the trade provisions, and the #{ref :displacement_council, "Displacement Council"} the humanitarian framework and the trusted-mediator role."
  effects { set :tempered_accord, standing: :active }
end

relate :rel_tempered_accord_regulates_shuttered_habs, :regulates, :tempered_accord, :shuttered_habs do
  prose "Its sovereignty provisions legally permit the #{ref :shuttered_habs, "shuttered habs"} to refuse contact — the hard-won principle, born at Coriolis, that no faction may force entry."
end
