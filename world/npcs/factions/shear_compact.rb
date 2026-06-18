faction :shear_compact do
  name "Shear Compact"
  path "player/npcs/factions/shear-compact.md"
  tags :salvage, :ringglass, :trade, :governance
  prominence :recognized

  prose <<~PROSE
    The system's regulatory body for #{ref :the_shear, "Shear"} salvage operations. Not an enforcement agency — a standards board. The Compact sets safety requirements, certifies operators, maintains forecasting services, and issues fines when people cut corners. It has no armed enforcement arm. Its authority comes from the fact that most people, at this point, recognize the value of not repeating what happened at #{ref :pyre, "Pyre"}.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Origin"
    The Compact formed in 2358 CE, directly from the #{ref :bloom_coalition, "Bloom Coalition"}'s emergency response. Salvage operators who'd spent the Contested Reach competing lethally found themselves cooperating on containment logistics and realized that shared safety standards would have prevented some of the disasters that led to the Bloom. The founding charter includes a neutrality provision and a structured mediation process — borrowed from what worked during the Coalition.

    #{ref :shardfall, "Shardfall"} was the political catalyst. The Compact exists because Shardfall proved that unregulated Shear operations endanger everyone, and the Bloom proved that the consequences can be civilizational.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Certification.** Operators who want to work the Shear legally carry a Compact certification. The process involves equipment inspection, crew competency assessment, and compliance with extraction limits. Certification doesn't guarantee safety — it guarantees minimum standards.

    **Forecasting.** The Compact maintains a Shear weather service: debris tracking, resonance tide prediction, drift event monitoring. The service is frequently wrong. It is also the best available, and everyone uses it while complaining about it.

    **Mediation.** Salvage claim disputes go through the Compact's mediation process before escalating to the #{ref :tempered_accord, "Tempered Accord"}. The process is bureaucratic, slow, and universally preferred to the Contested Reach's alternative of settling claims with weapons.

    **Fines.** The Compact can fine operators for safety violations. The fines are meaningful enough to deter casual corner-cutting and small enough that determined violators pay them as a cost of business. #{ref :coremark, "Coremark"} doesn't bother with certification at all, operating entirely outside the Compact's framework.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Compact is the Accord's proof of concept. Before the Accord existed, the Compact demonstrated that emergency cooperation could become permanent regulation. Its charter became the legal template for the Accord's governance provisions. Its mediation process became the model for the Accord's dispute resolution.

    It is also, increasingly, tested. Ringglass demand is growing. The Compact's extraction limits slow supply. Someone is always making the argument that safety standards are too conservative — the same argument #{ref :coremark, "Coremark"} made before Pyre, in different words, from different mouths. "That's what they said about Pyre" still works as a response. It won't work forever.
  PROSE
end
