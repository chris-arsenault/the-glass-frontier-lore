encyclopedia :minder do
  name "Minder"
  summary "A minder is the person answerable for one piece of running elven machinery — a lift, a lung, a water engine — keeping it fed, clean, and content by accumulated observation. The machine outlives every explanation of it; the minder's log is the working substitute."
  kind :role
  subkind :community_duty
  status :complete
  topics :"ring-era", :"social-structure", :household
  prevalence :common
  appears_when any: { place: [:sealed_hab, :urban, :yard] }

  descriptive_identity(
    attire: "Working clothes with one formal touch — the minder's sash, band, or pin that marks " \
            "who to fetch when the machine changes its sound — and pockets arranged around the " \
            "log book, which goes everywhere the minder goes.",
    tools: "The log is the office: generations of dated observations, feedings, moods, and " \
           "remedies in a dozen hands, bound and rebound. Beside it, the machine's own kit — " \
           "brushes, gauges, the offering can of whatever the machine consumes.",
    manner: "Attentive to the machine the way a herder is attentive to weather, and proprietary " \
            "about it in front of strangers. A minder says 'she' or 'he' or a personal name, " \
            "reports moods with a straight face, and is right often enough that the habit spreads."
  )

  cue "Someone in working clothes with a marked sash stands beside the humming elven lift, head tilted, listening to it the way a parent listens to a sleeping child's breathing."
  cue "A thick rebound log sits chained by the machine housing, its pages carrying the same daily observations in a dozen different hands across generations."
  affordance "The minder knows the machine's normal — its sounds, appetites, and moods across seasons — and can say 'that noise is new' with an authority no visiting specialist can match, which makes the log and its keeper the first consult for any work near the machine."
  pressure "When a machine changes behavior, the minder compares the current sound, feeding, and season with earlier entries before admitting a repair. Visiting specialists must enter their work and its result in the same log."
  variation "Great machines — a settlement lung, a span counterweight — carry salaried minders with apprentices and deputies; a neighborhood water engine is minded by whoever inherited the log, between other work."
  variation "Minding runs in families in the older habs, and a machine's log doubles as the family's chronicle, with marriages and deaths noted in the margins beside the feedings."

  prose <<~PROSE
    Every settlement built on ring bones runs on machines that outlived their makers. A lift that has worked for three hundred years, a lung that breathes for a district, a water engine humming in a basement older than the town above it — the #{encyclopedia_ref :elves, "elven"} systems keep working, and each one has a minder: the person answerable for it, marked by sash or band, carrying the log. The office is old enough that its shape is the same everywhere. The minder feeds the machine what it consumes, keeps it clean on its schedule, listens to it daily, and writes down what they observe in the log their predecessor kept before them.

    The log is the working instrument. A running elven machine responds to care in ways its minders can document and use — this feeding schedule holds the hum steady, that cleaning order precedes the good season, this noise arrives before that fault — and a good log holds generations of such observations in a dozen hands. Specialists compare their theories with that record before work begins and enter the result afterward. District rules give the minder authority to require both steps.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Standing and Succession"
    A minder's authority covers the machine: everything touching it passes the minder first, from a repair crew's tools to a festival's decorations on the housing. The great machines — settlement lungs, span counterweights — carry salaried minders with deputies and apprentices, and their logs are civic documents copied to the archive. A neighborhood water engine is minded between other work by whoever holds its log, with the same right to inspect work and halt an unfamiliar intervention.

    Succession is the handing of the log. An apprentice earns it by matching the machine's normal from memory — sound, feed, mood, season — and the day the log changes hands the district takes note, because the machine is about to be listened to by newer ears. Old minders retire into consultation and are fetched back for any noise the log calls new.
  PROSE
end
