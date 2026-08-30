encyclopedia :knocking do
  name "Knocking"
  summary "Knocking is the trained sequence of pressure, taps, and patience that opens elven service fittings — panels, catches, and seams built by the ring's architects to answer a practiced hand. Hab children learn the basic sequences with their letters."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :"ring-era", :household
  prevalence :common
  appears_when any: { place: [:sealed_hab, :debris_field] }
  function "Opens ring-era service fittings through learned pressure-and-tap sequences"

  descriptive_identity(
    signs: "Flat palm laid on the seam, three slow taps with the knuckle, weight shifted through " \
           "the heel of the hand, and a pause held to a silent count — then the seam breathes open. " \
           "A knocker at work looks like someone calming a large animal.",
    effect: "Elven fittings answer worked sequences: pressure held in the right places for the " \
            "right count releases catches that show no handle, hinge, or keyhole. The common " \
            "household sequences open air vents, service panels, and water points; trade " \
            "sequences run longer and open more.",
    limits: "A fitting answers its own sequence and holds shut against every other. Force marks " \
            "the seam and the fitting holds harder afterward — salvage crews route around a " \
            "forced panel and note it on the claim chart as spoiled work."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} built the ring's service fittings to open for practiced hands. A panel that shows a smooth seam and empty face releases to a sequence — pressure here, three taps, weight shifted, a held count — and generations of hab life have carried the common sequences forward as ordinary knowledge. Children learn the household set with their letters: the vent sequence, the water-point sequence, the long slow one for the storm shutters. The skill is called knocking, and the word covers everything from a child opening a linen recess to a salvage specialist working a forty-count sequence on a bulkhead sealed since the Glassfall.

    Sequences pass hand over hand, the teacher's fingers guiding the learner's through the count, the way net-menders teach a knot. Written notation exists and every trade agrees it teaches badly; the count lives in the body, and a knocker who has to think about the next pressure has already lost it. Crews drill the trade sequences in threes — two working the seam, one calling the count — because the long sequences run past a single hand's reach and a called count keeps three hands inside one rhythm.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Trade Sets"
    Beyond the household set, sequences are working property. Dock crews hold the freight-gate sets, wash crews the duct sets, and the deep-salvage sets — long, slow, and specific to single installations — are guarded the way route charts are guarded, taught to a successor and priced into a claim. A crew that recovers a new sequence from a sealed section logs it with the claim; the sequence is treated as salvage, and trading one carries the same custody habits as trading the goods behind it.

    The open question every knocker eventually asks is what the fittings are listening with. Instruments read a faint structural-band response in the seam during a working sequence, and the response repeats identically on dead fragments in the Shear, far from any powered system. Two workshop traditions teach two mechanisms — sprung tumblers worked by timed load, and something in the material itself — and both teach sequences that open the same doors.
  PROSE

  cue "Someone lays a flat palm on a smooth blank seam, taps three times, leans in, and holds still to a silent count until the panel breathes open."
  cue "A child works the low vent panel with the frowning care of a recitation while an adult's hands hover over theirs, guiding the rhythm."
  affordance "The common sequences open ring-era vents, panels, and water points anywhere the ring built them, and a crew holding a rare trade sequence can open a route through sealed sections that force would spoil."
  pressure "A forced fitting holds harder ever after and marks the crew that forced it — a spoiled seam on a claim chart is read as a signature — so a crew short one sequence must buy it, learn it, or leave the door alone."
  variation "Household sets vary by hab and drift like accents; a Carom child visiting Vey opens the linen recess on the second try and both families find this funny."
  variation "Deep-salvage sets are single-installation property, taught to successors and priced into claims, and the recovery of a new sequence is logged as salvage in its own right."
end
