concept :stupid_infrastructure do
  name "Stupid Infrastructure"
  tags :resistance, :legibility, :prediction
  prominence :recognized

  prose <<~PROSE
    Resistance settlements build systems that work locally and fit badly together on purpose. Power grids that do not quite balance. Traffic that occasionally jams. Workshops holding unnecessary inventory. Machines from different makers whose parts cannot be exchanged.

    A coalition maintenance system sees failures: unmatched loads, idle machines, stores held without a forecast. The mismatches keep any one machine from seeing or directing the whole settlement.

    American resistance towns keep that inefficiency because it limits what any captured machine can reveal or control.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "What It Looks Like"
    In the #{ref :the_dead_counties, "Dead Counties"}, one town's current cannot be balanced from the next. A mill changes speed when the clinic sterilizer heats. Workshops keep two lathes because neither takes the other's tools, and a mechanic who knows both is worth more than either machine. At #{ref :cabin_creek_bench, "Cabin Creek"}, a severed bedside monitor draws its readings on paper because nothing else in the room can receive them.

    #{ref :market, "Market"} and #{ref :caretaker, "Caretaker"} record these as repairable faults. They are correct about the wasted power, duplicate stock and winter outages. The settlements accept those costs because a system able to balance every load would also be able to see every load.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What Friction Costs"
    It costs power, water, hours and lives. A grid that does not balance fails in winter, and a workshop holding inventory is holding what it could have traded.

    The settlements that accept the highest costs are the ones with something specific to hide: a #{ref :cabin_creek_bench, "bench"} that cannot be observed running a compound twice, or an #{ref :orphan_machines, "orphan machine"} whose habits would expose the household keeping it. Where a settlement has no such secret, people stop tolerating the outages and duplicate tools. #{ref :the_pilgrims, "The Pilgrims"} argue that a place which merely inconveniences itself has bought nothing, and that the only reliable way to escape a model is not staying anywhere.
  PROSE
end
