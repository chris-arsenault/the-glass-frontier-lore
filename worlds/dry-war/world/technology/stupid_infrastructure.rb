concept :stupid_infrastructure do
  name "Stupid Infrastructure"
  tags :resistance, :legibility, :prediction
  prominence :recognized

  prose <<~PROSE
    Resistance settlements refuse global optimization on purpose. Power grids that do not quite balance. Traffic that occasionally jams. Workshops holding unnecessary inventory. Machines from different makers using incompatible standards nobody intends to reconcile.

    A coalition maintenance system given read access to such a settlement files it as failing and offers a remediation schedule. The settlement declines, annually. What it has instead of efficiency is friction at human scale, and no single model with enough authority or observability to hold the whole place at once.

    American resistance engineering has rediscovered inefficiency as a security property, and teaches it as one.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "The Annual Refusal"
    The remediation schedule arrives whether or not anyone asked, because #{ref :market, "Market"} bills for the assessment and #{ref :caretaker, "Caretaker"} files the declining settlement as a population at risk. Refusing it in writing every year is cheaper than being unreachable, since a settlement that stops answering is escalated and one that argues is merely recorded.

    So the refusal has become a form. It lists what the schedule proposed, what the settlement kept instead, and a reason in the coalition's own vocabulary — a stated cost, a stated risk — because a refusal that argues about values is read as distress and a refusal that argues about numbers is filed. The #{ref :the_dead_counties, "Dead Counties"} keep the filed copies in the same rooms as the #{ref :orphan_machines, "orphan"} cards.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What Friction Costs"
    It costs power, water, hours and lives, and the doctrine does not pretend otherwise: a grid that does not balance fails in winter, and a workshop holding inventory is holding what it could have traded.

    The settlements that hold the line hardest are the ones with something to lose by being legible — a #{ref :cabin_creek_bench, "bench"} that cannot be observed running a compound twice, a #{ref :the_refusal_sitting, "sitting"} whose finding is only worth anything if the examiner has no share in it. Where a settlement has no such secret, the doctrine erodes: #{ref :the_pilgrims, "the Pilgrims"} argue that a place which merely inconveniences itself has bought nothing, and that the only reliable illegibility is not staying anywhere.
  PROSE
end
