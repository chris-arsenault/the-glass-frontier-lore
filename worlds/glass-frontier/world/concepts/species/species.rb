species :species do
  name "Species"
  subkind :overview
  path "player/concepts/species/species.md"
  status :complete
  reviewed "2026-03-18"
  tags :species
  prominence :mythic
  registry true

  prose <<~PROSE
    The Kaleidos system is home to multiple intelligent species. This is unremarkable to its inhabitants. The origin of this diversity is debated: accelerated divergent evolution driven by #{ref :resonance, "resonance"}, deliberate bioengineering by the ring-era elves, independent alien arrival, or some combination. The honest answer is that nobody knows for certain, and most people don't think about it much.

    All known species are roughly bipedal and person-shaped.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Species Registry"
    | Species | Origin | Resonance Relationship | Status | Entry |
    |---------|--------|----------------------|--------|-------|
    | #{ref :elves, "Elves"} | Native | Deeply attuned; primary resonance scientists | defined | #{ref :elves, "Elves"} |
    | #{ref :humans, "Humans"} | Alien | Neutral; trainable but no natural affinity | defined | #{ref :humans, "Humans"} |
    | #{ref :orcs, "Orcs"} | Alien | Physical/material affinity; feel crystal-metal relationships | defined | #{ref :orcs, "Orcs"} |
    | #{ref :gnomes, "Gnomes"} | Engineered (by elves) | Naturally attuned; part ringglass biology | defined | #{ref :gnomes, "Gnomes"} |
    | #{ref :fae, "Fae"} | Engineered | Dependent; resonance aids maintain coherence | defined | #{ref :fae, "Fae"} |
    | *Merchant species* | Alien | TBD | slot | — |
    | *Resonance-harmed species* | TBD | Harmed by resonance exposure | slot | — |
    | *Native species 2* | Native | TBD | slot | — |
    | *Open* | — | — | slot | — |
    | *Open* | — | — | slot | — |
  PROSE
end

relate :rel_species_extends_humans, :extends, :species, :humans do
  prose "#{ref :humans, "Humans"} are one of the system's peoples catalogued here — the largest population, with a neutral relationship to resonance."
end
relate :rel_species_extends_elves, :extends, :species, :elves do
  prose "The #{ref :elves, "elves"} are another — the founding species, vanished, and still the largest gap in the record."
end
