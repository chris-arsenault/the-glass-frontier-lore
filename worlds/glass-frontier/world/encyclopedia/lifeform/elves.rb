encyclopedia :elves do
  name "Elves"
  summary "Elves are a long-lived sapient species native to Kaleidos, marked by tall frames, fine bone, elongated ears, and direct resonance attunement. Elven design houses built the orbital ring's core architecture; every publicly known elven population disappeared during the Signal Famine."
  kind :lifeform
  subkind :sapient_species
  status :complete
  reviewed "2026-03-19"
  topics :species, :legend, :mystery, :"ring-era", :archives
  prevalence :rare
  available_globally
  origin "Native to Kaleidos and present before the colony era"
  biology "Tall on average, with fine bone, elongated ears, and physical differences from humans subtle enough for an elf to pass unnoticed in a mixed crowd"
  lifespan "Measured in centuries"
  resonance_relation "Direct resonance attunement; surviving elven training and design records begin from distinctions most present-day practitioners recover through instruments"
  log "2026-08-22 — Excluded from present-day character origins because the known elven population vanished during the Signal Famine."
  log "2026-08-09 — the Famine ran 'sixty years' in three places against the 165 the timeline gives, and the hidden preparation ran 'over two centuries' against 130 since the vanishing. All spans are #{'#{elapsed}'} markers now."

  descriptive_identity(
    appearance: "Elves run taller than humans, with elongated ears, finer " \
                "bone, and lifespans in centuries. The physical differences " \
                "are subtle enough for an elf to pass without notice in a " \
                "mixed crowd.",
    senses: "Ring-era medical and training records treat resonance as direct " \
            "elven perception. Their exercises begin from changes in tuned " \
            "glass that present-day schools usually demonstrate with meters " \
            "and reference tones."
  )

  prose <<~PROSE
    Elves are native to Kaleidos and appear throughout its oldest surviving civic, household, and technical records. During the #{ref :signal_famine, "Signal Famine"}, those records stop registering living elven populations. Scholarship since the Rekindling has established the scale of the disappearance and has found no destination or verified account of departure.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Biology"
    Surviving medical descriptions place elves taller than humans on average, with elongated ears, finer bone, and lifespans measured in centuries. Their other visible differences fall within the range that lets an elf pass unnoticed in a mixed crowd. Ring-era portraits and household recordings show wide individual variation in height, build, and coloring.

    Medical and training records also treat resonance as direct perception. Elven exercises begin with changes in tuned glass that most present-day schools first make legible through meters and reference tones. The surviving material records the sense and its training more fully than its physiology.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Ring Builders"
    Elven laboratories and design houses held primary responsibility for the #{ref :the_glass_frontier, "orbital ring's"} core architecture. They designed the #{encyclopedia_ref :ringglass, "ringglass"} lattice and the #{encyclopedia_ref :resonance, "resonance"} systems that carried power, data, and structural force around the inhabited band. Ring-era contracts record the builders, operators, and residents as a multi-species civilization.

    Much of present-day resonance theory descends from surviving elven originals with missing context and attribution. Repair crews can maintain many of those systems at reduced load. The design records needed to reproduce them end at the elven layer.
  PROSE
  prose <<~PROSE, section: :perception, heading: "The Public Record"
    School histories identify the elves as ring architects, and "elven engineering" remains common shorthand for technology whose performance exceeds its surviving documentation.

    Public histories place the disappearance during the Famine. Specialist debate concerns the record gaps and their cause.

    Archive reviews use three positions:

    - **The mainstream position** attributes the gaps to #{elapsed :the_glassfall, :the_rekindling} of fragmented communication and record loss. Its surveys find comparable damage elsewhere in Famine-era archives.

    - **Redaction scholarship** identifies repeated removal of personal, household, and technical detail while broad elven history remains intact. Echo River fragments support deliberate alteration and leave the actor and purpose unsettled.

    - **Folk traditions** in older settlements say the elves departed after foreseeing a threat or still occupy uncharted ring habs. Public archives classify these accounts as folklore; Redaction scholars preserve them as testimony and keep them separate from verified sightings.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Evidence Boundaries"
    The last population records place elves throughout the ring-era system. Later archives contain no destination, departure manifest, mass casualty record, or verified living population. Echo River fragments show deliberate alteration in some records, but do not identify who performed it or what information was removed.

    Searches for uncharted habs have produced disputed signals and folklore rather than a confirmed settlement. Public scholarship therefore records the disappearance, the pattern of alteration, and #{elapsed :elves_vanish, approx: true} without a verified account of where the population went.
  PROSE

  prose <<~PROSE, section: :truth, heading: "Where They Are Now", dm: true
    Most elves live in hidden ring habs with masked resonance signatures and omitted chart positions. These habs support weapons development, strategic planning, training, and resource stockpiles accumulated across #{elapsed :elves_vanish, approx: true}.

    A smaller number live among the general population in human guise. They work as intelligence operatives, supply-chain facilitators, and residents who retained ties outside the hidden habs. Redaction operations monitor archives, intercept discoveries, and divert productive investigations. The Echo Ledger Conclave has recorded two unresolved thefts of its most sensitive elf-related material.

    The #{ref :the_dissident, "Dissident"} broke concealment in 2160 to teach practical Tuning to an isolated surface settlement. Descendants of that teaching line still use the exercises, and hidden-hab schools preserve copies beside the order condemning them.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Adversary", dm: true
    The #{ref :the_false_form, "False Form"} destroyed the orbital ring. Elven records identify it as the figure that will not close, given will. Public accounts of #{encyclopedia_ref :the_three_forms, "The Three Forms"} preserve it as the impossible third panel while treating it as an abstraction.

    Elven operational records place the False Form outside the Kaleidos system and attribute the ring's destruction to it. Hidden councils expect it to return, classify the coming conflict as existential, and have prepared for it across #{elapsed :elves_vanish, approx: true}.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Bloom Zones", dm: true
    Coremark's industrial accident caused the Silent Bloom and tore local reality across mid-drift ring habs. The resulting openings are the elves' primary operational concern.

    The Adversary's influence enters through the Bloom Zone tears as pressure. Recorded contacts remain at that stage, destabilizing the zones and producing the new relic-magnitude artifacts found there.

    Hidden teams now concentrate around the Bloom Zones. They monitor the pressure, study the tears, and prepare countermeasures intended to keep that influence from widening into an incursion.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Council Contact", dm: true
    The Displacement Council's top leadership office cooperates directly with the elves and serves as their contact with the Council.

    Council cordons control access to the Bloom Zones; elven operations supply intelligence, resources, and interventions concealed from the public service. The Council leader knows that containment also obstructs an external incursion and that several unexplained successes were elven operations.

    Other Council personnel receive the accurate but incomplete brief that they are containing resonance anomalies caused by the industrial accident.

    The outgoing Council leader personally briefs a successor on the arrangement. Elven representatives hold veto power over the choice and have exercised it at least once.
  PROSE
  prose <<~PROSE, section: :implications, heading: "The Cultural Sacrifice", dm: true
    The Redaction left the broad public history and removed personal connections, community ties, and individual contributions. Elven children in the hidden habs learn about the civilization their grandparents built and left. They study ancestral resonance techniques that continue in public schools without knowledge of the living source.

    Elven leadership chose secrecy and preparation because it considers a visible civilization vulnerable to the Adversary. Hidden-hab councils continue to enforce that policy while some residents and the Dissident's sympathizers oppose it.
  PROSE

  cue "A seller calls the machine elven engineering and adds the claim to the asking price; the buyer looks for a ring-era maker's mark or an archive line that would support it."
  cue "A ring-era household recording shows an elf standing a head above a human colleague, long ears plain in profile; the caption identifies both by name and office."
  affordance "Recovered elven designs, training records, and survey tables let present-day trades operate ring systems at reduced load, and an archive line tying an object to an elven maker establishes its provenance."
  variation "Public scholarship divides by its reading of the record gaps — ordinary Famine loss, deliberate alteration, or preserved folk testimony — and a settlement's archives usually lean visibly toward one school."
  variation "Source collections expose different parts of elven life: civic rolls preserve households and offices, ring habs preserve design marks, and deep Echo River deposits preserve voices the damaged surface record lost."
  pressure "Any resonance repair that needs the original design runs out of documentation at the elven layer. Local substitutions keep those systems working at reduced load."
end
