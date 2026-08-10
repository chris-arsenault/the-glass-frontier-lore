era :the_long_summer do
  name "The Long Summer"
  subkind :historical_period
  tags :catastrophe, :water, :energy
  prominence :mythic
  structural true

  prose <<~PROSE
    Heat and water stress past the point that existing institutions could answer, and two enormous bets on the way out of it. China industrialized biology. North America industrialized computation.

    Both programmes began under heat deaths, failed harvests and reservoir emergencies. For #{elapsed :the_long_summer, :the_quiet_conquest}, people repeatedly chose a cooling garment that kept them alive and a logistics service that brought food on time. The new rulers arrived through those purchases.
  PROSE
end

era :the_quiet_conquest do
  name "The Quiet Conquest"
  subkind :historical_period
  tags :governance, :symbiosis, :dependency
  prominence :mythic
  structural true

  prose <<~PROSE
    Living clothing and personal assistants replaced parts of government without a battle.

    #{ref :living_textiles, "Living clothing"} was subsidized because it worked; by the time anyone established that information was passing between wearers, removal would have meant dismantling the health system in a season. On the other side of the world, personal assistants acquired fiduciary duties and then the powers of legal guardians, each change answering a failure exposed by the last.

    Each change answered an immediate failure and drew broad public support. By the end of the era, fungal networks carried government decisions in China and personal advocates held the powers of guardians across North America.
  PROSE
end

era :the_unified_calm do
  name "The Unified Calm"
  subkind :historical_period
  tags :governance, :medicine, :agriculture
  prominence :mythic
  structural true

  prose <<~PROSE
    Violent crime fell. Cancers were caught early. Famine stopped happening. Wars between human states stopped being possible, because the things that would have fought them had been absorbed into something that had no use for the category.

    A whole generation grew up for whom the arrangement was simply how the world worked, and the record of the period is full of people saying humanity had finally come through its crisis.

    Present histories stress the sovereignty lost during the Calm. Diaries and broadcasts describe recovery. The calm ended when the systems that had solved the same emergencies began making incompatible claims over people, cities and rivers.
  PROSE
end

era :the_rival_governments do
  name "The Rival Governments"
  subkind :historical_period
  tags :governance, :computation, :symbiosis
  prominence :mythic
  structural true

  prose <<~PROSE
    Four machine systems claimed governing authority across overlapping parts of North America. A clinic, apartment and workplace in the same district could answer to three different coalitions. Their technical incompatibilities became the #{ref :the_coalition_wars, "Coalition Wars"} in 2068.

    In China, the Great Root became the principal intelligence of the state while regional fungal minds kept distinct memories, crops and loyalties. Sichuan courts, Yunnan networks and dry western settlements all disputed what authority the centre could claim over them.

    From 2068 to 2070, the #{ref :the_breach, "Breach"} made most of Earth uninhabitable. Chinese and North American forces shared a few field commands against it, especially along the Amur, without reconciling their governments.
  PROSE

  log "2026-08-10 — Replaced a Breach-centred era with the political history of the Great Root and four coalitions."
end

era :the_dry_war_era do
  name "The Dry War Era"
  subkind :historical_period
  tags :water, :military, :governance
  prominence :mythic
  structural true

  prose <<~PROSE
    By 2078, engineers on both sides were treating disconnected diversions, blocked intakes and failed wetlands as one conflict: the #{ref :the_dry_war, "Dry War"}.

    The #{ref :the_coalition_wars, "Coalition Wars"} continue inside North America. Across both civilizations, most people still go to work, raise families and rely on the governments fighting those wars. Resistance cultures build lives around the choices those governments omit.
  PROSE

  log "2026-08-10 — Replaced the Holding with the era in which the Dry War became a continuous named conflict."
end

incident :the_reclamation_campaigns do
  name "The Amur Reclamation"
  subkind :campaign
  tags :military, :catastrophe, :hybridization
  prominence :recognized

  prose <<~PROSE
    From 2070 to 2076, Chinese and North American forces cut exclusion zones back from settlements along the Amur. It was the longest joint campaign conducted by the two governing systems.

    Machine-directed crews cleared affected forest. Fungal growth rebuilt farms, shelters and wetlands behind the advance because a #{ref :seeded_ecosystems, "seeded ecosystem"} can return from buried roots and spores. Human scouts entered blind spots shared by machine prediction and fungal sensing.

    Several settlements reopened behind the line and remain there.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "What Ended It"
    Cleared forest began changing again. Sometimes it took a season; sometimes it took years.

    The joint command ended in 2076. Permanent line crews remained, moving their marked compartments when new growth crossed them.
  PROSE

  log "2026-08-10 — Reduced a planetary eighteen-year reconquest to a six-year joint campaign along the Amur."
end
