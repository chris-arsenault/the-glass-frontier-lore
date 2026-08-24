species :elves do
  name "Elves"
  summary "Elves are a vanished sapient species that helped found Kaleidos civilization and served as the primary architects of the orbital ring before disappearing during the Signal Famine."
  log "2026-08-22 — Excluded from present-day character origins because the known elven population vanished during the Signal Famine."
  subkind :sapient_species
  path "player/concepts/species/elves.md"
  status :complete
  reviewed "2026-03-19"
  tags :species, :legend, :mystery, :"ring-era", :archives
  prominence :recognized
  registry true
  log "2026-08-09 — the Famine ran 'sixty years' in three places against the 165 the timeline gives, and the hidden preparation ran 'over two centuries' against 130 since the vanishing. All spans are #{'#{elapsed}'} markers now."

  prose <<~PROSE
    One of the founding species of the Kaleidos system, primary architects of the #{ref :the_glass_frontier, "orbital ring"}, and for centuries the most technically sophisticated civilization in the system. Then, during the #{ref :signal_famine, "Signal Famine"}, they disappeared. Where they went, why they left, and whether "left" is even the right word are questions that #{elapsed :elves_vanish} of scholarship haven't answered.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Who They Were"
    The elves were native to the Kaleidos system, present from before the colony era. Physically similar to humans — taller on average, with elongated ear structure, finer bone density, and significantly longer lifespans measured in centuries rather than decades. The differences were visible but not dramatic. In a crowd, you might notice. You might not.

    They were integrated into the broader multi-species society of the ring era. They held positions in government, academia, industry, and the arts. They weren't a separate civilization — they were part of the civilization, woven through every level of it.

    But their primary contribution was the ring itself.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Ring Builders"
    The orbital ring was a multi-species undertaking, but the elves were its architects. The #{ref :resonance, "resonance"} engineering — the system of tuned crystal that carried power, data, and structural force through the entire ring — was elven science. The #{ref :ringglass, "ringglass"} lattice design, the frequency architecture, the systems that made a megastructure spanning a planet's orbit function as a single integrated machine: that was their work.

    This isn't controversial. Ring-era records are clear on elven authorship of the core engineering. What modern practitioners know as resonance theory is, in many cases, a simplified version of elven originals — stripped of context and attribution by time, but recognizably derived. The sophistication gap between what the ring builders achieved and what anyone alive can replicate is, in large part, the gap left by the people who understood it best.

    The elves didn't just build the ring. They understood it. And then they were gone, and that understanding went with them.
  PROSE
  prose "#{embed :disappearance_of_the_elves, :history}", section: :history, heading: "The Disappearance"
  prose "#{embed :disappearance_of_the_elves, :perception}", section: :history, heading: "The Redaction"
  prose <<~PROSE, section: :perception, heading: "What People Think"
    Everyone has heard of the elves. They built the ring. That's basic history — taught in schools, referenced in everyday conversation. "Elven engineering" is a common shorthand for technology that works better than anyone can explain.

    The disappearance is less universally known but widely recognized as a historical fact. The elves were here, and then they weren't. Most people file it under "things that happened during the Famine" and don't think about it further.

    The Redaction is where opinion diverges:

    - **The mainstream position** is that the record gaps are a natural consequence of the Famine's chaos. #{elapsed :the_glassfall, :the_rekindling} of fragmented communication degraded a lot of records. The elves were prominent, so their absence from degraded records is noticeable, but not evidence of conspiracy.

    - **The Redaction theorists** argue the pattern is too systematic to be coincidence. Someone deliberately cleaned the record — and the Echo River evidence suggests it was the elves themselves. Why a civilization would erase its own detailed history while remaining in the broad strokes is the central question these scholars can't answer.

    - **Folk tradition** in older settlements preserves more specific stories. The elves didn't die. They left. Some versions say they saw something coming. Some say they're still out there, somewhere in the ring, in habs that don't show on any chart. These stories are treated as folklore by most people and as uncomfortably plausible by the scholars who study the Redaction.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "The Open Questions"
    The elves' existence is historical fact. Their contributions are documented. Their disappearance is acknowledged.

    What nobody can explain:
    - Where did an entire species go during the #{elapsed :the_glassfall, :the_rekindling} Signal Famine?
    - Why does the historical record show signs of deliberate tampering?
    - If the elves cleaned their own records, what were they hiding — or hiding from?
    - Are there still elves in the system, somewhere, and if so — what have they been doing for #{elapsed :elves_vanish, approx: true}?

    The last question is the one people don't ask in polite company. It implies things about the Famine, about the #{ref :the_glassfall, "Glassfall"}, and about the current state of the system that nobody is prepared to deal with.
  PROSE

  # ---- Hidden (DM) truth ----
  prose "#{embed :disappearance_of_the_elves, :truth}", section: :truth, heading: "The Hidden Truth", dm: true
  prose "#{embed :disappearance_of_the_elves, :implications}", section: :truth, heading: "The Scrubbing", dm: true
  prose <<~PROSE, section: :truth, heading: "Where They Are Now", dm: true
    Most elves live in hidden habs — ring fragments running dark, resonance signatures masked, not on any chart. These habs are where the war preparation happens: weapons development, strategic planning, training, and the slow accumulation of resources that #{elapsed :elves_vanish, approx: true} of work by the system's most advanced species can produce.

    A smaller number live among the general population, passing without much difficulty — the physical differences are subtle enough that inattention is sufficient disguise. These are intelligence operatives, supply chain facilitators, and people who couldn't bring themselves to leave entirely. They maintain the Redaction: monitoring archives, intercepting discoveries that get too close, occasionally nudging scholars away from productive lines of inquiry. The Echo Ledger Conclave's most sensitive elf-related material has been stolen from their archives twice. Both thefts are unsolved.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Adversary", dm: true
    The force that destroyed the orbital ring. The elves know what it is: the #{ref :the_false_form, "False Form"} — the figure that will not close, given will. It is the same thing the public cosmology of #{ref :the_three_forms, "The Three Forms"} draws as the impossible third panel and dismisses as an abstraction. The elves know it is no abstraction. See #{ref :the_false_form, "The False Form"} for the full account.

    What is established:
    - External to the Kaleidos system
    - Capable of destroying ring-scale megastructures
    - The elves believe it will return
    - The elves believe the coming conflict will be existential
    - The elves have been preparing for #{elapsed :elves_vanish, approx: true}
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Bloom Zones", dm: true
    The Silent Bloom was an industrial accident. The elves didn't cause it and had nothing to do with Coremark's negligence. But the consequence — tears in local reality across mid-drift ring habs — is now the elves' most urgent problem.

    The Adversary is seeping through the Bloom Zone reality tears. Not a full incursion — more like pressure through a crack. The dimensional instability that makes the zones dangerous to inhabit is, in part, the Adversary's influence bleeding through. The new relic-magnitude artifacts that the zones generate are a byproduct of this contact between normal reality and whatever lies on the other side.

    The elves have significantly increased their hidden presence in and around the Bloom Zones. This is their primary operational focus now — monitoring the incursion, studying the tears, and preparing countermeasures.

    This is the nightmare scenario the elves have been preparing for: the Adversary finding a way back in. The Bloom Zones are the front line of a war that nobody else knows is being fought.
  PROSE
  prose <<~PROSE, section: :truth, heading: "The Council Contact", dm: true
    The Displacement Council's top leadership position — the First Threshold or equivalent — is aware of the elves and cooperates with them directly. This is the single point of contact between elven operations and the non-elven world.

    The arrangement is pragmatic. The elves need a human organization maintaining the cordons and controlling access to the Bloom Zones. The Council needs resources, intelligence, and occasional interventions that arrive from no identifiable source. The First Threshold knows the truth: the containment mission is cover for something larger, the "unexplained successes" are elven operations, and the reality tears are not just an industrial aftereffect.

    The rank and file of the Displacement Council do not know. They believe in their mission — containment of a resonance anomaly — and that belief is genuine and correct as far as it goes. The First Threshold carries the weight of knowing it goes further.

    This position is the loneliest job in the system. The holder cooperates with a civilization that officially doesn't exist, to fight a threat that nobody else knows about, while maintaining a public face of stoic neutrality. Succession is handled carefully — the outgoing First Threshold identifies and reads in their successor personally. The elves have veto power over the choice, which they have exercised at least once.
  PROSE
  prose <<~PROSE, section: :implications, heading: "The Cultural Sacrifice", dm: true
    The emotional core of the elven story.

    The elves didn't erase themselves from existence — people still know they were real, still credit them with the ring. But they erased themselves from *life*. Every personal connection, every community tie, every individual contribution — all severed. Elven children born in the hidden habs grow up learning about a civilization their grandparents built and then walked away from. They study resonance techniques their ancestors invented, practiced across the system by people who will never know they're still alive.

    This was a choice. Cultural retreat, not cultural death — but the difference is academic when you're the generation living it. The elven leadership chose secrecy over presence, preparation over participation. They believed — and continue to believe — that the Adversary cannot be fought by a visible target.

    Whether they're right is the question the story will eventually have to answer.
  PROSE
  gm_note :appears, "Anything working better than its owner can account for gets sold as elven " \
                    "engineering, whether or not an elf was ever near it. The claim adds to the " \
                    "asking price and nobody can check it."
  gm_note :triggered_by, "Ask any scholar whether the record gaps were deliberate and you get " \
                         "one of three settled positions, delivered as though holding either of " \
                         "the other two were an embarrassment."
  gm_note :complicates, "Any resonance repair that needs the original design runs out of " \
                        "documentation at the elven layer. What gets fitted instead is a " \
                        "substitution somebody local worked out, and it holds at reduced load."
end

relate :rel_elves_built_the_glass_frontier, :built, :elves, :the_glass_frontier do
  prose "The elves built the orbital ring that became the #{ref :the_glass_frontier, "Glass Frontier"} — a generational megastructure project, and the single fact about them no Redaction could erase."
end
relate :rel_elves_designed_resonance, :designed, :elves, :resonance do
  prose "The science of #{ref :resonance, "resonance"} was theirs: the frequency architecture, the tuned-crystal lattice, the whole system that made the ring function as one machine. What modern practitioners use is a simplified inheritance of elven originals."
end
relate :rel_elves_created_gnomes, :created, :elves, :gnomes do
  prose "The #{ref :gnomes, "gnomes"} are an elven creation — engineered, part ringglass, born to attune to resonance in ways no other species manages naturally."
end
relate :rel_elves_disappeared_during_signal_famine, :disappeared_during, :elves, :signal_famine do
  prose "They vanished across the #{elapsed :the_glassfall, :the_rekindling} Signal Famine, whose broken communications gave a deliberate disappearance the cover of a natural one."
end
relate :rel_elves_cooperates_with_displacement_council, :cooperates_with, :elves, :displacement_council, since: 2384, dm: true do
  prose "Through the Bloom era the hidden elves have run a quiet, deniable cooperation with the #{ref :displacement_council, "Displacement Council"} — the one human institution read in on the truth."
end
relate :rel_elves_hiding_from_the_false_form, :hiding_from, :elves, :the_false_form, dm: true do
  prose "Everything they have done since the ring fell is hiding — and preparing — against the #{ref :the_false_form, "False Form"}, the thing they believe destroyed it and will return."
end

relate :rel_elves_operate_in_bloom_zones, :operates_in, :elves, :bloom_zones, since: 2378, dm: true do
  prose "Since the Bloom opened, the hidden elves have concentrated their presence in and around the #{ref :bloom_zones, "Bloom Zones"} — monitoring the incursion, studying the tears, and preparing countermeasures. It is their primary operational focus."
end
