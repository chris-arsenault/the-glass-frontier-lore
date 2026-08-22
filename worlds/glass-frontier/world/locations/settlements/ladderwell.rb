installation :ladderwell do
  name "Ladderwell"
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  population 28_000
  population_band "About twenty-eight thousand in the town and its outlying farms"
  role "Market town, water works, and machinery center for eastern Avar"
  setting "Stone benches above a deep sloping aquifer at the foot of the Kyther Range"
  access "Steppe road, regional kite field, and highland pack routes"
  tags :surface, :resonance, :trade, :"structural-freq", :"kinetic-freq"
  prominence :recognized

  prose <<~PROSE
    Ladderwell climbs a set of natural benches near the eastern edge of #{ref :avar, "Avar"}. The lowest streets hold the market yards and kite field. Homes, workshops, and mills occupy the middle benches. The upper town gathers around a covered reservoir fed from a deep sloping shaft. Flights of exterior stairs connect the levels where the road cannot hold a useful grade.

    The deep well allowed the first settlement to remain. Its pump supported the larger town that followed. A continuous chain lifts water from the shaft to settling tanks above the middle bench, then gravity carries it to public taps, wash troughs, fire tanks, workshops, and irrigation lines. The machinery is plain enough to repair locally and large enough that no second town on the steppe keeps a full replacement.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Chain House"
    The chain house is a long stone building wrapped around the pump head. Two kinetic drives turn a linked chain of cups through the shaft. One drive can carry drinking water and the fire tanks. Both are required for mills and field irrigation. Ladderwell keeps them on separate ringglass cuts so a fault in one does not pull the other out of tune.

    Water enters a row of open settling tanks before it reaches the reservoir. Fine crystal carried up from the aquifer falls out there. Workers skim each tank, sound the sediment, and divert any load that holds a strong signal response. Most becomes aggregate. Some carries blurred speech from deeper channels and is sealed for the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} rather than sent through the town's pipes.

    The chain gives advance warning of trouble. A dry bearing clicks. A stretched link changes the beat against the guide. Crystal accumulating in a cup adds a high answer that returns once per circuit. People living near the upper bench hear those changes from bed. A steady chain is part of Ladderwell's night sound.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Move Uphill"
    In 2434 the western wall of the chain house began to settle. The pumps' repeated load had aligned a shallow layer of glass-bearing clay beneath the foundation. Survey stakes showed the slip extending toward the intake; shutting down and rebuilding in place would have left the town on stored water while crews worked above an unstable shaft.

    #{ref :counterweight, "The Counterweight"} proposed moving the whole chain house to firm stone on the next bench. Ladderwell supplied quarry crews, pipe fitters, teamsters, cooks, and every jack the surrounding towns could spare. The #{ref :counterweight_road_rig, "road rig"} carried the building across a temporary steel-and-timber path while a second drive and flexible intake kept water moving.

    The route changed twice. One crib sank at the lower turn. Later, a local hand heard a warning shackle answer between the called counts and stopped the move. Both times the load was settled before anyone argued about the reading. The chain slowed but did not stop. Five days after the first lift, the house stood on the upper bench and the reservoir remained above the fire mark.
  PROSE
  prose <<~PROSE, section: :people, heading: "A Town Built Around Water"
    Pump maintenance is civic work rather than a private trade. Households owe a small water levy and one labor call each year. Most calls involve clearing channels or repairing stair drains. The chain-house roster requires training and pays wages. Anyone on that roster can close a public line when a reading turns unsafe, including an apprentice working their first season.

    The middle benches support millers, smiths, riggers, leather workers, and shops that rebuild machinery for smaller steppe towns. #{ref :blue_step_works, "Blue Step Works"} tests heavy structural gear on isolated load pads. Farmers bring grain and oilseed to the lower yards. Highland carriers bring wool, stone, preserved food, and instrument ore down from the Kyther valleys. Market week fills the exterior stairs with pack frames and handcarts; residents leave the central flights to uphill traffic and descend by the narrower house stairs.

    Large gatherings take place on the old pump foundation, now a paved court crossed by the exposed outline of its former walls. The western edge still moves a little after heavy rain. Surveyors paint the measured shift directly on the paving. Musicians and step dancers use the stable eastern half, and nobody objects when a route keeper interrupts a performance to test the floor.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The moved chain house is working at full capacity. Its temporary intake pipe was replaced with a permanent jointed line designed to tolerate small changes in the lower bench. The town retained copies of the bridge box, pressure sleds, and numbered warning shackles used in the move. They hang in the municipal rigging store and leave only for work that threatens a water line, bridge, mill, or occupied building.

    The abandoned foundation has not settled evenly. Its north corner now returns a clear second tone below the known clay layer. Ladderwell's route keepers have closed one drain and the western third of the court while they determine whether the sound comes from stone, water, or buried construction.
  PROSE
end

relate :rel_ladderwell_in_avar, :located_in, :ladderwell, :avar, since: 2176 do
  prose "#{ref :ladderwell, "Ladderwell"} occupies the eastern steppe where the first Kyther roads reach dependable water."
end
relate :rel_ladderwell_depends_on_resonance, :depends_on, :ladderwell, :resonance do
  prose "Its pumps, foundation surveys, and water sorting all depend on local readings of #{ref :resonance, "resonance"}."
end

moment :ladderwell_pump_house_moved, year: 2434, of: :ladderwell do
  prose "The Counterweight and Ladderwell's own workers moved the operating chain house from a settling clay bed to firm stone on the next bench. Drinking taps and fire storage remained supplied throughout the move."
end
