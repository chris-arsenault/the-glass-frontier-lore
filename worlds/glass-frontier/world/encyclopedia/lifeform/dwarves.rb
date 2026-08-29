encyclopedia :dwarves do
  name "Dwarves"
  summary "Dwarves are a sapient ring-era immigrant species whose compact, heat-steady bodies and sensitive fingertips read fine changes in texture and vibration."
  kind :lifeform
  character_role :species
  origin_blurb "Compact and heat-steady, dwarves read fine vibration and layered material through touch."
  subkind :sapient_species
  status :complete
  topics :species, :materials, :resonance
  prevalence :uncommon
  available_globally
  origin "Alien arrivals during the ring era"
  biology "Compact frame, slow heat exchange, and highly sensitive fingertips"
  lifespan "Usually a little longer than humans"
  resonance_relation "Fine signal-frequency vibration is legible through sustained touch"

  descriptive_identity(
    appearance:
      "A dwarf stands lower and heavier than a human, compact through the chest " \
      "and joints, and slow to flush or shiver when a room runs hot or cold. Up " \
      "close the fingertips are the distinguishing feature: broad and densely " \
      "padded, and kept bare of glove and callus by anyone who reads by touch.",
    senses:
      "Dwarven fingertips read fine texture and vibration through sustained " \
      "bare contact — nothing at a distance, nothing through a glove, and " \
      "nothing the reader has never met before. Heat and cold register " \
      "slowly, so comfort can outlast safety."
  )

  cue "A dwarf stands low and heavy through the chest and joints, with broad, densely padded fingertips kept bare of glove and callus for tactile work."
  cue "A dwarf may remain comfortable in a hot workroom or cold transfer lock while a surface thermometer has already entered the unsafe range."
  affordance "Sustained bare contact lets a trained dwarf separate familiar signal traces from ordinary wear in glass, cloth, metal, or ceramic."
  pressure "Gloves, callus, cold, fatigue, and unfamiliar patterns defeat fingertip reading, while slow heat exchange lets dangerous exposure arrive before discomfort."
  variation "Dwarves have no species homeland and carry the accent, dress, and obligations of the culture that raised them."
  variation "Some dwarves work in trace reading, fine fitting, inspection, or instrument repair, while most work outside those trades."

  prose <<~PROSE
    Dwarves entered the Kaleidos system during the ring era and now live throughout its surface towns and habs. Their bodies retain heat slowly, their hands distinguish very small changes in texture and vibration, and their compact frames tolerate abrupt changes in acceleration well.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Biology"
    A dwarf's fingertips contain dense beds of pressure and vibration receptors. Sustained contact with worked glass, cloth, metal, or ceramic can separate a coherent signal trace from the ordinary noise of wear. The sense has limits. It gives no direction at a distance and cannot identify a pattern the reader has never encountered. Gloves, callus, cold, and fatigue all reduce its precision.

    Dwarven skin exchanges heat slowly. A comfortable body remains comfortable through short exposure to a hot workroom or a cold transfer lock, while a dangerous change can arrive before discomfort becomes urgent. Dwarven crews use timed exposure rules and surface thermometers rather than trusting sensation alone.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Dwarves have no species homeland and belong to the cultures in which they were raised. Their tactile sense is common in trace work, fine fitting, inspection, and instrument repair, but most dwarves work elsewhere. #{ref :tess_orr, "Tess Orr"} uses it at Wash Four to separate route and handling impressions held in repaired cloth.
  PROSE
end
