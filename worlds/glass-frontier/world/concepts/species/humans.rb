species :humans do
  name "Humans"
  summary "Humans are the most numerous sapient species in Kaleidos, descended from alien arrivals around 2050 CE and dependent on training and instruments to perceive resonance."
  playable_as :species
  origin_blurb "Numerous and adaptable, humans rely on learned skill and instruments rather than an innate resonance sense."
  subkind :sapient_species
  path "player/concepts/species/humans.md"
  status :complete
  reviewed "2026-03-18"
  tags :species
  prominence :mythic
  registry true
  origin "Alien arrivals around 2050 CE"
  biology "Medium build; no unusual system-specific physiology"
  resonance_relation "No natural affinity; attunement requires training and instruments"

  prose <<~PROSE
    Alien arrivals. Humans reached the Kaleidos system around 2050 CE, during the height of the ring era, and were integrated into the existing multi-species civilization built by the #{ref :elves, "elves"} and others. They were not the first non-native species to arrive, and their integration was unremarkable by the standards of the time — the ring-era civilization was already multi-species and accustomed to new additions.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Nothing unusual by the standards of the system. Bipedal, medium build, lifespan measured in decades. No natural resonance affinity — humans can learn #{ref :resonance, "attunement"} through training, but it requires deliberate study and practice in a way that comes intuitively to #{ref :gnomes, "gnomes"} or came naturally to the elves. A human resonance practitioner is always working harder for the same result, which produces a particular kind of stubborn, methodical expertise that other species sometimes find impressive and sometimes find exhausting.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Humans represent the largest single population in the system, partly because their shorter lifespans mean faster generational turnover and partly because they breed prolifically by the standards of most other species. They are the demographic default — not dominant in any qualitative sense, but numerous enough that human faces are the most common ones in most settlements.

    This ubiquity means humans don't have a strong species-level identity the way some smaller populations do. A human's primary identity is cultural — #{ref :cultures, "Sithari"}, #{ref :cultures, "Hab-Worlder"}, syndicate, independent — rather than biological. Most humans don't think about being human very often. There are too many of them for it to feel distinctive.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Relationship with Resonance"
    Neutral. Humans can learn, but the learning curve is steep and the ceiling is lower than it is for naturally attuned species. The best human resonance practitioners are genuinely skilled — but they'll never feel the resonance landscape the way a gnome does, and they know it.

    This produces two reactions: a pragmatic culture of tool-building (if you can't feel it directly, build instruments that translate it into something you can read) and an occasional chip-on-the-shoulder competitiveness with attuned species that is mostly good-natured and occasionally not.
  PROSE

  gm_note :triggered_by, "Ask a human specialist to read the resonance in a room and they reach for an instrument first. The reading " \
                         "is only as good as that instrument and its last calibration, and without it they can offer method rather than a sense."
  gm_note :appears, "A human NPC pressed on what they are names a city, a crew, or a trade instead. Human faces are the ordinary case in almost every settlement, so the species carries no claim worth making."
  gm_note :complicates, "Set a human practitioner beside a #{ref :gnomes, "gnome"} on the same problem and the human reaches the answer by measurement and repetition. The edge in that exchange is good-natured until someone is judging the work."
end

relate :rel_humans_inhabit_sithari, :inhabits, :humans, :sithari, since: 2050 do
  prose "Humans are the majority on the surface, #{ref :sithari, "Sithari"} chief among their settlements."
end
relate :rel_humans_inhabit_tgf, :inhabits, :humans, :the_glass_frontier, since: 2050 do
  prose "They are spread thickly through the #{ref :the_glass_frontier, "Glass Frontier"} too — arrivals who were integrated into ring society and outlasted the ring."
end
relate :rel_humans_inhabit_glasswake, :inhabits, :humans, :glasswake, since: 2050 do
  prose "Human households form much of Glasswake's mining, repair, and harbor population."
end
