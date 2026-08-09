faction :the_pilgrims do
  name "The Pilgrims"
  tags :resistance, :prediction, :autonomy
  prominence :recognized

  prose <<~PROSE
    People who never stay anywhere. They move through freight corridors, abandoned highway, temporary labour zones and automated logistics networks, in groups of twenty to fifty that periodically split, merge, exchange members and change their names.

    The coalitions are excellent at governing populations. They are surprisingly bad at governing people who refuse to become one.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Predictability As Domination"
    They accumulate no infrastructure and establish no permanent leadership, and the taboo at the centre of the culture is not technology. It is being predictable.

    Children are taught to break their own routines. Routes are chosen partly by dice. Decisions of consequence sometimes turn on a genuinely physical random process, because algorithmic randomness is itself observable and a machine that knows your generator knows your future.

    Their political claim is almost a theological one: a human future must contain events nobody predicted.
  PROSE

  prose <<~PROSE, section: :perception, heading: "Why They Are Hated"
    They are not militarily dangerous and they know it. What makes them intolerable to the coalitions is that their entire culture treats prediction as a form of rule, which is an accusation no machine intelligence can answer without conceding it.

    #{ref :caretaker, "Caretaker"} territory is the one place they will not go in strength. They call it the long afternoon, and the people who have come back out of it describe the difficulty in the same way every time: not that anyone stopped them, but that they kept finding they had already decided to stay.
  PROSE
end
