faction :displacement_council do
  name "Displacement Council"
  path "player/npcs/factions/displacement-council.md"
  tags :governance, :resonance, :danger
  prominence :recognized

  prose <<~PROSE
    A neutral containment order born from the #{ref :displacement, "Displacement"} refugee crisis. The Council maintains #{ref :bloom_zones, "Bloom Zone"} containment cordons, provides humanitarian support to displaced communities, and serves as a trusted mediator precisely because they refused to take sides during the Bitter Reach.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Origin"
    The Council formed around 2358 CE from Bloom refugees who organized first for advocacy — demanding settlement rights, resource access, recognition — and then evolved into something the system needed more: a dedicated containment force. The people who'd lost their habs to the Bloom turned out to be the ones best equipped to contain it.

    Neutrality was written into the founding charter from day one. The #{ref :bloom_coalition, "Bloom Coalition"} had just fractured into the Bitter Reach, and the founders watched cooperation die because factions used the crisis for political leverage. The Council's charter explicitly prohibits taking sides in inter-faction disputes. Containment requires everyone's cooperation. You can't maintain cordons if half the system won't talk to you.

    The first leader burned out quickly in the early chaos — the job was impossible at that scale with those resources. #{future "Oram Sells"} became the second First Threshold, held the position for eleven years, and built the Council into what it is today. #{ref :dern_talish, "Dern Talish"} is the fourth.
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
