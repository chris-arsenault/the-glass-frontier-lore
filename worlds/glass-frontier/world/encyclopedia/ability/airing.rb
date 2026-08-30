encyclopedia :airing do
  name "Airing"
  summary "Airing is the household skill of reading a room's air before entry: a lamp is lowered through the doorway, its flame is read against the taught color-and-stance ladder, and the verdict is called from the threshold."
  kind :ability
  subkind :technique
  status :complete
  topics :household, :danger, :training
  prevalence :common
  available_globally
  function "Reads air quality from flame behavior — color, stance, and flutter — before entering closed or doubtful spaces"

  descriptive_identity(
    signs: "At the threshold of the closed room, the lamp goes in first — held low, then " \
           "raised through the doorway's height in a slow deliberate arc — and everyone " \
           "watches the flame instead of the dark.",
    effect: "Flame reports air: the taught ladder runs from clean's steady gold through " \
            "the blue edge of leaked volatiles, the tall lazy reach of dead air, and the " \
            "guttering that means the room is breathing something else entirely. The " \
            "reader calls the rung aloud and the call governs.",
    limits: "The flame reads where the flame is, so airing is done through the room's " \
            "heights and corners in the taught order — and the skill's one absolute is " \
            "that a doubtful call closes the door, since the ladder names the airs it " \
            "knows and rooms keep learning new ones."
  )

  prose <<~PROSE
    Closed rooms change while they stand sealed, and the household test for their air is a flame. Airing lowers a #{encyclopedia_ref :ration_lamp, "lamp"} through the doorway, raises it slowly through the opening's height, and reads its color and stance. The ladder is taught with the survival canon in every hab and many surface towns: steady gold is clean; a blue edge is leaked volatiles; the tall lazy flame is dead air that will take a lamp longer than a person; guttering in still air marks an atmosphere outside the known rungs. The reader calls the result aloud — 'gold,' 'blue at the floor,' 'lazy past the lintel' — and the call carries a watch-holder's authority over the door.

    The skill's grammar is thoroughness in the taught order. A room airs at the threshold, the heights, and the corners, because airs stratify — the blue edge pools at the floor while dead air fills from the ceiling — and the classic fatal error the training exists to prevent is the clean reading taken at chest height in a room lying about its floor. Cordon crews and doorwards air with instruments beside the flame and read both; households air with the lamp alone and the discipline of the doubtful call, which closes the door, marks it, and fetches better equipment. Marked doors accumulate readings in chalk — date, rung, reader — and an old sealed section's doorframe is a little archive of every flame that ever asked it anything.
  PROSE

  cue "The lamp goes through the doorway before anyone does, rising slowly through the opening's height, and four people watch the flame with the attention elsewhere given to speeches."
  cue "The sealed door's frame carries a column of chalked readings — dates, rungs, initials — and the newest line is being added before the door swings wider."
  affordance "A lamp and the ladder turn any closed space into a testable one — the call is quick, teachable to children, and standing custom gives the reader's rung the authority of a watch-holder's halt."
  pressure "The flame samples one height and corner at a time, so the taught order must reach the floor, lintel, and stagnant corners; a doubtful rung closes and marks the door for an instrument crew."
  variation "Habs air with the lamp and chalk the frames; cordon services pair flame and instrument and log both, and their manuals defend the redundancy with incident numbers."
  variation "Regional ladders add local rungs — the hot country teaches a shimmer-reading, the garden habs a rung for graft-rot sweetness — and travelers collect the variants the way they collect route stones."
end
