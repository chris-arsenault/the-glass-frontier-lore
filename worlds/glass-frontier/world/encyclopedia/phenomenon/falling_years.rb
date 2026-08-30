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
  hazard "A falling year multiplies shower crossings — surface impact seasons, orbital transit closures — and the light years between them breed the complacency the heavy ones collect on"

  descriptive_identity(
    signs: "The almanac's shower tables thicken, the first heavy streams put shimmer in the " \
           "night sky weeks early, and every yard in the system is suddenly re-laying roof " \
           "tile and arguing about the shutter budget the light years deferred.",
    effects: "Falling years reshape the calendar: orbital routes shift to shielded windows, " \
             "surface harvests advance ahead of the impact season, and the glass trades " \
             "boom — a heavy year salts the fields and the Shear alike with fresh stock.",
    hazards: "The cycle's light years run long enough for roofs, drills, and budgets to " \
             "slacken, and the injury tables spike at each heavy year's front edge, among " \
             "the settlements that stopped believing in it."
  )

  prose <<~PROSE
    The ring is still falling, and it falls on a rhythm. The great debris streams precess on cycles the almanac offices have charted since the Rekindling, and when the heavy streams swing across the inhabited orbits the system gets a falling year: #{encyclopedia_ref :glassfall_showers, "showers"} crossing sky and orbit week after week, the night shimmer that surface children learn as weather, the drumming seasons the ring settlements call the long hail. The cycle is published a generation out. A falling year arrives with its dates in every passing table and its budget lines in every ward ledger, and the system's relationship with its own catastrophe has the texture of flood-country life — scheduled, priced, and survivable by exactly the amount of work done in advance.

    The heavy years reorganize everything that moves. Orbital routes compress into shielded windows and the freight backlog becomes the season's shared complaint; surface districts advance their harvests ahead of the impact months and roof crews command harvest wages; the cordon services surge; and the glass trades boom behind the danger — a falling year re-salts Avar's sheets and the Shear's claims with fresh stock, and the salvage fleets follow a heavy season the way gleaners follow a reaper. The light years between are the cycle's other test. Roofs age, drills slacken, shutter budgets lose their arguments, and the injury tables spike at each heavy year's front edge among settlements that let the almanac become an opinion.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Almanac and the Long Ledger"
    The cycle's charting is one of the Rekindling's quiet monuments: generations of shower logs reconciled into stream tables that now predict a falling year's shape — onset, peak weeks, the trailing shoulder — closely enough that insurers write to it. The offices publish revisions each year with the humility the record has earned them; the streams evolve as the ring grinds on, new filaments appear and are named, and the standing scientific work of the falling years is the census each heavy season takes of what remains of the ring to fall.

    Custom keeps the long ledger where budgets forget it. Heavy years are named and remembered — the roofs a district lost, the windows it shuttered in time — and the falling-year customs run to the practical-commemorative: shutter-raising as a neighborhood day with food, the first-shimmer night watched from roofs about to earn their keep, and the ring settlements' habit of marking each long hail's end by walking the outer skins together, counting the new scars aloud.
  PROSE

  cue "The night sky carries its first shimmer weeks ahead of the tables, and by morning every yard in town has tile stacked and the shutter argument settled."
  cue "The almanac's revision posts at the market bell, and three trades read it in three ways — the roofers pricing the peak weeks, the freight office compressing its windows, the salvage broker smiling."
  affordance "The cycle is catastrophe with a timetable: a generation's notice for every heavy season, which lets routes, harvests, budgets, and whole trades stage around dates the almanac has earned the right to set."
  pressure "The light years are long enough to unlearn in, so each falling year opens with a harvest of deferred maintenance — and the settlements that argued with the almanac appear in the injury tables ahead of the ones that argued with their roofers."
  variation "Surface districts fight the cycle with roofs, shutters, and advanced harvests; the ring settlements fight it with shielded windows and route discipline, and each regards the other's falling year as the easy one."
  variation "Heavy years are named and remembered like storms, and the ring settlements close each long hail by walking their outer skins in company, counting the new scars aloud."
end
