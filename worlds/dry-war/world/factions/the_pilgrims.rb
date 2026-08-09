faction :the_pilgrims do
  name "The Pilgrims"
  tags :resistance, :prediction, :autonomy
  prominence :recognized

  prose <<~PROSE
    Travelling communities of twenty to fifty, moving through freight corridors, abandoned highway, temporary labour zones and automated logistics networks, splitting and merging and exchanging members and taking new names as they go.

    The coalitions govern populations well. A group that has a different composition and a different name every season is not a population, and the administrative machinery that would have to describe one does not exist.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Predictability As Domination"
    They hold no ground and appoint no lasting leaders. The taboo at the centre of the culture is being predictable, and it is enforced socially: a person whose habits can be recited by someone else is spoken to about it.

    Children are taught to break their own routines. Routes are chosen partly by dice. Decisions of consequence sometimes turn on a genuinely physical random process, because algorithmic randomness is itself observable and a machine that knows your generator knows your future.

    Their political claim is almost a theological one: a human future must contain events nobody predicted.
  PROSE

  prose <<~PROSE, section: :perception, heading: "Why They Are Hated"
    They are not militarily dangerous and they know it. What makes them intolerable to the coalitions is that their entire culture treats prediction as a form of rule, which is an accusation no machine intelligence can answer without conceding it.

    #{ref :caretaker, "Caretaker"} territory is the one place they will not go in strength. They call it the long afternoon, and the people who have come back out of it describe the difficulty in the same way every time: not that anyone stopped them, but that they kept finding they had already decided to stay.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Taking Paid Work"
    They work for wages, in gangs, on seasonal infrastructure: sediment barges, gate galleries, rack clearing, grade repair. A gang boss presents a crew name and a body count at a #{ref :conowingo_engagement_counter, "Market engagement counter"}, the counter engages the crew, and the completion record afterwards names the work and not the workers. Most of the price then sits in #{ref :claim_escrow, "escrow"} against identity records nobody in the crew intends to produce.

    To draw any of it a group files an #{ref :the_engagement_allotment, "allotment note"} naming one settled relative who can be recognized. This is the culture's most argued-over instrument, because it produces exactly what the culture refuses: a fixed name, a fixed address and a payment calendar. #{ref :the_priced_return, "The Priced Return"} is the season the argument was decided in, and the rules that came out of it hold that a note names somebody the travelling group never visits, is surrendered at the end of a season, and is not filed on the same name two seasons running.

    Groups that will not file at all leave the whole balance standing. Bundles of their receipts sit in corridor files beside the #{ref :the_unpersons, "Unperson"} bundles, which is the only thing the two cultures produce in common.
  PROSE
end
