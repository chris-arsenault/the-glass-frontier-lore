encyclopedia :cover do
  name "Cover"
  kind :technology
  subkind :transport
  status :complete
  log "2026-08-31 — Renamed Shade Crawler to Cover; hot-country crews' governing route resource now names the vehicles whose schedules and construction depend on it."
  topics :transport, :"outer-system", :danger, :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:hot, :road] }
  summary "Covers are long, low freight vehicles used on hot-country shade routes. Pilots follow seasonal tables from crater rims through canyon and spire shadows, sprint across short lit gaps, and park beneath rated shelter until the next connection opens. Each hull survives only a measured number of minutes in direct sun."
  function "Moves freight and passengers across hot-country surface the direct sun forbids — hull and range built for shadow, the route network built of it"
  classes "The freight cover, slow and deep-holded, that works the trunk shade roads; the fast courier pattern that sprints the brief connections; and the survey cover, hardened for provisional shade, that charts new lines after the ground or the calendar changes them"
  operating_environments "The hot moons' and Crucible-margin surface roads — shade-line networks across crater country, canyon systems, and the spire fields whose shadows the routes are braided from"
  operating_limit "The hull has a certified allowance of direct-sun minutes; route range is set by the day's connected shadows, and a missed opening leaves the vehicle under its last rated cover until the line returns"
  capacity "Freight covers haul in caravan tonnage on the trunk lines; couriers carry mail, medicine, and the passengers whose business justifies sprint scheduling"

  descriptive_identity(
    appearance: "A long, low freight hull with a pale back and dark shaded flanks, " \
                "all its working gear — hatches, vents, the pilot's dome — " \
                "arranged on the shadow side; parked, it noses into cover " \
                "until its silhouette and the rock's agree.",
    working: "The pilot runs the shade tables — the day's connections, each " \
             "shadow's reach and drift — and drives the line as the geometry " \
             "opens: long runs down canyon shade, timed sprints across lit " \
             "gaps, and the parked hours under cover that the schedule " \
             "prices in like tides.",
    risks: "A missed connection leaves the vehicle under its last rated shelter " \
           "until the shadow returns; pilots record every lit crossing against " \
           "the hull's remaining sun minutes and update tables after ground changes."
  )

  prose <<~PROSE
    Recovered elven surveys chart connected shadow across hot-country crater rims, canyons, and spire fields. Stone waymarks give each connection's seasonal reach and drift. Covers work this network with pale upper hulls, dark flanks, and hatches, vents, and service gear arranged on the shaded side. Pilots drive long sections inside canyon shadow, cross short lit gaps at a timed sprint, and park beneath rated rocks until the next line connects. Every lit crossing consumes part of the hull's certified sun exposure.

    Table houses in route towns publish the day's connections and collect corrections from every arriving pilot. Survey covers remeasure a line after a collapse, seasonal drift, or construction changes the shadow. Freight vehicles travel in strings on wide trunk routes and singly through tight connections; couriers use faster hulls for short openings. During parked hours, crews compare tables and perform service work at the shade houses built beneath rated cover. Road custom gives arriving vehicles only the space their tables require, because crowding a shadow can block another cover's safe exposure plan.
  PROSE

  cue "The string noses out of canyon shade on the table's minute, sprints the lit gap in a line — pale backs blazing — and threads into the spire field's shadow with the sun-minutes ledger barely touched."
  cue "Parked hours at the rated rock: three strings sharing cover, tables open on the freight crates, and the shade-house pouring for pilots who will scatter on three different connections when the sky moves."
  affordance "Seasonal shade tables let cover strings move caravan cargo across hot-country ground without carrying full direct-sun shielding."
  pressure "Every schedule is hostage to geometry — a quarter-hour slip strands a string till the sky moves, seasonal drift rewrites the tables, and ground changes that break a shadow's reach can sever a trunk route until the survey covers chart the network a new line."
  variation "Freight covers work the generous trunk shade in strings; couriers sprint the tight connections solo; survey covers, hardened for provisional shadow, drive first on every line the ground or calendar changes."
  variation "Table houses anchor route towns, rated rocks support shade-house settlements, and a pilot's annotated seasonal tables pass to a successor with the vehicle."
end
