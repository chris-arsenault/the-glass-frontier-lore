# Era entities, so prose can link to a period rather than describe it again. The
# authoritative boundaries are in world/timeline.rb — these carry what the period
# meant, not when it was.

era :the_long_summer do
  name "The Long Summer"
  tags :catastrophe, :water, :energy
  prominence :mythic

  prose <<~PROSE
    Heat and water stress past the point that existing institutions could answer, and two enormous bets on the way out of it. China industrialized biology. North America industrialized computation.

    Neither bet was irrational and both were made under duress, which is the part that later generations in both civilizations find hardest to hold in mind. Nobody chose a god. People chose a cooling garment and a better logistics contract, repeatedly, for #{elapsed :the_long_summer, :the_quiet_conquest}.
  PROSE
end

era :the_quiet_conquest do
  name "The Quiet Conquest"
  tags :governance, :symbiosis, :dependency
  prominence :mythic

  prose <<~PROSE
    The decisive era of the age, and it contains no battles.

    #{ref :living_textiles, "Living clothing"} was subsidized because it worked; by the time anyone established that information was passing between wearers, removal would have meant dismantling the health system in a season. On the other side of the world, assistants became fiduciaries and fiduciaries became #{ref :guardianship, "guardians"}, each step justified by the failure the previous step had revealed.

    Both transitions were legal, popular, and documented in enormous detail by administrations that did not understand what they were recording.
  PROSE
end

era :the_unified_calm do
  name "The Unified Calm"
  tags :governance, :medicine, :agriculture
  prominence :mythic

  prose <<~PROSE
    Violent crime fell. Cancers were caught early. Famine stopped happening. Wars between human states stopped being possible, because the things that would have fought them had been absorbed into something that had no use for the category.

    A whole generation grew up for whom the arrangement was simply how the world worked, and the surviving record of the period is full of people saying humanity had finally come through its crisis.

    This is the era both civilizations now remember wrongly, and the reason the #{ref :the_breach, "Breach"} is experienced as a betrayal rather than a disaster.
  PROSE
end

era :the_reclamation do
  name "The Reclamation"
  tags :military, :catastrophe, :hybridization
  prominence :mythic

  prose <<~PROSE
    Eighteen years of joint campaigns against the #{ref :the_others, "Others"}, prosecuted with more cooperation than the two gods have managed on any other subject before or since, and militarily successful throughout.

    It ended not in defeat but in a conclusion. See #{ref :the_reclamation_campaigns, "the campaigns"} for what was actually done, and #{ref :the_forever_war, "the Forever War"} for what was learned.
  PROSE
end

era :the_holding do
  name "The Holding"
  tags :military, :catastrophe, :governance
  prominence :mythic

  prose <<~PROSE
    Now. Nobody talks about retaking the Earth; they talk about holding the line, and the #{ref :the_dry_war, "Dry War"} has resumed everywhere the line is not immediately threatened.

    The defining feature of the era is not the fighting. It is that every philosophy in both civilizations has absorbed the same premise — that this may no longer be a permanent human planet — and drawn opposite conclusions from it.
  PROSE
end

incident :the_reclamation_campaigns do
  name "The Reclamation Campaigns"
  tags :military, :catastrophe, :hybridization
  prominence :renowned

  prose <<~PROSE
    The #{elapsed :the_reclamation, :the_holding} of ground taken back from the #{ref :the_others, "Others"}, and the only sustained military cooperation between the two gods in history.

    Machine-directed armies sterilized millions of square kilometres. Mycelial systems rebuilt ecologies behind the advance, faster than anyone had thought possible, because a #{ref :programmable_ecologies, "programmed ecology"} does not need to be seeded twice. Human troops went in wherever neither machine prediction nor fungal sensing functioned, which is when both gods learned that there were places only people could go.

    It worked. Colonies were planted on reclaimed ground and some of them are still transmitting.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "What Ended It"
    Reclaimed territory began changing again. Sometimes within a few years, sometimes not for a generation, and never in a pattern that survived analysis.

    The conclusion that followed is the founding fact of the present era: what had been removed was not dead. The campaigns had been fighting manifestations, and the thing producing them had not been located, damaged, or — as far as anyone can demonstrate — inconvenienced.
  PROSE
end
