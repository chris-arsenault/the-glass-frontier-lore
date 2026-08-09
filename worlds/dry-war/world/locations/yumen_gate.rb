installation :yumen_gate do
  name "Yumen Gate"
  aka "玉门关", "the Jade Gate"
  tags :trade, :medicine, :symbiosis
  prominence :recognized

  prose <<~PROSE
    The westernmost of the #{ref :the_gatekeepers, "Gatekeepers"}' staffed crossings, sited on the old Jade Gate road where the #{ref :the_hexi_corridor, "Hexi Corridor"} narrows to a gravel plain and the last irrigation ends. Everything moving west out of the fungal civilization on wheels passes through it, along with most of what moves east.

    The station is four buildings and a wall: an intake hall, a drying shed, a clinic, and the case room where the balance and the fee schedule are kept. Nothing on the site is alive except the #{ref :gate_moss, "gate-moss"} plates in the intake hall and the people, and the moss is kept behind glass in ceramic beds that are fired and replaced on a four-month cycle.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Throughput"
    Sixty to ninety travellers a day eastbound, forty westbound, and the difference is the whole economy of the place — a westbound crossing takes twenty minutes and an eastbound one takes as long as the #{ref :the_weighing, "Weighing"} requires, which is never less than an hour and occasionally weeks.

    The convoy schedule sets the pressure. Westbound freight leaves in three columns a week and a traveller who misses a column waits for the next one, so the intake hall queue is longest on the two days before a departure and the inspectors work those days without a midday break. Ma Renqing has held the senior inspector's post for #{elapsed future: "Ma Renqing takes the senior inspector's post at Yumen", about: 9, approx: true} and rules on every contested reading herself.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Case Room"
    A windowless brick room off the intake hall, kept at low humidity by a salt bed that two staff turn daily. It holds the beam balance, its brass masses in a lined chest, the reference mass sealed under wax, and the trays of the #{ref :the_gate_schedule, "gate schedule"}.

    Access is two-key and the keys are held by people on opposite shifts, an arrangement the station adopted after a mass went missing and was found, four days later, in a westbound wheel hub. Nobody was charged. The balance was recalibrated against Jiayuguan and the locks were changed.
  PROSE
end
