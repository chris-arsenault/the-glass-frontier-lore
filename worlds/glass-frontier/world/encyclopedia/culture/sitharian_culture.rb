encyclopedia :sitharian_culture do
  name "Sitharian Culture"
  summary "Sitharian culture is the cosmopolitan prestige culture of the system's de facto capital, marked by formal procedure, institutional memory, and measured speech."
  kind :culture
  character_role :culture
  origin_blurb "Sitharian upbringing prizes measured speech, institutional memory, and confidence in formal procedure."
  subkind :regional_culture
  status :complete
  reviewed "2026-03-19"
  topics :"social-structure", :governance, :trade
  prevalence :common
  available_globally
  formal_register "The default language of diplomacy, law and system-wide trade"
  aesthetic "Clean lines, muted natural tones and precise accents"

  descriptive_identity(
    appearance:
      "Raised under open sky and full surface gravity, Sitharians stand and " \
      "move like it — unhurried in large spaces, at ease with distance.",
    attire:
      "Clean lines, layered clothing, muted natural tones with precise " \
      "accents; the fabric is high-quality and the tailoring exact. The " \
      "signal is effortlessness achieved through meticulous effort, and a " \
      "Sitharian repair is meant not to show.",
    manner:
      "Measured cadence and full clause structure even when pressed, " \
      "disagreement conducted through procedure, and the standing assumption " \
      "of being the adults in the room — generously and condescendingly " \
      "applied.",
    hospitality:
      "Formally generous and precisely bounded: invitations name their " \
      "hours, the table is excellent, and a guest's standing can be read " \
      "from how the invitation was worded."
  )

  cue "Sitharian dress uses clean lines, high-quality layered cloth, muted natural tones, and precise accents with repairs meant not to show."
  cue "A Sitharian speaker keeps a measured cadence and full clause structure under pressure, with the concession or refusal carried in a subordinate clause."
  affordance "A recognized Sitharian training or capital posting can open institutional records and establish standing far from the capital."
  pressure "Sitharian help is often competent and generous while carrying an assumption that others could not have managed alone."
  variation "Sitharian factions span conflicting ideologies and governance philosophies while conducting their disputes through shared institutions and vocabulary."
  variation "Travelers who read the room temper the prestige of a capital origin, while those who do not find the same origin closing doors."

  prose <<~PROSE
    The culture that grew from #{ref :sithari, "Sithari"}, the system's de facto capital, and radiated outward. Sitharian identity is the system's prestige culture: cosmopolitan, multilingual, politically connected, and acutely aware of its own significance. Being Sitharian means carrying the weight of the old world — the planet the ring was built around, the city where civilization was first re-established after the Signal Famine, the center that still considers itself the center even as the system outgrows it.
  PROSE
  prose <<~PROSE, section: :aesthetics, heading: "What It Looks Like"
    Sithari visual identity favors clean lines, layered clothing, and muted natural tones with precise accents of color. The aesthetic reads as restrained wealth — nothing ostentatious, everything expensive. Fabrics are high-quality. Tailoring is exact. The signal is effortlessness, achieved through meticulous effort.

    Architecture in the Sithari heartland follows the same principle: engineered crystal and stone, resonance-integrated infrastructure that works seamlessly, public spaces designed to impress through scale and proportion rather than ornamentation. The capital region's buildings are old by post-Glassfall standards — some date to the Rekindling — and the Sithari treat this age as a point of pride.
  PROSE
  prose <<~PROSE, section: :naming, heading: "Naming Conventions"
    See #{encyclopedia_ref :naming_conventions, "Naming Conventions"} for Sitharian naming patterns.
  PROSE
  prose <<~PROSE, section: :language, heading: "Language"
    The Sithari linguistic register is the system's default formal mode. Accord documents are drafted in Sithari conventions. Diplomatic communications follow Sithari patterns. Trade contracts use Sithari legal terminology. This isn't mandated — it emerged naturally from Sithari's political centrality — but it means that anyone who wants to operate in system-level politics learns to speak Sithari, whether they were born to it or not.

    The register favors precision, subordinate clauses, and a measured cadence that non-Sithari speakers sometimes describe as "slow" or "careful." Sithari speakers consider this accuracy. Non-Sithari speakers often find the register frustrating to navigate, particularly in negotiations where cadence and clause structure carry as much weight as the words themselves.
  PROSE
  prose <<~PROSE, section: :values, heading: "Politics"
    Sithari culture contains enormous internal diversity — multiple political factions, governance philosophies, and ideological movements coexist under the cultural umbrella. What the culture provides is not agreement but a shared language for disagreement. Sithari factions fight bitterly, but they fight using the same vocabulary, the same institutions, and the same assumptions about how disputes should be structured.

    The Tempered Accord was substantially architected by Sithari political thinkers. The Accord's strengths — procedural rigor, institutional memory — and its weaknesses — bureaucratic inertia, an assumption of good faith from parties who don't share it — both bear the Sithari stamp. Other cultures have not failed to notice the overlap between the system's governing framework and the political instincts of the people who wrote it.
  PROSE
  prose <<~PROSE, section: :perception, heading: "Perception"
    Other cultures have opinions about the Sithari. The opinions are remarkably consistent:

    - They are competent and they know it.
    - Their default assumption is that they are the adults in the room.
    - They are generous with their expertise and oblivious to the condescension embedded in the generosity.
    - Their formal register is a power tool. Speaking Sithari is playing on Sithari turf.
    - They are, grudgingly, often right about institutional design. This makes the condescension worse, not better.

    Sithari who travel outside the capital region learn quickly that "I'm from the capital" can close as many doors as it opens. The smart ones learn to read the room. Those who don't adapt find their cultural prestige complicates rather than helps.
  PROSE
end
