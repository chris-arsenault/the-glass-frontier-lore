encyclopedia :humans do
  name "Humans"
  summary "Humans are the most numerous sapient species in Kaleidos, descended from alien arrivals around 2050 CE and dependent on training and instruments to perceive resonance."
  kind :lifeform
  character_role :species
  origin_blurb "Numerous and adaptable, humans rely on learned skill and instruments rather than an innate resonance sense."
  subkind :sapient_species
  status :complete
  reviewed "2026-03-18"
  topics :species
  prevalence :common
  available_globally
  registry true
  origin "Alien arrivals around 2050 CE"
  biology "Medium build; no unusual system-specific physiology"
  resonance_relation "No natural affinity; attunement requires training and instruments"

  descriptive_identity(
    appearance:
      "Humans have medium builds, faces and skin in every tone, and bodies that " \
      "show the gravity, light, and work of the places where they were raised.",
    senses:
      "Human senses are the system's baseline, and resonance is not among " \
      "them: without an instrument a human feels nothing of the field. Human " \
      "practice leans on meters, references, and repetition where other " \
      "species trust feel."
  )

  cue "A human has a medium build and no species-level physical feature that outweighs the marks of local gravity, light, and work."
  cue "A human resonance specialist reaches for a calibrated instrument and a reference before offering a reading."
  affordance "Training, meters, repeated comparisons, and tool-building let humans turn resonance into observations despite having no innate sense for it."
  pressure "Human resonance work depends on calibrated instruments and documented references; practitioners state the device and its last calibration with the reading."
  variation "Human bodies show the gravity, light, and work of the places where they were raised more strongly than a shared species identity."
  variation "Human practitioners build different tool traditions around meters, reference collections, repeated comparison, and instrument-assisted attunement."

  prose <<~PROSE
    Humans arrived in Kaleidos around 2050 CE, during the height of the ring era, and joined the multi-species civilization of the #{encyclopedia_ref :elves, "elves"} and earlier arrivals. Ring-era civic, trade, and household records include humans within a generation of the first landing accounts.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Humans are bipedal, medium-built, and live for decades. Resonance enters human perception through instruments and trained #{encyclopedia_ref :attunement, "attunement"}. Practitioners learn against calibrated meters, known samples, and repeated observations rather than a species-level resonance sense.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Humans are the largest single population in the system. Their shorter lifespans and generation times contributed to that number after the Famine, and human faces are common in most settlements.

    Census and household records usually place human residents through culture, district, trade, and allegiance. #{encyclopedia_ref :sitharians, "Sitharian"} and #{encyclopedia_ref :hab_worlder, "Hab-Worlder"} identities carry more local information than the species line alone.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Human attunement is learned through deliberate study and practice. Instruments translate resonance into readings the practitioner can compare, while trained attention links those readings to heat, pressure, vibration, and sound. Human schools therefore emphasize calibration, reference collections, and repeatable method.
  PROSE
end
