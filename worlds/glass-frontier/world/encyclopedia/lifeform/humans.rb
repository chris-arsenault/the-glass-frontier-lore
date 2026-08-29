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
      "Humans sit in the middle of every range: medium build, faces and skin in " \
      "every tone, nothing about the species itself worth a second look. What a " \
      "human body shows is where it grew up — gravity, light, and work write " \
      "more on a human than species does.",
    senses:
      "Human senses are the system's baseline, and resonance is not among " \
      "them: without an instrument a human feels nothing of the field. Human " \
      "practice leans on meters, references, and repetition where other " \
      "species trust feel."
  )

  cue "A human has a medium build and no species-level physical feature that outweighs the marks of local gravity, light, and work."
  cue "A human resonance specialist reaches for a calibrated instrument and a reference before offering a reading."
  affordance "Training, meters, repeated comparisons, and tool-building let humans turn resonance into observations despite having no innate sense for it."
  pressure "A human resonance reading is only as good as the instrument and its last calibration, and without one the practitioner has method rather than sensation."
  variation "Human bodies show the gravity, light, and work of the places where they were raised more strongly than a shared species identity."
  variation "Human practitioners respond to their lack of attunement with either pragmatic tool-building or competitiveness with naturally attuned species."

  prose <<~PROSE
    Alien arrivals. Humans reached the Kaleidos system around 2050 CE, during the height of the ring era, and were integrated into the existing multi-species civilization built by the #{encyclopedia_ref :elves, "elves"} and others. They were not the first non-native species to arrive, and their integration was unremarkable by the standards of the time — the ring-era civilization was already multi-species and accustomed to new additions.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Nothing unusual by the standards of the system. Bipedal, medium build, lifespan measured in decades. No natural resonance affinity — humans can learn #{encyclopedia_ref :attunement, "attunement"} through training, but it requires deliberate study and practice in a way that comes intuitively to #{encyclopedia_ref :gnomes, "gnomes"} or came naturally to the elves. A human resonance practitioner is always working harder for the same result, which produces a particular kind of stubborn, methodical expertise that other species sometimes find impressive and sometimes find exhausting.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Humans represent the largest single population in the system, partly because their shorter lifespans mean faster generational turnover and partly because they breed prolifically by the standards of most other species. They are the demographic default — not dominant in any qualitative sense, but numerous enough that human faces are the most common ones in most settlements.

    This ubiquity means humans don't have a strong species-level identity the way some smaller populations do. A human's primary identity is cultural — #{encyclopedia_ref :cultures, "Sithari"}, #{encyclopedia_ref :cultures, "Hab-Worlder"}, syndicate, independent — rather than biological. Most humans don't think about being human very often. There are too many of them for it to feel distinctive.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Neutral. Humans can learn, but the learning curve is steep and the ceiling is lower than it is for naturally attuned species. The best human resonance practitioners are genuinely skilled — but they'll never feel the resonance landscape the way a gnome does, and they know it.

    This produces two reactions: a pragmatic culture of tool-building (if you can't feel it directly, build instruments that translate it into something you can read) and an occasional chip-on-the-shoulder competitiveness with attuned species that is mostly good-natured and occasionally not.
  PROSE
end
