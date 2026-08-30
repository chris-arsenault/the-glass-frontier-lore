encyclopedia :species do
  name "Kaleidos Species Registry"
  aka "Species"
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
    Six documented sapient species live in Kaleidos, and mixed-species settlements predate the Glassfall. Ring-era and early-colony records identify separate alien arrivals, elven bioengineering, and older native populations. The fae record remains disputed, and no surviving account connects every species to one origin.

    All six species are roughly bipedal and person-shaped. The registry below records the origin and resonance relationship supported by current archives.
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
