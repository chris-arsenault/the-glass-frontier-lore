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
end
