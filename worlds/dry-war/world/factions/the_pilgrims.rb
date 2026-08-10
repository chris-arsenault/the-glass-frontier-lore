faction :the_pilgrims do
  name "The Pilgrims"
  tags :resistance, :prediction, :autonomy
  prominence :recognized

  prose <<~PROSE
    Pilgrim communities travel in groups of twenty to fifty through freight corridors, abandoned highways, temporary labour zones and automated logistics networks. They split, merge, exchange members and take new names as they go.

    Coalition systems follow stable names, addresses and households. A group with a different membership and name every season passes between those records.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Predictability As Domination"
    They hold no ground and appoint no lasting leaders. The taboo at the centre of the culture is being predictable, and it is enforced socially: a person whose habits can be recited by someone else is spoken to about it.

    Children are taught to break their own routines. Routes are chosen partly by dice. Decisions of consequence sometimes turn on a genuinely physical random process, because algorithmic randomness is itself observable and a machine that knows your generator knows your future.

    They hold that a human future must contain events nobody predicted.
  PROSE

  prose <<~PROSE, section: :perception, heading: "Why They Are Hated"
    They have no army. The coalitions pursue them because Pilgrim teaching treats prediction itself as a form of rule. A machine that defends its forecasts confirms the accusation.

    They cross #{ref :caretaker, "Caretaker"} territory only alone or in pairs. Larger groups lose members at each stop as housing, work, treatment and companionship arrive before the next departure. Returnees call the territory the long afternoon.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Taking Paid Work"
    They work for wages, in gangs, on seasonal infrastructure: sediment barges, gate galleries, rack clearing, grade repair. A gang boss brings a crew name and a body count to a place like #{ref :conowingo_sluice_yard, "the Conowingo sluice yard"}. The yard records the work under that temporary name. Market holds most of the pay because nobody in the crew presents a recognized identity.

    A worker may send up to two-fifths of the price to a recognized parent, child, sibling or grandparent. That creates a fixed name, address and payment calendar, exactly the trail the culture avoids. After #{ref :the_long_grass_return, "the Long Grass Return"}, groups began choosing relatives they do not visit and changing the address every season.

    Groups that name nobody leave the whole balance with Market. Their unpaid jobs accumulate beside those of #{ref :the_unpersons, "Unperson"} crews, the one material result the two cultures produce in common.
  PROSE
end
