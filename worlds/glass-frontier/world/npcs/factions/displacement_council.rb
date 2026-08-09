faction :displacement_council do
  name "Displacement Council"
  path "player/npcs/factions/displacement-council.md"
  reviewed "2026-03-19"
  tags :governance, :resonance, :danger
  prominence :recognized

  log "Settled: a neutral containment order, focused on maintaining Bloom Zone cordons. Trusted by all factions because it stayed out of the Bitter Reach, and stretched thin as a result."

  question "Internal tensions: the containment mission against members who want to reclaim their original homes. How thin can the Council stretch before something breaks?"

  prose <<~PROSE
    A neutral containment order born from the #{ref :displacement, "Displacement"} refugee crisis. The Council maintains #{ref :bloom_zones, "Bloom Zone"} containment cordons, provides humanitarian support to displaced communities, and serves as a trusted mediator precisely because they refused to take sides during the Bitter Reach.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Operations"
    **Containment.** The Council's primary mission. Cordon stations around every known #{ref :bloom_zones, "Bloom Zone"}, crewed by rotating teams who monitor the zones' boundaries and deploy damping buoys when expansion threatens. The containment technology is based on #{ref :liras_wall, "Lira's Wall"} — #{ref :stillwater, "stillwater"} resonance dampers that calm the cascade frequencies along zone boundaries. Each buoy represents #{ref :stillwater, "stillwater"} that the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} wishes were storing history instead of holding back reality tears.

    **Humanitarian.** The Council still supports displaced communities — settlement integration, resource advocacy, cultural preservation for Bloom diaspora populations.

    **Recruitment.** The Council draws from Bloom survivors, #{ref :tuners, "Tuners"} willing to work in extreme resonance conditions, and #{ref :fae, "fae"} whose spatial dislocation management skills translate directly to Bloom Zone operations. #{ref :gnomes, "Gnomes"} are valuable for calibration but strictly exposure-limited.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Tensions"
    The Council is stretched thin. The zones are expanding slowly. The stillwater supply for damping buoys depends on the Conclave's willingness to provide it — a willingness that is real but grudging. New zones appear in unpredictable locations. The #{future "Fracture"}'s Bloom manifestations are outside the Council's operational range.

    The Council's neutrality is its greatest asset and its greatest constraint. Trusted by everyone, controlled by no one, funded by voluntary contributions from factions that could stop contributing at any time. The Accord's humanitarian provisions support the Council formally, but "formal support" means budgets subject to political negotiation.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    #{ref :dern_talish, "Dern Talish"} leads. Containment holds. The zones have not contracted.
  PROSE
end

relate :rel_dc_maintains_bloom_zones, :maintains, :displacement_council, :bloom_zones, since: 2384 do
  prose "The Council's whole purpose is the #{ref :bloom_zones, "Bloom Zones"}: cordoning them, watching them, and holding the line that keeps the distortion from spreading."
end
relate :rel_dc_maintains_liras_wall, :maintains, :displacement_council, :liras_wall, since: 2384 do
  prose "It maintains #{ref :liras_wall, "Lira's Wall"} — the containment system the cordons are built around — as its single most important piece of infrastructure."
end

# --- history (moments) ---
moment :displacement_council_formed, year: 2380, of: :displacement_council do
  prose "Born from the #{ref :displacement, "Displacement"} — Bloom refugees who first organized for advocacy (settlement rights, resource access, recognition) and turned out to be the people best equipped to contain the thing that had displaced them. Neutrality was written into the founding charter from day one: the founders had just watched the #{ref :bloom_coalition, "Bloom Coalition"} strain as factions used the crisis for leverage, and they prohibited the Council from ever taking sides. You cannot hold cordons if half the system won't talk to you."
  effects { set :displacement_council, standing: :active }
end
moment :displacement_council_takes_cordons, year: 2384, of: :displacement_council do
  prose "It formalized as a standing containment order and took the physical Bloom cordons over from the #{ref :bloom_coalition, "Bloom Coalition"}. The first generation of Thresholds came straight from the Coalition's field-command leads. The first burned out fast — the job was impossible at that scale — and #{future "Oram Sells"} became the second First Threshold, held it eleven years, and built the Council into its modern form. #{ref :dern_talish, "Dern Talish"} is the fourth."
end
