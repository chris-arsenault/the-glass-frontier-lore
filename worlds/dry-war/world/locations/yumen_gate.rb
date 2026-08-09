installation :yumen_gate do
  name "Yumen Gate"
  aka "玉门关", "the Jade Gate"
  tags :trade, :medicine, :symbiosis
  prominence :recognized

  prose <<~PROSE
    The westernmost of the #{ref :the_gatekeepers, "Gatekeepers"}' staffed crossings, sited on the old Jade Gate road where the #{ref :the_hexi_corridor, "Hexi Corridor"} narrows to a gravel plain and the last irrigation ends. Everything moving west out of the fungal civilization on wheels passes through it, along with most of what moves east.

    The station is four buildings and a wall: an intake hall, a drying shed, a clinic, and the case room where the balance and the #{ref :the_yumen_fount, "worn metal type"} are kept. Nothing on the site is alive except the #{ref :gate_moss, "gate-moss"} plates in the intake hall and the people. The moss grows behind glass in ceramic beds that are fired and replaced every four months.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Eastbound Hall"
    Sixty to ninety travellers arrive from the west each day, while about forty leave it. A westbound crossing takes twenty minutes. Eastbound travellers give up their outer garments at the intake hall and wait at least an hour; anyone carrying living tissue more than two millimetres below the skin may stay in the clinic for weeks.

    Inspectors weigh each garment against brass, swab the neck, wrists and waistband onto gate-moss, then hang it in the dry shed for fifteen minutes and weigh it again. Living cloth sheds more than four grams of water per kilogram. Living fungus spreads across the moss as a wet black stain. When the two answers disagree, #{ref :ma_renqing, "Ma Renqing"} reads the seam wear and the edge of the stain herself.

    Westbound freight leaves in three columns a week. The intake hall fills before each departure with travellers sleeping beside their loads, food sellers walking the queue and inspectors working through midday. The station charges for the plate, the drying shed and each clinic day from a board printed every month. A short crossing inside two days of a convoy costs enough that most travellers arrive early.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Case Room"
    A windowless brick room off the intake hall, kept at low humidity by a salt bed that two staff turn daily. It holds the beam balance, its brass masses in a lined chest, the reference mass sealed under wax, and the trays of type used for the fee board.

    Access is two-key and the keys are held by people on opposite shifts, an arrangement the station adopted after a mass went missing and was found, four days later, in a westbound wheel hub. Nobody was charged. The balance was recalibrated against Jiayuguan and the locks were changed.
  PROSE
end
