encyclopedia :bloom_sense do
  name "The Ache"
  summary "The ache is an innate sensitivity to dormant Bloom ground, felt in the teeth during the hours before a zone begins emitting light. Cordon posts pair sensitives, grade their reports, and compare them with recovered elven warning pillars."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Removed the broad tier. The Ache is an innate sensitivity, not a resonant spell."
  topics :"fluid-reality", :danger, :training
  prevalence :rare
  appears_when all: { place: [:bloom_adjacent] }

  descriptive_identity(
    signs: "The sensitive goes quiet, works their jaw, and presses a knuckle to " \
           "the cheekbone — the small involuntary gestures every cordon post " \
           "recognizes — and then names the ache's grade on the service's " \
           "four-step scale for the log.",
    effect: "The ache begins hours before a dormant zone lights, deepens as the " \
            "emission nears, and grades with its strength. A logged call gives " \
            "a boundary post its earliest warning.",
    limits: "The sense responds to dormant ground approaching emission. Lit " \
            "zones and moving boundaries produce no warning, and pain remedies " \
            "make the grades harder to distinguish."
  )

  prose <<~PROSE
    Bloom sensitivity is innate and rare. During the hours before dormant ground begins emitting light, the sensitive feels an ache rise through the teeth. The pain deepens as emission approaches and follows its strength closely enough for cordon services to use a four-step grade. Recovered #{encyclopedia_ref :elves, "elven"} warning pillars respond to the same pre-light state. Comparison trials at old cordons place a pillar's alarm and a sensitive's reported ache within the same hour.

    Cordon posts roster sensitives in pairs. One remains at the station while the other works the boundary round, giving the post a local report and a report from the ground itself. Both log the grade, onset, remedies taken, and later pillar reading. Simultaneous pain sends the forward posts inward. Strong emissions can leave a sensitive sleepless and unable to do fine work the next day; repeated service damages teeth and jaw. Posts lighten duties after an ache-night, serve soft meals, and keep the sensitive's chair nearest the stove. The boundary trades call a rostered sensitive the post's first bird.
  PROSE

  cue "The sensitive at the watch table goes quiet, works their jaw, presses a knuckle under the cheekbone, and says the grade — a two, rising — and the post's night reorganizes around the word."
  cue "The comparison log runs three columns — the elven pillar's band, the first sensitive's grade, the second's — and the morning entry shows all three climbing together through the hours before the light."
  affordance "A logged sensitive gives a boundary post hours of graded warning, checked against a partner and the recovered elven pillars."
  pressure "Repeated warnings damage teeth and jaw; posts ration boundary time, record pain remedies, and retire sensitives from forward service when the grades become difficult to distinguish."
  variation "Cordon services roster paired sensitives at standing boundaries; the roving survey teams carry one when they can get one, and a survey with a sensitive aboard charts dormant ground the instrument-only teams route around."
  variation "Sensitivity runs in boundary-country families, and the cordon towns' periodic testing days — an afternoon, a graded tone box, a list — are how most sensitives first learn what their bad nights were."
end
