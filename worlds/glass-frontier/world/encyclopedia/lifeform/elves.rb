encyclopedia :elves do
  name "Elves"
  summary "Elves are a vanished sapient species that helped found Kaleidos civilization and served as the primary architects of the orbital ring before disappearing during the Signal Famine."
  kind :lifeform
  subkind :sapient_species
  status :draft
  reviewed "2026-03-19"
  topics :species, :legend, :mystery, :"ring-era", :archives
  prevalence :rare
  available_globally
  log "2026-08-22 — Excluded from present-day character origins because the known elven population vanished during the Signal Famine."
  log "2026-08-09 — the Famine ran 'sixty years' in three places against the 165 the timeline gives, and the hidden preparation ran 'over two centuries' against 130 since the vanishing. All spans are #{'#{elapsed}'} markers now."

  descriptive_identity appearance:
    "Elves run taller than humans, with elongated ears, finer bone, and " \
    "lifespans in centuries. The physical differences are subtle enough for " \
    "an elf to pass without notice in a mixed crowd."

  prose <<~PROSE
    Elves were one of Kaleidos's founding species and the primary architects of the #{ref :the_glass_frontier, "orbital ring"}. During the #{ref :signal_famine, "Signal Famine"}, civic rolls, work records, and household accounts stop registering living elven populations. Scholarship since the Rekindling has established the scale of the disappearance but has found no destination or verified account of departure.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Who They Were"
    The elves were native to Kaleidos and present before the colony era. They stood taller than humans on average, with elongated ears, finer bone, and lifespans measured in centuries.

    Elves held positions throughout the ring era's multi-species governments, academies, industries, households, and arts. Their largest body of documented work is the ring itself.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Ring Builders"
    The orbital ring was a multi-species undertaking, but the elves were its architects. The #{encyclopedia_ref :resonance, "resonance"} engineering — the system of tuned crystal that carried power, data, and structural force through the entire ring — was elven science. The #{encyclopedia_ref :ringglass, "ringglass"} lattice design, the frequency architecture, the systems that made a megastructure spanning a planet's orbit function as a single integrated machine: that was their work.

    Ring-era records attribute the core engineering to elven laboratories and design houses. Much of present-day resonance theory descends from surviving elven originals with missing context and attribution. Repair crews can maintain many of those systems at reduced load, while the design records needed to reproduce them end at the elven layer.
  PROSE
  prose <<~PROSE, section: :perception, heading: "What People Think"
    School histories identify the elves as ring architects, and "elven engineering" remains common shorthand for technology whose performance exceeds its surviving documentation.

    Public histories place the disappearance during the Famine. Specialist debate concerns the record gaps and their cause.

    The Redaction is where opinion diverges:

    - **The mainstream position** attributes the gaps to #{elapsed :the_glassfall, :the_rekindling} of fragmented communication and record loss. Its surveys find comparable damage elsewhere in Famine-era archives.

    - **Redaction scholarship** identifies repeated removal of personal, household, and technical detail while broad elven history remains intact. Echo River fragments support deliberate alteration and leave the actor and purpose unsettled.

    - **Folk traditions** in older settlements say the elves departed after foreseeing a threat or still occupy uncharted ring habs. Public archives classify these accounts as folklore; Redaction scholars preserve them as testimony without treating them as verified sightings.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Evidence Boundaries"
    The last population records place elves throughout the ring-era system. Later archives contain no destination, departure manifest, mass casualty record, or verified living population. Echo River fragments show deliberate alteration in some records, but do not identify who performed it or what information was removed.

    Searches for uncharted habs have produced disputed signals and folklore rather than a confirmed settlement. Public scholarship therefore records the disappearance, the pattern of alteration, and #{elapsed :elves_vanish, approx: true} without a verified account of where the population went.
  PROSE

  prose <<~PROSE, section: :truth, heading: "Where They Are Now", dm: true
    Most elves live in hidden ring habs with masked resonance signatures and omitted chart positions. These habs support weapons development, strategic planning, training, and resource stockpiles accumulated across #{elapsed :elves_vanish, approx: true}.

    A smaller number live among the general population in human guise. They work as intelligence operatives, supply-chain facilitators, and residents who retained ties outside the hidden habs. Redaction operations monitor archives, intercept discoveries, and divert productive investigations. The Echo Ledger Conclave has recorded two unresolved thefts of its most sensitive elf-related material.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Adversary", dm: true
    The #{ref :the_false_form, "False Form"} destroyed the orbital ring. Elven records identify it as the figure that will not close, given will. Public accounts of #{encyclopedia_ref :the_three_forms, "The Three Forms"} preserve it as the impossible third panel while treating it as an abstraction.

    What is established:
    - External to the Kaleidos system
    - Capable of destroying ring-scale megastructures
    - The elves believe it will return
    - The elves believe the coming conflict will be existential
    - The elves have been preparing for #{elapsed :elves_vanish, approx: true}
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Bloom Zones", dm: true
    Coremark's industrial accident caused the Silent Bloom and tore local reality across mid-drift ring habs. The resulting openings are now the elves' primary operational concern.

    The Adversary's influence enters through the Bloom Zone tears as pressure rather than a full incursion. That contact contributes to the zones' dimensional instability and produces the new relic-magnitude artifacts found there.

    The elves have significantly increased their hidden presence in and around the Bloom Zones. This is their primary operational focus now — monitoring the incursion, studying the tears, and preparing countermeasures.

    Elven preparations now concentrate on preventing that influence from widening into an incursion.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Council Contact", dm: true
    The Displacement Council's top leadership office cooperates directly with the elves and serves as their contact with the Council.

    Council cordons control access to the Bloom Zones; elven operations supply intelligence, resources, and interventions concealed from the public service. The Council leader knows that containment also obstructs an external incursion and that several unexplained successes were elven operations.

    Other Council personnel receive the accurate but incomplete brief that they are containing resonance anomalies caused by the industrial accident.

    The outgoing Council leader personally briefs a successor on the arrangement. Elven representatives hold veto power over the choice and have exercised it at least once.
  PROSE
  prose <<~PROSE, section: :implications, heading: "The Cultural Sacrifice", dm: true
    Public history still records the elves and credits them with the ring, while the Redaction removed personal connections, community ties, and individual contributions. Elven children in the hidden habs learn about the civilization their grandparents built and left. They study ancestral resonance techniques that continue in public schools without knowledge of the living source.

    Elven leadership chose secrecy and preparation because it considers a visible civilization vulnerable to the Adversary. Hidden-hab councils continue to enforce that policy while some residents and the Dissident's sympathizers oppose it.
  PROSE

  cue "A seller calls the machine elven engineering and adds the claim to the asking price; the buyer looks for a ring-era maker's mark or an archive line that would support it."
  pressure "Archive reviews classify an elven record gap as ordinary Famine loss, evidence of deliberate alteration, or unverified folk testimony, with each conclusion tied to the surviving source."
  pressure "Any resonance repair that needs the original design runs out of documentation at the elven layer. What gets fitted instead is a substitution somebody local worked out, and it holds at reduced load."
end
