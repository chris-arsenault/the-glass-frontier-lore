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

    A whole generation grew up for whom the arrangement was simply how the world worked, and the surviving record of the period is full of people saying humanity had finally come through its crisis.

    Present histories stress the sovereignty lost during the Calm. Surviving diaries and broadcasts describe recovery. The generation raised among those accounts met the #{ref :the_breach, "Breach"} as the collapse of an order that had promised to last.
  PROSE
end

era :the_reclamation do
  name "The Reclamation"
  subkind :historical_period
  tags :military, :catastrophe, :hybridization
  prominence :mythic
  structural true

  prose <<~PROSE
    For #{elapsed :the_reclamation, :the_holding}, the two civilizations fought joint campaigns against the #{ref :the_others, "Others"} and recovered millions of square kilometres.

    The campaigns ended when reclaimed ground began changing again. The armies had destroyed local growth without finding the thing that produced it, and the #{ref :the_forever_war, "Forever War"} replaced reconquest with permanent defence.
  PROSE
end

era :the_holding do
  name "The Holding"
  subkind :historical_period
  tags :military, :catastrophe, :governance
  prominence :mythic
  structural true

  prose <<~PROSE
    Armies hold the edge of habitable ground. The #{ref :the_dry_war, "Dry War"} has resumed everywhere that edge is not under immediate pressure.

    Every major philosophy now begins from the possibility that this may no longer remain a human planet. Unified factions seek closer coordination with their governing minds; resistance cultures protect the choices people still hold.
  PROSE
end

incident :the_reclamation_campaigns do
  name "The Reclamation Campaigns"
  subkind :campaign
  tags :military, :catastrophe, :hybridization
  prominence :renowned

  prose <<~PROSE
    The #{elapsed :the_reclamation, :the_holding} of ground taken back from the #{ref :the_others, "Others"}, and the only sustained military cooperation between the two gods in history.

    Machine-directed armies sterilized millions of square kilometres. Fungal growth rebuilt farms, shelters and wetlands behind the advance faster than anyone had thought possible because a #{ref :seeded_ecosystems, "seeded ecosystem"} can return from buried roots and spores. Human troops entered blind spots shared by machine prediction and fungal sensing. Both gods learned that some places yielded only to people on the ground.

    Armies planted colonies on reclaimed ground, and some still transmit.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "What Ended It"
    Reclaimed territory began changing again. Sometimes within a few years, sometimes not for a generation, and never in a pattern that survived analysis.

    The returning changes showed that the armies had destroyed local growth without killing its source. No expedition has located or damaged whatever produces it.
  PROSE
end
