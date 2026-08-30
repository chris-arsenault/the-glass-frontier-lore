encyclopedia :wake_counting do
  name "Wake Counting"
  summary "Wake Counting is a vessel-recognition skill that identifies an approach from the rhythm it leaves in household water tanks. A counter with a palm on the family tank names the ship, the load, and the mood of the docking before the hab's own instruments post the arrival."
  kind :ability
  subkind :technique
  status :complete
  topics :"ring-hab", :navigation, :household, :training
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  function "Identifies approaching vessels and their condition from wake rhythms carried in a hab's water"

  descriptive_identity(
    signs: "The counter stands at the household tank with one palm flat on the metal and the " \
           "other hand tapping the count against a thigh, eyes unfocused, then names a ship " \
           "the way a keeper names a footstep on the stair.",
    effect: "Every hull moves a hab's water its own way — drive pulse, docking rhythm, the " \
            "particular slosh of its mass and trim — and the tanks carry the pattern through " \
            "the settlement ahead of any announcement. A practiced counter reads vessel, " \
            "load, and approach quality from the family tank.",
    limits: "The skill is local twice over: a counter knows the ships of their own routes and " \
            "the voice of their own tanks, and a stranger's vessel earns only the honest call " \
            "of 'heavy, steady, and new to me.'"
  )

  prose <<~PROSE
    A hab's water is one connected body, and everything that moves the hab moves it. An approaching vessel announces itself in the tanks — drive pulse, braking rhythm, the slosh signature of its particular mass and trim — and wake counting is the settled skill of reading the announcement. Counters learn at the household tank the way keepers learn a hive's hum: palm flat on the metal, count tapped against the thigh, the family's regular ships learned one by one until each has a name the hand knows before the head does. On the water-linked settlements — Perch's pipe households, Eleven's shared shafts, the #{encyclopedia_ref :rill_households, "rill households"} everywhere — the skill is as ordinary as reading, and dinner is put on when the supply run's wake enters the tank, a gallery's width of piping ahead of the docking bell.

    The craft's fine grain is condition reading. A known ship arriving off its usual rhythm is news — heavy means cargo, ragged means trouble, slow-and-careful means something aboard that minds being jostled — and dock crews with a counter in the family get their staging word early and act on it. Ward wardens keep a courteous fiction of relying on instruments while posting the watch the moment the tank-corner regulars at the tavern go quiet in unison, and the regulars know they are being read, and count anyway, and the arrangement suits everyone.
  PROSE

  cue "At the kitchen tank someone stands with a flat palm on the metal and unfocused eyes, then says 'the ore run, heavy, half a shift out' and goes back to chopping."
  cue "The tavern's tank-corner regulars go quiet in the same breath, and across the room the ward warden reaches for the watch board."
  affordance "A counter reads arrivals through the hab's own plumbing — vessel, load, and approach quality, a gallery's width ahead of the docking bell — which gives households, dock crews, and wardens a working head start on every arrival the counter knows."
  pressure "The knowledge is local twice over — these ships, these tanks — so the counter's confident call fails exactly when it matters most: the unfamiliar hull, the changed trim, the ship coming in wrong in a way its own rhythm hides."
  variation "Water-linked settlements treat counting as household literacy taught at the family tank; dry-piped habs keep one good counter at the cistern house as a minor civic office."
  variation "Counters trade ship-rhythms between habs in a tapped notation, and a well-traveled counter's repertoire of distant hulls is bar-room entertainment with occasional operational value."
end
