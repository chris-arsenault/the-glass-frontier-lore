installation :juyan_register_house do
  name "Juyan Register House"
  aka "册库", "the stack"
  tags :governance, :legibility, :resistance, :water
  prominence :recognized

  prose <<~PROSE
    Four fired-brick halls and a well of their own at #{ref :juyan, "Juyan"}, holding something over ninety thousand admitted pieces of #{ref :memory_ceramics, "memory ceramic"}: statutes, examination papers, household registers, engineering manuals, court rulings and classical texts. Floors, benches, coffers and lids are fired clay or salt-glazed brick. Every fitting in the building can be taken out and baked, and most of them have been.

    #{ref :bao_qiuyan, "Bao Qiuyan"} keeps the intake bench in the north hall, which is where a courier's load stops and #{ref :entry_into_the_register, "admission"} begins. The reading rooms are at the other end of the building and the two ends have separate water cards.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Salt Lock And The Stack"
    A piece enters through a double-doored vestibule floored with a salt bed that two staff turn daily, and waits there six days off the western run, twelve if it came in wet. The bed is weighed morning and evening; a gain in the salt is a piece still giving up moisture, and the count restarts.

    In the bays beyond, pieces stand on edge, sixteen to a coffer, and each coffer's lid is luted shut with a salt paste that dries to a smooth grey skin. When the humidity behind a lid rises, the skin crazes into flat-sided plates with open joints, so a breached coffer can be picked out from the door of a bay without a lamp and without opening anything.

    The stack is measured in coffer-lengths and none are free. An admission goes into a bay by displacing the piece the register ranks lowest, and what comes out goes to the outer store, where the salt bed is turned weekly and the lids are checked at the same interval.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Squeeze Room"
    One long room at the south end, shuttered through the day: the lapping bench with its iron plate and grit jars, the paper press, the ink pounces on their hooks, and forty feet of drying line. #{ref :the_squeeze, "Squeezes"} are taken at night, when the plate loses less to the air, and the room's water is boiled off before the morning shift opens the door.

    Sheets are filed in the room next to it, by admission number and face number, in bound albums with struck-through lines where a sheet has been withdrawn. The albums are what readers work from. A reader who asks to see the piece itself files the request with the bench.
  PROSE

  log "2026-08-09 — The coffer lids are sealed with salt paste that crazes into flat-sided plates, taken from photographs of a dry lake bed's salt polygons: the failure mode had to be visible across a dark room, so the seal was given a cracking pattern rather than an instrument."
end
