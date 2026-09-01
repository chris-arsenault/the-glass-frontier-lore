encyclopedia :species do
  name "The Peoples Register"
  aka "Species"
  summary "The Peoples Register records eleven sapient species: six large populations represented throughout the system's censuses and accords, and five smaller populations with their own civic institutions. Its tables summarize documented origins, homelands, and resonance relationships."
  kind :lifeform
  subkind :overview
  status :complete
  log "2026-08-31 — Renamed The Registry to The Peoples Register; the title states its sapient subject plainly."
  reviewed "2026-03-18"
  topics :species
  prevalence :common
  available_globally
  registry true

  log "2026-08-22 — Classified as a reference article because it is the species registry, not a species in the world."
  log "2026-08-31 — Extended with five additional peoples (heshari, kyrri, oruun, trellin, nacre), already load-bearing as Atlas type_of targets."
  log "2026-08-31 — Corrected the delineation: major species / minor sapient species, by population and range rather than recency. The first framing made the minors recently engineered lineages, which contradicted the setting's existing later-emerging species and overloaded the engineered origin; only the majors' table backs character origins."
  log "2026-08-31 — Removed the minors' descent claims entirely (human-descended heshari, dwarven-stock nacre, dated divergences). Minor species have no origin story; origin scholarship stays a majors-only concern."
  log "2026-08-31 — Reframed the minors on the spacefaring pattern (per the Star Wars / Mass Effect treatment of minor species): homeland where the culture runs thickest, diaspora met everywhere, reputation individuals stand on both sides of, and minor-ness as head-count and institutional footprint rather than location. The Range column was wrong for a spacefaring setting and is now Homeland."

  prose <<~PROSE
    Eleven sapient species are documented in Kaleidos, and mixed-species settlements predate the Glassfall. Ring-era and early-colony records identify separate alien arrivals, elven bioengineering, and older native populations. The fae record remains disputed, and no surviving account connects every species to one origin.

    The Peoples Register divides the eleven by population and institutional reach. The six major species anchor system-wide censuses, governments, and accords. Five smaller populations maintain institutions such as Kyther hold councils, outer route-hold libraries, and trellin keeper schools while appearing in mixed settlements throughout Kaleidos. *Minor* describes the Peoples Register's population class, not an individual's status or occupation. All eleven are person-scale, but their body plans vary considerably; kyrri, for example, have four lower limbs. The tables record only what current archives support.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Major Species"
    | Species | Origin | Resonance Relationship |
    |---------|--------|------------------------|
    | #{encyclopedia_ref :elves, "Elves"} | Native | Deeply attuned; primary ring-era resonance scientists |
    | #{encyclopedia_ref :humans, "Humans"} | Alien | Learned through training and instruments |
    | #{encyclopedia_ref :orcs, "Orcs"} | Alien | Read most readily through material stress |
    | #{encyclopedia_ref :gnomes, "Gnomes"} | Engineered | Directly sensed through ringglass-threaded biology |
    | #{encyclopedia_ref :fae, "Fae"} | Engineered or extensively modified | Coherence aids help maintain bodily form |
    | #{encyclopedia_ref :dwarves, "Dwarves"} | Alien | Fine signal vibration is legible through touch |
  PROSE
  prose <<~PROSE, section: :sources, heading: "Minor Sapient Species"
    | People | Homeland | Resonance Relationship |
    |--------|----------|------------------------|
    | #{encyclopedia_ref :heshari, "Heshari"} | The glass country | Learned; glass grade and stress read by bite and breath |
    | #{encyclopedia_ref :kyrri, "Kyrri"} | The Kyther Range | Structural-band hearing through braced skeleton |
    | #{encyclopedia_ref :oruun, "Oruun"} | The spinways | Learned; local spin and trim felt through density-adaptive tissue |
    | #{encyclopedia_ref :trellin, "Trellin"} | Signal country | Native to the signal band through throat fans |
    | #{encyclopedia_ref :nacre, "Nacre"} | The outer route holds | Kinetic band recorded as groove structure in grown plates |
  PROSE

  cue "The ferry queue runs the Peoples Register's length — a gnome's bones humming faintly in the quiet, an oruun turning a ring-weighted wrist, a kyrri braced comfortably on four limbs at the rail — and the clerk processes it all with one practiced glance apiece."
  cue "A census clerk records species where medicine, accommodation, or demographic totals require it; trade, residence, and civic standing are separate fields."
  affordance "The Peoples Register gives census offices and medical services a shared list of eleven peoples, their body plans, and their documented resonance relationships."
  variation "Mixed-species settlement is the system's norm and predates the Glassfall — a port town's census runs the Peoples Register's whole length, and single-species communities are the exception the neighbors remark on."
  variation "The major-species table records disputed origins because surviving archives support that inquiry. The smaller-population table limits itself to documented homeland and resonance biology."
end
