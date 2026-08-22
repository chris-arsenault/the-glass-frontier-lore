species :species do
  name "Species"
  article!
  log "2026-08-22 — Classified as a reference article because it is the species registry, not a species in the world."
  subkind :overview
  path "player/concepts/species/species.md"
  status :complete
  reviewed "2026-03-18"
  tags :species
  prominence :mythic
  registry true
  documented_species 6
  common_form "Roughly bipedal and person-shaped"
  origin_theories "Divergent evolution, ring-era engineering and alien arrival"
  custom_fact :largest_population, :humans, type: :entity, label: "Largest Population"

  prose <<~PROSE
    The Kaleidos system is home to multiple intelligent species. This is unremarkable to its inhabitants. The origin of this diversity is debated: accelerated divergent evolution driven by #{ref :resonance, "resonance"}, deliberate bioengineering by the ring-era elves, independent alien arrival, or some combination. The honest answer is that nobody knows for certain, and most people don't think about it much.

    All known species are roughly bipedal and person-shaped.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Species Registry"
    | Species | Origin | Resonance Relationship |
    |---------|--------|------------------------|
    | #{ref :elves, "Elves"} | Native | Deeply attuned; primary ring-era resonance scientists |
    | #{ref :humans, "Humans"} | Alien | Learned through training and instruments |
    | #{ref :orcs, "Orcs"} | Alien | Read most readily through material stress |
    | #{ref :gnomes, "Gnomes"} | Engineered | Directly sensed through ringglass-threaded biology |
    | #{ref :fae, "Fae"} | Engineered or extensively modified | Coherence aids help maintain bodily form |
    | #{ref :dwarves, "Dwarves"} | Alien | Fine signal vibration is legible through touch |
  PROSE
end

relate :rel_species_extends_humans, :extends, :species, :humans do
  prose "#{ref :humans, "Humans"} are one of the system's peoples catalogued here — the largest population, with a neutral relationship to resonance."
end
relate :rel_species_extends_elves, :extends, :species, :elves do
  prose "The #{ref :elves, "elves"} are another — the founding species, vanished, and still the largest gap in the record."
end
relate :rel_species_extends_dwarves, :extends, :species, :dwarves do
  prose "#{ref :dwarves, "Dwarves"} are catalogued here for their tactile reading of fine signal traces in worked material."
end
