encyclopedia :drover do
  name "Drover"
  summary "A drover moves other people's herds along the seasonal roads — pooling small households' stock into one drive, reading ground and weather for the route, and answering for every animal at the far-end count. The drove calendar structures the surface year."
  kind :role
  subkind :profession
  status :complete
  topics :surface, :trade, :ecology, :"social-structure"
  prevalence :common
  appears_when any: { place: [:surface, :road, :garden] }

  descriptive_identity(
    attire: "Layered for the whole route's weather at once, with the tally cords braided to the " \
            "belt — one knotted cord per household in the drive — and the lead-beast's spare " \
            "bell wrapped in cloth in the satchel.",
    tools: "The tally cords, the route book, and the bell. A drover's lead animal wears the drive " \
           "bell whose tone the whole pooled herd learns in the first day's walk, and the bell " \
           "passes drover to drover with the route.",
    manner: "Patient with animals, brisk with owners, and exact at the counts. A drover recites " \
            "the drive's losses unprompted at the far-end tally, cause by cause, before any " \
            "owner asks."
  )

  cue "A single herd of mixed brands flows down the drove road behind one belled lead animal, and a figure with knotted cords on their belt walks the flank, counting under their breath."
  cue "At the pens, households hand over stock and receive a knot on a cord in return, and the whole transaction is the knot."
  affordance "Pooling under a drover turns a dozen households' scattered stock into one professionally moved drive — and the drover's route book knows the season's ground, water, and passings better than any single farm can."
  pressure "The drover answers for the far-end count and chooses the route from current ground, water, and strike signs. Owners set market dates, but the drover records and may refuse a ford, slope, or shortcut for the pooled herd."
  variation "Avar drives run to the shifting roads with roadspider support at the fords; garden-hab circuits are walked drives of small stock between habs, timed to dock schedules."
  variation "The great seasonal drives end in descent fairs — stock paraded through town, the lead beast garlanded, accounts settled at the pens — and towns compete over whose fair the drovers prefer."

  prose <<~PROSE
    Surface stock moves with the seasons — #{encyclopedia_ref :marn, "marn"} to the high grazing after the melt, down again ahead of the storms, breeding stock between districts, market animals to the fairs — and most households own six animals and no time. The drover is the answer the surface worked out: a professional who pools the district's stock into one drive, walks it the season's route, and answers for the count at the far end. The pooling is the institution. A dozen brands travel as one herd behind one belled lead animal, each household's tally knotted on a cord at the drover's belt, and the knots are the contract.

    The craft is route reading on a walking timetable. A drover's book holds the season's ground — which fords ran green last month, which slopes carry due #{encyclopedia_ref :breach_lichen, "lichen"}, where the water is and what it cost last year — and the day's plan folds in the passing tables, since a drive rests through the long shade and makes distance in the cool that follows. Animals learn the drive bell in the first day and follow it through weather that scatters lesser arrangements; drovers guard their bell's tone as a trade asset and pass it, with the route book, to the successor who buys or inherits the round.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Counts, Losses, and the Fairs"
    The far-end tally is the role's whole reputation. Stock is counted against the cords in front of the owners, and the drover recites the losses first, unprompted, cause by cause — the ford, the strike, the sickness — with the evidence carried when evidence can be carried. A drover whose recitals hold up over years borrows against the next season's fees; one caught improving a story walks routes farther from home each year until the routes run out.

    The great seasonal drives end in public. Descent fairs meet the autumn drives at the market towns — stock paraded through the streets, the lead beast garlanded, accounts settled at the pens over two loud days — and the fairs double as the surface's hiring season, where households judge next year's drovers by this year's counts, and young flank-walkers stand where the judging can see them.
  PROSE
end
