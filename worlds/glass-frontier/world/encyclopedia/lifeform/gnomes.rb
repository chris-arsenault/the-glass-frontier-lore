encyclopedia :gnomes do
  name "Gnomes"
  summary "Gnomes are a sapient species engineered during the ring age with ringglass threaded through bone and nervous tissue, giving them direct sensory attunement to resonance."
  kind :lifeform
  character_role :species
  origin_blurb "Ringglass threads their bones and nerves, making resonance a direct sense that demands lifelong care."
  subkind :sapient_species
  status :complete
  reviewed "2026-03-18"
  topics :species, :resonance, :"ring-era"
  prevalence :uncommon
  available_globally
  registry true
  origin "Bioengineered during the ring era"
  biology "Ringglass lattice threaded through bone and nervous tissue"
  lifespan "About 50–150 years, depending on lattice care and exposure"
  resonance_relation "Direct sensory attunement to local resonance"

  descriptive_identity(
    appearance:
      "Small-framed and unexpectedly heavy, a gnome carries a crystalline " \
      "lattice grown through the bone, and it shows: skin with a faint depth to " \
      "it in strong light, a glimmer in direct starlight, and a hum from the bones at " \
      "rest that the gnome cannot hear and a quiet room can.",
    senses:
      "A gnome feels the local resonance field the way other species feel " \
      "temperature — what ringglass is present, what is running, what is " \
      "tuned wrong, before conscious thought names any of it. The same " \
      "openness makes distorted resonance a physical assault."
  )

  cue "A gnome is small-framed and unexpectedly heavy, with skin that shows a crystalline depth and glimmers in direct starlight."
  cue "At rest, gnomish bones give off a harmonic hum below the gnome's own hearing but audible to others in a quiet room."
  affordance "A gnome can identify nearby ringglass, active frequencies, and bad tuning as immediate sensory experience without reaching for an instrument."
  pressure "Distorted resonance causes sensory overload and lattice microfractures that accelerate aging, making dangerous work a cost measured in years."
  variation "Regular realignment, controlled exposure, and stillwater care can support a long life, while poor care or chronic bad harmonics can cut it drastically short."
  variation "Some gnomes regard attunement as a gift, some as the mark of having been designed for another people's purpose, and many hold both views."

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} engineered gnomes during the ring era to interface with the orbital ring's #{encyclopedia_ref :resonance, "resonance"} systems. #{encyclopedia_ref :ringglass, "Ringglass"} structures grow through gnomish bone and nervous tissue as part of the body rather than as implants.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Gnomes are small-framed and compact, with a density that surprises people who try to pick one up. Their bones contain a crystalline lattice that makes them harder and heavier than baseline organic bone. In strong light, gnomish skin has the depth of light passing through thin glass. Direct starlight makes it glimmer.

    Their nervous system conducts resonance directly. A gnome feels the local resonance landscape the way other species feel temperature — as immediate differences between warm and cold, loud and quiet, harmonic and dissonant. In an unfamiliar room, nearby #{encyclopedia_ref :ringglass, "ringglass"}, active frequencies, and poor tuning register before conscious thought names them.

    At rest, gnomish bones produce a harmonic hum below the gnome's conscious threshold. Other species hear it in quiet rooms and shared beds, especially in the moment before sleep; gnomes themselves do not.

    Gnomish lifespan has unusually high variance. A gnome with good maintenance — regular lattice realignment, controlled resonance exposure, access to stillwater baths — can live #{duration 150}, longer than any other species in the system. A gnome without maintenance, or one with chronic exposure to bad resonance harmonics, might not see fifty. The crystalline components accumulate microfractures over decades that the body can't fully repair, and the rate of accumulation depends almost entirely on environment and care.

    This makes gnomish longevity a class issue. Gnomes in well-funded technical positions — the ones with institutional backing and access to proper maintenance — live long, productive lives. Gnomes in unregulated Shear operations, frontier settlements, or poverty age fast. The difference between a gnome who's 90 and thriving and a gnome who's 90 and dying is usually money.

    Elderly gnomes in either case experience a gradual dulling of their resonance sense as the lattice degrades — the gnomish equivalent of going deaf, and treated with a similar mix of pragmatism and grief.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Ethics"
    Ring-era records establish that the elves engineered gnomes for direct neural work with the ring's resonance systems. Present-day gnomish debate concerns the institutions and expectations inherited from that purpose after the ring's destruction.

    Some gnomes describe attunement as a valued sense. Others emphasize the labor assignments, maintenance costs, and shortened lives attached to an engineered body. The same person may use either account in a different setting, and gnomish organizations disagree over which obligations belong to current governments, ring-era archives, and employers.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Gnomish attunement is immediate sensory experience. Nearby ringglass, active frequencies, and poor tuning register through the lattice before a practitioner names them with theory or an instrument. Tuning, repair, prospecting, containment, and medical work use that perception alongside learned method.

    Resonance disruption also enters through the lattice. In the #{ref :bloom_zones, "Bloom Zones"}, distortion produces sensory overload and prolonged exposure causes microfractures that accelerate aging. Gnomish Displacement Council operatives work under strict exposure limits.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Gnomes live across the system and are especially numerous around major ringglass processing and resonance work. Employment records place them heavily in technical fields and sparsely in political office; gnomish organizations dispute whether access, expectation, or preference produces the pattern.

    Gnomes have no species-level homeland. Their communities form within the cultures and settlements where they live.
  PROSE
end
