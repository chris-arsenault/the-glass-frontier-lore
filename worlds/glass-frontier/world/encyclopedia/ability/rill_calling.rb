encyclopedia :rill_calling do
  name "Rill Calling"
  summary "Rill Calling is the herding technique used in Perch and the terraced water towns. Callers tap a herd's registered tone and a route phrase into irrigation pipes, guiding trained animals between pastures, streets, and household gates."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Calling to Rill Calling; the name fixes the practice to the water lines that carry its route phrases."
  topics :ecology, :household, :training, :resonance
  prevalence :uncommon
  appears_when all: { place: [:garden] }
  function "Moves trained herd animals through streets, terraces, and gardens with calling tones carried by the irrigation network"

  descriptive_identity(
    signs: "The caller kneels at a standpipe with the two tapping rods, sounds " \
           "a herd's calling tone and a destination phrase, and somewhere " \
           "across the terraces a flock lifts its heads together and starts " \
           "walking the water line.",
    effect: "The pipes carry a tapped pitch through the whole irrigation " \
            "network, clean and far past any voice's reach; a trained herd " \
            "follows its own tone through streets and terraces, turning at " \
            "the junctions where the phrase directs, and arrives at the gate " \
            "the caller named.",
    limits: "Calls follow the connected pipe map, and every herd must be " \
            "trained to a registered tone. Dead pipe legs, closed junctions, " \
            "and unfamiliar rods break the route or confuse the animals."
  )

  prose <<~PROSE
    In #{ref :perch, "Perch"} and the terraced water towns, the #{encyclopedia_ref :rill_households, "rill lines"} carry a tapped pitch through streets, terraces, and gardens. Herd animals learn one household tone from weaning. A caller kneels at a standpipe with paired rods, taps that tone, then adds a destination phrase naming each junction turn. Flocks and dairy strings follow the connected pipes to the called gate, where someone counts them through.

    The same office registers a herd's tone and the marks clipped into its ears. Tones retire with the herd line, and the register serves as a local count of both animals and owners. Callers learn the pipe grammar through standpipe apprenticeship and practice first with household herds that know their rods. Pasture movements follow the water stewards' calendar because a closed junction or dry pipe leg also closes the droving route. Herd calls share the pipes with household knocking-talk, so callers wait for a gap before tapping a route phrase.
  PROSE

  cue "The caller kneels at the market standpipe, taps a tone and three junction turns — and across the terraces a dairy string lifts its heads together and starts down the water line, unaccompanied, correct."
  cue "At dusk the gates fill in sequence down the valley as each household calls its animals home through the pipes, the evening's overlapping phrases timed politely to the gaps in the knocking-talk."
  affordance "A trained caller can move and sort several households' herds through the irrigated terraces with two rods and a standpipe."
  pressure "Pasture access follows the water schedule: a closed junction or dead pipe leg removes the corresponding droving route until the stewards reopen it."
  variation "Perch's full grammar — tones, junction phrases, registered calls — is the craft's deep form; smaller water towns run simpler two-phrase systems, and the high terraces' goat lines answer taps relayed up three lifts of pipe."
  variation "Calling tones are registered beside ear-mark clips and inherited with the herd. Older households retire a finished line by tapping its tone through the pipes once at the funeral hour."
end
