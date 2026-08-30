encyclopedia :fracture_wake_crews do
  name "Fracture-Wake Crews"
  summary "Fracture-Wake Crews are mobile debris-working households that live aboard their claims and keep time by the crossing calendar — the schedule of when their worked shards pass near one another. A crew's year is built around its crossings: reunions, marriages, settled disputes, and the crossing hail sounded hull to hull as the ground itself brings the family together."
  kind :culture
  subkind :work_tradition
  status :complete
  topics :"social-structure", :salvage, :household, :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:debris_field] }
  integration "Crews trade worked material into the yard economy and take on registry contracts, but marry, adjudicate, and celebrate on the crossing calendar — a crew's presence anywhere is scheduled by orbital mechanics first and commerce second"
  aesthetic "Crossing-mark heraldry: each crew's shard mark painted at hull scale on its claims, worn small at the collar, and cut into the calendar boards that hang where other households hang clocks"

  descriptive_identity(
    appearance: "Debris-field working families, spacer-built and tool-marked, each " \
                "member wearing the crew's shard mark small at the collar — the same " \
                "figure painted hull-high on every claim the crew works.",
    attire: "Patched working suits dressed up, for crossings, with the good sashes " \
            "kept folded the rest of the year; a crew in its crossing best is a " \
            "working fleet in its one annual finery.",
    manner: "Patient in the long apart and loud in the brief together; crews conduct " \
            "the year's accumulated business — betrothals, settlements, divisions of " \
            "take — inside the crossing's counted days, and their talk runs on " \
            "calendar time: 'by third crossing', 'two crossings back'.",
    hospitality: "A hull hailing the crossing hail is answered with lines and an open " \
                 "lock; guests at a crossing eat first and judge nothing, and a " \
                 "stranger who helps work a crossing's cargo exchange leaves with a " \
                 "standing welcome at every shard the crew marks."
  )

  prose <<~PROSE
    The Glassfall scattered the ring, and the #{encyclopedia_ref :elves, "elves'"} own survey system kept the accounts: the beacon tables that tracked every fragment's path survived in the orbital archives, and the earliest debris crews learned to read them as almanacs. A crew claims and works a set of shards — marking each with its crossing figure, hull-high — and the elven tables tell it, years out, when its worked ground will pass near itself: the crossings, the fixed points of a scattered household's year. Between crossings the crew divides, a hearth-hull and work parties distributed across the claims, living the long apart on schedule and letter. At a crossing the shards close to hailing range for counted days, the crossing hail sounds hull to hull — each crew's call its own, pitched to carry and answered in kind — and the accumulated year happens all at once: reunions, betrothals, the division of take, the settlement of disputes held over by custom until the family could sit together, the marriages that join two crews' calendars and are dated, forever after, by which crossing.

    The culture's law is the tended claim. A crew works its shards the way river families work tended waters — take rates set so the ground outlasts the generation, seed debris left to the #{encyclopedia_ref :crowncut_spark_bloom, "blooms"}, the claim passing entire at inheritance — and its standing in the fields is its marks' condition: bright figures on well-kept shards read as a household in good order. The crossing calendar frames everything said about time. Crews date events by crossings, plan by the elven tables' long sight, and carry the tables' authority into their idiom — the ground keeps the appointment is the crews' answer to most questions about distance, absence, and when. Yard folk find the life austere in the apart and overwhelming in the together; the crews reverse the judgment, holding that a household whose reunions are written in orbital mechanics knows exactly how much the together is worth, and can prove the number.
  PROSE

  cue "The two shards close to hailing range on the day the tables named years ago, the crossing hail sounds hull to hull in the crew's own call, and the counted days begin — betrothals first, disputes last."
  cue "In the hearth-hull's common room the calendar board hangs where other households hang a clock, the next three crossings cut into it, and a child traces the closest date the way children elsewhere count to a festival."
  affordance "A crew's crossing calendar makes it findable years out — registries, suitors, and creditors all know when and where a crew will be assembled — and its tended claims yield steady worked material under marks the yards trust on sight."
  pressure "The calendar rules the crew and bends for the tables alone, so every urgent thing arriving between crossings — a death, a claim dispute, a suitor — waits on the ground's appointment or pays the heavy cost of forcing a special assembly."
  variation "The great old crews work claims across whole debris bands and hold crossings that draw guest hulls from three registries; young crews on two shards keep the same forms at kitchen scale."
  variation "When two crews marry, the joined calendar is negotiated like a treaty — whose crossings the couple keeps, which shards change marks — and the settlement is cut into both crews' boards."
end
