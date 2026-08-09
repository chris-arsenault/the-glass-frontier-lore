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
    One long room at the south end, shuttered through the day: the lapping bench with its iron plate and grit jars, the paper press, the ink pounces on their hooks, and twelve metres of drying line. #{ref :the_squeeze, "Squeezes"} are taken at night, when the plate loses less to the air, and the room's water is boiled off before the morning shift opens the door.

    Sheets are filed in the room next to it, by admission number and face number, in bound albums with struck-through lines where a sheet has been withdrawn. The albums are what readers work from. A reader who asks to see the piece itself files the request with the bench.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Readings Sold Outward"
    The house has granted fifteen #{ref :the_face_warrant, "warrants"} since 2084 to parties outside the settlements and spent eleven faces on them, the other four having lapsed unexecuted at the end of their register years. Twelve of the fifteen came from #{ref :market, "Market"} claim offices holding files on plant older than the Breach. The fee is paper and fine grit, which is the whole of the reason the practice exists: the bench runs out of paper several times a year and the couriers cannot bring enough of it for what the reading queue would otherwise consume.

    A warrant is granted against a piece and not against a subject, because what sits on a face is not known until the face is lapped. #{ref :the_pressure_schedule, "Admission 41806"} is the piece the American requests keep arriving for, and it has three faces left of six. The house has refused every request touching a line under an open contested item, and refuses any party whose records come out of #{ref :the_great_root, "the Great Root"}'s archives.

    #{ref :bao_qiuyan, "Bao Qiuyan"} enters the grant, the thickness, the album number and the counterfoil on the piece's line, in the same hand and the same sequence as an ordinary admission.
  PROSE

  log "2026-08-09 — The coffer lids are sealed with salt paste that crazes into flat-sided plates, taken from photographs of a dry lake bed's salt polygons: the failure mode had to be visible across a dark room, so the seal was given a cracking pattern rather than an instrument."
end
