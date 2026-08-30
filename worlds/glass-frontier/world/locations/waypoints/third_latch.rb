installation :third_latch do
  name "Latchhouse"
  summary "Latchhouse is a waiting hall, lodging house, and freight court inside Mareth's third locking cylinder."
  playable_as :chronicle_location
  context_tags :sealed_hab, :dock, :road
  aka "Third Latch"
  subkind :station
  status :complete
  tags :"ring-hab", :transport, :trade, :household
  prominence :marginal
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A round hall following the latch wall inside Mareth's third " \
      "locking cylinder: sleeping cabinets up the curve, cook stalls on " \
      "the stable inner ledge, freight spread across the broad floor " \
      "around the central guide shaft. Furniture hangs from pivoting " \
      "frames, bowls sit on weighted bases, and grip rails run parallel " \
      "across the floor, because the whole room rolls a fraction with " \
      "every gate cycle.",
    activity:
      "Travelers wait, sleep, and eat through the gate's rhythm — the " \
      "tables fill before each test — and regulars claim their cabinets " \
      "by the sound each latch tooth makes through the wall, leaving " \
      "newcomers the curve where the working teeth are loudest.",
    hazards:
      "Everything set down on the floor migrates toward the guide shaft " \
      "as the room rolls; only the cook stalls' ledge stays put. Under " \
      "the freight scales, hairline joints now trace a circular plate in " \
      "the floor, and a fifth tone rises through the sealed base of the " \
      "shaft while service carries on above it."
  )

  prose <<~PROSE
    Latchhouse is a waiting hall, lodging house, and freight court inside Mareth's third locking cylinder. Gate plans and freight marks call it Third Latch. The round main room follows the latch wall. Sleeping cabinets occupy its upper curve, cook stalls line the stable inner ledge, and freight rests on the broad floor around the central guide shaft.

    The room rolls a fraction during every gate cycle. Furniture hangs from pivoting frames, bowls have weighted bases, and the floor carries parallel grip rails. Regular travelers choose beds by the sound each latch tooth makes through the wall.

    A fifth tone now rises through the sealed base of the guide shaft. Hairline joints have appeared around a circular floor plate beneath the freight scales. The hall remains open, and its tables fill before each test of the gate.
  PROSE

  log "2026-08-21 — Made the residents' name Latchhouse primary while retaining Third Latch on gate plans and freight marks."

  gm_note :appears, "Regulars pick their sleeping cabinet by which latch tooth they can hear through the wall, and they have had first choice for years. Anyone booking on arrival takes what is left, which is the curve where the working teeth are loudest."
  gm_note :complicates, "The whole round room rolls a fraction on every gate cycle, so freight, spilled drink and anything set down on the floor migrates toward the guide shaft. The cook stalls on the inner ledge are the only surface in the hall that stays put."
  gm_note :triggered_by, "Anyone who looks under the freight scales finds hairline joints tracing a circular plate in the floor, with the fifth tone rising through the sealed base of the shaft beneath it. Service continues over the top of it and the tables fill before every test of the gate."
end

relate :rel_third_latch_located_in_mareth, :located_in, :third_latch, :mareth, since: 2435 do
  prose "Latchhouse occupies one of Mareth's inhabited locking cylinders."
end


relate :rel_third_latch_located_in_keel, :located_in, :third_latch, :keel, since: 2435 do
  prose "Latchhouse receives travelers from the managed Keel branch that reaches Mareth's holding lanes."
end
