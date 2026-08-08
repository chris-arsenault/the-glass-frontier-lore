faction :shear_compact do
  name "Shear Compact"
  path "player/npcs/factions/shear-compact.md"
  tags :salvage, :ringglass, :trade, :governance
  prominence :recognized

  prose <<~PROSE
    The system's regulatory body for #{ref :the_shear, "Shear"} salvage operations. Not an enforcement agency — a standards board. The Compact sets safety requirements, certifies operators, maintains forecasting services, and issues fines when people cut corners. It has no armed enforcement arm. Its authority comes from the fact that most people, at this point, recognize the value of not repeating what happened at #{ref :pyre, "Pyre"}.
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

relate :rel_shear_compact_regulates_the_shear, :regulates, :shear_compact, :the_shear, since: 2383 do
  prose "The Compact exists to regulate the #{ref :the_shear, "Shear"} — charting working zones, certifying operators, and trying to make a lethal industry survivable."
end
relate :rel_shear_compact_regulates_ratters, :regulates, :shear_compact, :ratters, since: 2383 do
  prose "That includes the #{ref :ratters, "ratters"}, the independent crews it would rather license than chase, with uneven success."
end

# --- history (moments) ---
moment :shear_compact_formed, year: 2383, of: :shear_compact do
  prose "The Compact formed out of the #{ref :bloom_coalition, "Bloom Coalition"}'s emergency response: salvage operators who had spent the Contested Reach competing lethally found themselves cooperating on containment logistics, and realized shared safety standards would have prevented some of the disasters that led to the Bloom. #{ref :shardfall, "Shardfall"} was the political catalyst — proof that unregulated Shear work endangers everyone — and the Bloom proved the consequences could be civilizational. The charter borrowed the Coalition's neutrality provision and structured mediation."
  effects { set :shear_compact, standing: :active }
end
