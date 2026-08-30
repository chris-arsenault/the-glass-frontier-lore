encyclopedia :orcs do
  name "Orcs"
  summary "Orcs are a sapient ring-era immigrant species whose dense bones, heavy musculature, and high endurance suit structural and kinetic resonance work."
  kind :lifeform
  character_role :species
  origin_blurb "Dense-boned and enduring, orcs read resonance most readily through stressed metal, stone, and glass."
  subkind :sapient_species
  status :complete
  reviewed "2026-03-18"
  topics :species
  prevalence :common
  available_globally
  registry true
  origin "Alien arrivals during the ring era"
  biology "Dense bones, heavy musculature, high endurance and muted pain response"
  lifespan "Comparable to humans, with an earlier peak and steeper decline"
  resonance_relation "Strong material sense; best suited to structural and kinetic work"

  descriptive_identity(
    appearance:
      "Orcs are tall and broad, dense through the bone, with skin in deep " \
      "saturated tones — charcoals, greens, rich earths — that catch light. " \
      "Past their physical prime they tend to stiffen rather than lose mass.",
    senses:
      "Orcish pain response is muted: damage underreports itself, and an orc " \
      "can work through an injury they genuinely have not noticed. What orcs " \
      "read keenly is material under stress — how a loaded seam or a " \
      "ringglass-laced alloy wants to move under their hands."
  )

  cue "An orc is tall and broad, dense through the bone, with skin in deep saturated tones and strong, precisely proportioned features."
  cue "An injured or overexposed orc often reports less pain than the damage warrants and may continue working through a hidden fracture."
  affordance "Orcish endurance and sensitivity to material under stress suit prolonged physical work and structural or kinetic resonance craft."
  pressure "Muted pain hides injury and early resonance exposure, while age brings a steep loss of flexibility after an earlier physical peak."
  variation "Orcs belong primarily to the cultures that raised them and have no single species homeland or cultural center."
  variation "Some orc-majority workshops preserve demanding traditions of repetition and exact standards; other orc workers train in the methods of their local culture and trade."

  prose <<~PROSE
    Orcs arrived from outside Kaleidos during the ring era. Surviving arrival records disagree over their order relative to the human landings, but civic and trade records place established orc households throughout the ring-era system.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Orc physiology combines dense bone, heavy musculature, and efficient sustained effort. Average lifespan is comparable to a human's, with an earlier physical peak followed by a steeper loss of joint flexibility and muscle elasticity. Older orcs often retain mass while becoming stiff and sore.

    Orcish pain response is muted. Damage may register as mild discomfort, allowing an injured person to continue working through a fracture or early resonance exposure. Field medics therefore use inspection and instrument readings instead of asking pain level alone.

    Orcs are tall and broad, with skin in deep saturated tones including charcoals, greens, and rich earths. Individual appearance varies across the cultures and populations of the system.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Stereotype"
    Orcs have no shared species culture or homeland. Communication, art, apprenticeship, and public standing follow the cultures and institutions in which a person was raised. Claims that all orcs speak with one direct register or share one temperament are stereotypes applied across populations with different languages and customs.

    Some orc-majority workshop communities preserve long apprenticeships built on repetition, exact standards, blunt critique, and destruction of work that fails examination. Their metalwork and structurally complex music have reputations beyond those communities. Other orc workers train under local trade practices, and neither method follows from biology.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Orcish resonance sense is strongest through material under stress: the movement of a loaded seam, the response of ringglass-laced alloy, and the vibration a crystal structure carries into the hands. Structural and kinetic practice uses that tactile information directly. Frequency architecture and harmonic modeling remain learned disciplines supported by instruments, shared theory, and collaborators with other sensory strengths.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Orcs live throughout the system without a species-level homeland or cultural center. An orc raised in Sithari belongs to Sithari's culture; an orc raised in a ring hab inherits that hab's customs. Orc-majority neighborhoods and workshops maintain institutions specific to their settlement and trade.
  PROSE
end
