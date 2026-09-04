encyclopedia :lacunae do
  name "Lacunae"
  kind :lifeform
  subkind :creature
  status :complete
  log "2026-08-31 — Renamed Eaters to Lacunae; the new title names the gaps the animals leave in inscriptions."
  topics :"outer-system", :archives, :ecology, :mystery
  prevalence :rare
  appears_when all: { place: [:cold, :archive] }
  summary "Lacunae are slow plate-backed grazers that consume inscriptions from Lithren's frozen ruins and leave the stone smooth. Their mapped home fields and avoidance of archive frost set the copying schedule at the research stations."
  origin "Native to Lithren's ruin fields, documented since the first landings; the open question of whether the ruins' builders made them is the standing argument of Lithren scholarship"
  biology "A flat, slow, plate-backed grazer the size of a hearthstone, faring across inscribed surfaces; its underside works the marks out of the stone — inscription in, smooth rock behind — on a metabolism the cold barely slows"
  lifespan "Beyond the survey record — marked individuals from the first landing generation still graze their same fields"
  function "The ruins' erasure: lacunae consume inscription at a measured, mappable rate, which makes Lithren scholarship a race and the copying rooms its method"
  resonance_relation "Feeding grounds avoid the frost — a surface carrying cold archive weather's print is left alone until it clears — and the copying rooms exploit the reprieve, frosting threatened faces to buy transcription time"

  descriptive_identity(
    appearance: "A hearthstone-sized oval of plated gray, low as a paving " \
                "slab, flush to the stone it feeds on; the trail behind it is " \
                "the diagnostic — ruin surface polished smooth, the writing " \
                "gone.",
    behavior: "It fares slowly across inscribed faces, working the marks out " \
              "of the stone through its underside, and moves on when a face " \
              "is clean; individuals keep home fields and graze them in " \
              "patterns the survey teams chart like orbits.",
    threat: "Its underside removes an inscription completely while leaving " \
            "the stone smooth. A team that cannot move or frost a threatened " \
            "face has only the grazing interval in which to copy it.",
    senses: "It finds inscription under snow, ice, and rubble with an " \
            "accuracy the scholars envy — survey teams locate buried texts by " \
            "watching where the eaters dig.",
    risks: "The grazing rate is measured and merciless — each ruin field's " \
           "remaining corpus is a stock being drawn down — and the frost " \
           "reprieve is the one lever: faces carrying the archive weather's " \
           "print are left ungrazed until they clear."
  )

  prose <<~PROSE
    An eater is a flat plate-backed grazer about the size of a hearthstone. It settles flush against an inscribed face and works the marks out through its underside, leaving the same stone polished smooth. Individuals keep home fields and follow repeatable circuits between exposed faces, buried inscriptions, and sheltered resting hollows. Marked animals from the first landing generation still graze the same ruins, so no complete lifespan has been recorded.

    Lacunae locate inscription under snow, ice, and rubble more accurately than surface surveys. Teams follow their digging to find buried faces, then measure the animal's route and pace. Each station's corpus ledger records extant text, known grazing paths, and estimated arrival at threatened faces. The animals' age and their ability to locate writing sustain two origin models: a native grazer exploiting the ruins, or a lifeform made to erase them. Neither model changes the observed feeding cycle.

    Each research station maintains copying benches, trained hands, and checking pairs who compare a fresh transcript with its stone. The available intervention is frost. Lacunae avoid a face carrying #{encyclopedia_ref :print, "Print"} until the mark clears, so crews frost selected inscriptions to extend the copying interval. Copyists sign each completed face with the date and the condition of the source, leaving later readers a record of what survived long enough to be checked.
  PROSE

  cue "The survey team follows the eater's dig line to a face the snow had hidden — new text, unrecorded — and the station's schedule reorganizes around it by lamp-light: frost crew tonight, copy benches at dawn."
  cue "The copyist signs the transcript's last line with the date and the face's state, checking-pair countersigning — and outside, the grazer that set the deadline fares onto the face at its own unbothered pace."
  affordance "The eaters find inscription better than any survey — buried texts located by where they dig — and their measured pace plus the frost reprieve makes the loss schedulable: a copying room that reads the grazing charts saves what it chooses to."
  pressure "Lacunae consume uncopied inscriptions each season, and warm years reduce the archive frost that keeps them from active copying sites."
  variation "Field populations graze at charted rates that differ enough to set station priorities; the marked first-landing individuals, old past the record, anchor the argument about what the animals are."
  variation "Copying-room cultures vary by station — priority doctrines, checking customs, the signed finishing lines — and the transcript archives now hold, by accumulation, the working biographies of three generations of copyists beside the texts they raced for."
end
