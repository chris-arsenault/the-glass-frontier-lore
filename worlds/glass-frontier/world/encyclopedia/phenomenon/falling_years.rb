encyclopedia :falling_years do
  name "Falling Years"
  summary "Falling years are the heavy seasons of the glassfall cycle — the years, charted a generation ahead, when the ring's debris streams thicken and showers cross the inhabited orbits and skies week after week. The system plans roofs, routes, and budgets around them."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :"ring-era", :danger, :navigation, :rebuilding
  prevalence :common
  appears_when any: { place: [:surface, :orbital] }
  medium "The debris streams of the broken ring, crossing Kaleidos's atmosphere and inhabited orbits"
  nature "A long cycle in glassfall intensity as the great debris streams precess; the almanac offices publish the cycle a generation out"
  hazard "A falling year multiplies shower crossings, producing surface impact seasons and repeated orbital transit closures"

  descriptive_identity(
    signs: "The almanac's shower tables thicken, the first heavy streams put shimmer in the " \
           "night sky weeks early, and every yard in the system is suddenly re-laying roof " \
             "tile and bringing deferred shutter work forward.",
    effects: "Falling years reshape the calendar: orbital routes shift to shielded windows, " \
             "surface harvests advance ahead of the impact season, and the glass trades " \
             "boom — a heavy year salts the fields and the Shear alike with fresh stock.",
    hazards: "Roof, shutter, and drill maintenance deferred during the light years leaves " \
             "settlements exposed at the first heavy streams; injury records peak before " \
             "late repairs are complete."
  )

  prose <<~PROSE
    The great debris streams precess on cycles the almanac offices have charted since the Rekindling. When the heavy streams cross the inhabited orbits, #{encyclopedia_ref :glassfall_showers, "showers"} pass through sky and orbit week after week. Surface children learn the night shimmer as seasonal weather; ring settlements call the repeated drumming the long hail. Almanacs publish the cycle a generation ahead, and falling-year dates appear in passing tables, ward budgets, roof contracts, and harvest plans.

    Orbital routes compress into shielded windows and accumulate freight between them. Surface districts bring harvests forward, roof crews command harvest wages, and cordon services add shifts. A falling year also lays fresh stock across Avar's sheets and the Shear's claims, drawing salvage fleets behind the heaviest streams. During the light years, roofs, drills, and shutters still require scheduled maintenance; settlements that defer it record their highest injuries at the front edge of the next heavy season.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Almanac and the Long Ledger"
    The cycle's charting is one of the Rekindling's quiet monuments: generations of shower logs reconciled into stream tables that now predict a falling year's shape — onset, peak weeks, the trailing shoulder — closely enough that insurers write to it. The offices publish revisions each year with the humility the record has earned them; the streams evolve as the ring grinds on, new filaments appear and are named, and the standing scientific work of the falling years is the census each heavy season takes of what remains of the ring to fall.

    Custom keeps the long ledger where budgets forget it. Heavy years are named and remembered — the roofs a district lost, the windows it shuttered in time — and the falling-year customs run to the practical-commemorative: shutter-raising as a neighborhood day with food, the first-shimmer night watched from roofs about to earn their keep, and the ring settlements' habit of marking each long hail's end by walking the outer skins together, counting the new scars aloud.
  PROSE

  cue "The night sky carries its first shimmer weeks ahead of the tables, and by morning every yard in town has tile stacked and the shutter argument settled."
  cue "The almanac's revision posts at the market bell, and three trades read it in three ways — the roofers pricing the peak weeks, the freight office compressing its windows, the salvage broker smiling."
  affordance "The cycle is catastrophe with a timetable: a generation's notice for every heavy season, which lets routes, harvests, budgets, and whole trades stage around dates the almanac has earned the right to set."
  pressure "The first heavy streams expose deferred roof, shutter, and drill maintenance at once, while repair crews and shielded freight windows are already at their seasonal limit."
  variation "Surface districts fight the cycle with roofs, shutters, and advanced harvests; the ring settlements fight it with shielded windows and route discipline, and each regards the other's falling year as the easy one."
  variation "Heavy years are named and remembered like storms, and the ring settlements close each long hail by walking their outer skins in company, counting the new scars aloud."
end
