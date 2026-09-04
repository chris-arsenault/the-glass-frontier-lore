encyclopedia :ringglass_burrower do
  name "Ringglass Burrower"
  kind :lifeform
  subkind :creature
  status :complete
  log "2026-08-31 — Renamed Glass Burrower to Ringglass Burrower; the title names the material that governs its life."
  topics :ecology, :ringglass, :danger, :mystery
  prevalence :rare
  appears_when all: { place: [:ringglass_rich] }
  summary "Ringglass burrowers are deep-living creatures that tunnel through solid ringglass by softening it ahead of themselves, leaving flute-smooth bores that ring when wind crosses them. A working burrower is heard for seasons at a time and sighted once in a surveyor's career, and glass country maps its bores like caves."
  origin "Survey consensus places the species in deep ringglass; ring-era registers document bore fields but contain no identified organism"
  biology "A softener-borer of the deep sheets whose tunnels anneal smooth behind it; instruments register the working face as a moving cold spot in the structural band"
  resonance_relation "Softens ringglass ahead of itself by a mechanism instruments register as a moving cold spot in the structural band"

  descriptive_identity(
    appearance: "Confirmed sightings describe a segmented, mole-blunt body longer than a " \
                "person, glass-gray and slow, with a head cluster of pale feelers held " \
                "against the working face.",
    behavior: "It works deep, slow, and alone, softening a body-width tunnel through solid " \
              "glass and annealing the walls smooth behind it. Working sound carries " \
              "through the sheet — a patient grinding hum crews learn to sleep through " \
              "and wake to changes in.",
    threat: "The creature avoids voids, warmth, and company with what reads as intent; the " \
            "danger is its work — a new bore under a foundation rewrites the sheet's " \
            "strength, and glass country treats fresh burrower sound the way span " \
            "listeners treat a new note.",
    senses: "It turns away from active resonance work — cutting, singing, heavy tuning — " \
            "days before the work arrives, and the deep crews use singers as repellent " \
            "on that observation alone.",
    risks: "Old bores honeycomb the deep sheets beyond their visible mouths. Surveyors map " \
           "open passages from the flute notes made by wind, then sound the silent ground " \
           "before assigning a load."
  )

  prose <<~PROSE
    Ringglass burrowers tunnel through the great sheets under Avar, in the Kyther roots, and through fused masses in the Shear. A working animal softens ringglass ahead of itself at a moving cold spot in the structural band, advances with a patient grinding hum, and anneals the body-wide bore smooth behind it. Wind across a bore field gives each mouth its own flute note, providing night music to sheet settlements and bearings to their surveyors.

    Confirmed sightings since the Glassfall describe a segmented, mole-blunt body longer than a person with pale feelers at the working face. The bores number in the tens of thousands, and sheet settlements distinguish the hum of a resident animal from a new one. Ringglass burrowers turn away from voids, warmth, one another, and active resonance work. Deep crews cut with a singer working the faces in rotation, while new foundations in bore country begin with a season of loud tuning to move the animal off the site.
  PROSE

  cue "Through the floor of the deep gallery comes a patient grinding hum, slightly nearer than last month, and the crew notes it in the log under the resident's name."
  cue "Evening wind crosses the ridge and the old bore field sings — dozens of flute notes, each mouth its own — and the surveyor on the team sketches the chord."
  affordance "The bores are ready-made deep access anywhere the sheets are old — smooth, stable, annealed passages the surveys map by ear from the wind-song — and the creature's known aversions make loud tuning a reliable fence for foundations and cuts."
  pressure "Every deep project in glass country carries a bore survey and listening watch. A change in the working hum sends the surveyors back across the sheet before the next load is placed."
  variation "Sheet settlements name resident ringglass burrowers and track their hums across generations; the Shear's fused masses carry bores wider than any surface survey has recorded."
  variation "Bore-song surveyors chord mouths by ear on windy evenings and sell the resulting charts beside instrument soundings."
end
