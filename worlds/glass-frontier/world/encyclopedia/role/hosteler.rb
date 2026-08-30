encyclopedia :hosteler do
  name "Hosteler"
  summary "A hosteler runs a waystation on the long routes — beds, beasts, water, repairs, and the gate that bars at dark — spacing the roads into survivable days. The station book records every arrival and departure for searchers, factors, wardens, and the next station along the route."
  kind :role
  subkind :profession
  status :complete
  topics :trade, :navigation, :household, :"social-structure"
  prevalence :uncommon
  appears_when any: { place: [:dock, :surface] }

  descriptive_identity(
    attire: "Practical dress with the station's mark on the shoulder and the gate keys " \
            "worn openly — the visible promise that somebody holds them — plus the " \
            "route's weather on the face, since hostelers meet every arrival in the " \
            "yard by trade custom.",
    tools: "The station book — arrivals, departures, direction, and condition, kept " \
           "nightly for generations — the gate bar, the yard's water and feed stores " \
           "measured against the season, and the repair bench that fixes enough to " \
           "get a traveler to the next station.",
    manner: "Hospitable on the station's terms, which are posted: the gate bars at " \
            "dark, the water is measured in dry seasons, and the hosteler's questions " \
            "at the gate — direction, condition, news — are the route's intelligence " \
            "service working."
  )

  cue "The station gate stands open on a walled yard — beds, beast lines, the repair bench, the measured well — and the hosteler meets the arrivals with the three gate questions before the dust settles."
  cue "The station book lies open on the counter, tonight's arrivals entered in a hand that matches the last thirty years of pages, and a route office clerk is two days behind it and knows it."
  affordance "The station chain spaces the long routes into survivable days — beds, water, feed, and repairs a day's travel apart — and the hostelers' books and gate questions make them the route's living census, consulted by searchers, factors, and wardens before any office."
  pressure "The hosteler measures water and feed against expected traffic, enters late arrivals in the station book, and tells the next station what remains. During a dry season those nightly figures set the ration offered to every traveler."
  variation "Surface stations on the drove roads run big yards and feed by the herd; the orbital route's waystation hostelers run sealed berths and air accounts, and both traditions claim the harder job with statistics."
  variation "Station books pass with the stations and searchers read them like registries — a missing traveler's last entry, direction and condition in the hosteler's hand, has started and ended searches for three centuries of route history."

  prose <<~PROSE
    The long routes are chains of days, and at the end of each day stands a station. The hosteler's trade runs them: the walled yard a day's travel from the last one, with beds, beast lines, measured water, feed against the season, a repair bench stocked to get a traveler one more stage, and a gate that bars at dark. The spacing is the institution — routes are surveyed in station-days, a stretch that loses its station is a stretch the freight offices re-route around, and the founding of a new station on a growing road is route-country news of the first order, attended by every hosteler in reach with gifts and professional opinions.

    The station book is the trade's second product. Every arrival and departure enters it — name or mark, direction, condition, the news carried — and the accumulated books form the route's census. Searchers consult them, #{encyclopedia_ref :factor, "factors"} price route risk from their traffic, and the gate questions keep each station's stores matched to the road's actual state. A hosteler's yard is neutral ground by route custom: quarrels stop at the gate with the dark, and the hosteler enforces the posted terms until morning.
  PROSE
end
