encyclopedia :species do
  name "Species"
  summary "The Kaleidos system is home to six documented sapient species shaped by alien arrival, ring-era engineering, or disputed local origins."
  kind :lifeform
  subkind :overview
  status :draft
  reviewed "2026-03-18"
  topics :species
  prevalence :common
  available_globally
  registry true

  log "2026-08-22 — Classified as a reference article because it is the species registry, not a species in the world."

  prose <<~PROSE
    The Kaleidos system is home to multiple intelligent species. This is unremarkable to its inhabitants. The origin of this diversity is debated: accelerated divergent evolution driven by #{encyclopedia_ref :resonance, "resonance"}, deliberate bioengineering by the ring-era elves, independent alien arrival, or some combination. The honest answer is that nobody knows for certain, and most people don't think about it much.

    All known species are roughly bipedal and person-shaped.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Species Registry"
    | Species | Origin | Resonance Relationship |
    |---------|--------|------------------------|
    | #{encyclopedia_ref :elves, "Elves"} | Native | Deeply attuned; primary ring-era resonance scientists |
    | #{encyclopedia_ref :humans, "Humans"} | Alien | Learned through training and instruments |
    | #{encyclopedia_ref :orcs, "Orcs"} | Alien | Read most readily through material stress |
    | #{encyclopedia_ref :gnomes, "Gnomes"} | Engineered | Directly sensed through ringglass-threaded biology |
    | #{encyclopedia_ref :fae, "Fae"} | Engineered or extensively modified | Coherence aids help maintain bodily form |
    | #{encyclopedia_ref :dwarves, "Dwarves"} | Alien | Fine signal vibration is legible through touch |
  PROSE
end
