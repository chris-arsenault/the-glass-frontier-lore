installation :third_latch do
  name "Latchhouse"
  playable_as :chronicle_location
  aka "Third Latch"
  subkind :station
  status :complete
  tags :"ring-hab", :transport, :trade, :household
  prominence :marginal
  omit_facts :maintained_by

  prose <<~PROSE
    Latchhouse is a waiting hall, lodging house, and freight court inside Mareth's third locking cylinder. Gate plans and freight marks call it Third Latch. The round main room follows the latch wall. Sleeping cabinets occupy its upper curve, cook stalls line the stable inner ledge, and freight rests on the broad floor around the central guide shaft.

    The room rolls a fraction during every gate cycle. Furniture hangs from pivoting frames, bowls have weighted bases, and the floor carries parallel grip rails. Regular travelers choose beds by the sound each latch tooth makes through the wall.

    A fifth tone now rises through the sealed base of the guide shaft. Hairline joints have appeared around a circular floor plate beneath the freight scales. The hall remains open, and its tables fill before each test of the gate.
  PROSE

  log "2026-08-21 — Made the residents' name Latchhouse primary while retaining Third Latch on gate plans and freight marks."
end

relate :rel_third_latch_located_in_mareth, :located_in, :third_latch, :mareth, since: 2435 do
  prose "Latchhouse occupies one of Mareth's inhabited locking cylinders."
end


relate :rel_third_latch_located_in_keel, :located_in, :third_latch, :keel, since: 2435 do
  prose "Latchhouse receives travelers from the managed Keel branch that reaches Mareth's holding lanes."
end
