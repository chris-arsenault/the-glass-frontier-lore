encyclopedia :kesh_wallrunner do
  name "Ricochets"
  summary "Ricochets are cat-sized gallery hunters whose coiled tails bank kinetic charge as they run. They spend the charge in one flat, straight leap across an open span, with a low tail hum warning that a leap is ready."
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Runners to Ricochets; the new title names their charged leap."
  topics :ecology, :"kinetic-freq", :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  origin "Ring-hab native stock — gallery climbers documented in the earliest fragment records, spread with hab traffic to most sealed settlements"
  biology "A cat-sized climber with gripping feet and a heavy coiled tail whose lattice banks kinetic-band charge as the animal runs; the stored charge discharges through the spine in one leap that runs flat and straight until spent"
  lifespan "#{duration 15} in a gallery territory; the big old toms with the scarred tails are hab fixtures known by name"
  function "A tolerated commensal: ricochets keep the gallery vermin down, and their leap lines are so reliably straight that hab trades sight along them — the living plumb line, in the galleries' phrase"
  resonance_relation "The tail lattice banks the kinetic band directly — a charged tail hums at the band's low edge, audibly to most people and unmistakably to instruments — and the leap discharges the bank in one flat vector"

  descriptive_identity(
    appearance: "A cat-sized climber in gallery gray, all grip and shoulder, " \
                "with the heavy coiled tail carried high — and, when charged, " \
                "humming a low note the whole corridor learns to place.",
    behavior: "It runs the walls and ceilings of its territory banking charge, " \
              "hunts small vermin on foot, and crosses open spans in the " \
              "charged leap — flat, straight, and as long as the " \
              "tail's bank, landing already running.",
    threat: "A person in the path of a charged leap takes the animal's full " \
            "weight and banked force. A cornered ricochet can discharge the " \
            "same force at close range against a wall or pursuer.",
    senses: "It responds to the kinetic band it banks from, runs farther in " \
            "charged conditions, and becomes quiet ahead of the band's dead " \
            "spells.",
    risks: "A cornered ricochet discharges defensively — the leap taken at a " \
           "wall as a blunt kinetic slap — so hab custom leaves charged " \
           "animals their exits and clear the route beneath a humming ceiling."
  )

  prose <<~PROSE
    A ricochet is a cat-sized gallery climber with gripping feet, heavy shoulders, and a coiled tail that banks kinetic-band charge while the animal runs. As the bank fills, the tail hums at a low audible pitch. The ricochet spends the charge in a flat, straight leap across open gallery space, lands already running, and begins charging again. The distance depends on how long it ran beforehand.

    Ricochets hold territories across several gallery levels. They hunt vermin along ducts and warm service runs, leave scent at the ends of habitual leap lines, and defend den recesses with teeth before spending a charged leap to escape. Hab traffic learns those routes: a humming ceiling clears the likely line, and maintenance crews leave exits open around a cornered animal. Old ricochets become known by scars and by the spans they use.

    The leap is straight enough for riggers to sight along a habitual route when checking a rail, but this is a borrowed use of hunting and travel behavior. The animals also go quiet before kinetic dead spells: tails slacken, hunting stops, and ricochets stay near their dens. Crews compare that gallery-wide change with their instruments and re-check suspended loads.
  PROSE

  cue "The ceiling over the gallery junction hums its low note, foot traffic clears the habitual line, and the ricochet takes the span in one flat stroke, landing already silent and running."
  cue "The old tom crosses its habitual span; the rigger sights along the leap, sees the rail sag below it, and sends for shims."
  affordance "Ricochets keep the galleries' vermin down, their leap lines give the trades a free straightedge, and their going-quiet before kinetic dead spells is early warning the habs have learned to read."
  variation "Gallery ricochets hold indoor territories and hum through charged weather; the dock-country populations bank bigger in the traffic's kinetic wash, and their spans are the ones the children's bets get serious about."
  variation "The old toms' habitual lines become fixtures — named, sighted along, walked around — and a hab whose famous line goes unused for a season knows its ricochet's territory has changed hands before any trap or census does."
end
