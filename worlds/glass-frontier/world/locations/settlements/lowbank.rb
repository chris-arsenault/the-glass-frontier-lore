installation :lowbank do
  name "Lowbank"
  summary "Lowbank is Dovra's largest port city on Korvath, spread across raised islands where three river channels reach the middle sea."
  playable_as :chronicle_location
  context_tags :outer_system, :surface, :urban, :waterway, :dock, :market
  subkind :settlement
  status :complete
  population 190_000
  population_band "About one hundred ninety thousand in the port and surrounding mound towns"
  role "Principal river-to-sea port of Dovra"
  setting "Raised islands and levees around three navigable river mouths"
  access "Coastal shipping, channel barges, road causeways, and scheduled kites"
  tags :"outer-system", :trade, :transport, :resonance, :governance
  prominence :recognized

  descriptive_identity(
    setting:
      "Seven earth mounds raised above the flood line where three river " \
      "channels reach the middle sea, joined by bridges at the center " \
      "and by ferries and detachable walkways at the edges. Painted " \
      "bands on every dockside column show the highest water of past " \
      "floods, and each quay carries the distinct hum of its isolated " \
      "crane drives, stopping at the warehouse wall.",
    activity:
      "Sea vessels work the western quays while channel barges pass " \
      "through the tally houses to the north and east, and independent " \
      "pilots bid for routes by water level and cargo draft. Behind the " \
      "docks, each mound keeps its own market day, and the ceramic " \
      "quarter fires pipe, tile, and the dead layers used under " \
      "resonance machinery across Korvath.",
    access:
      "Coastal shipping, channel barges, and scheduled kites reach the " \
      "city year-round; the road causeways connect only in dry weather. " \
      "The port authority inspects hulls and cargo seals, the water " \
      "boards inspect the routes, and river traffic moves only under an " \
      "independent pilot.",
    hazards:
      "A flood closes channels, gates, and lower streets at the water " \
      "boards' order, and every able resident joins their mound's crew " \
      "moving people upward. Divided authority bites in fair weather " \
      "too: cargo cleared into the city can be refused the channel it " \
      "arrived through."
  )

  prose <<~PROSE
    Lowbank stands on raised islands where three channels of #{ref :dovra, "Dovra"} reach deep water. The oldest wards occupy earth mounds built above the known flood line. Later docks extend along piles and floating quays. Causeways connect the inland road only in dry weather; river and sea traffic keep the city supplied when the road gates close.

    Lowbank handles grain, fruit, ceramic, salt, machinery, and passengers. The western quays form the city's largest shared workplace. Schools, hospitals, markets, theaters, religious houses, and residential streets spread across the higher mounds behind them.
  PROSE
  prose <<~PROSE, section: :geography, heading: "A City on Mounds"
    Seven principal mounds hold the permanent city. Bridges join the central five. The outer two connect by ferries and detachable walkways so storm water can pass between them without striking a fixed span. Each mound contains a high public court, a water cistern, and at least one building opened as flood lodging.

    Dock wards occupy the lower margins. Warehouses use breakaway ground floors and storage platforms that can be raised within their frames. Painted bands on every column show the highest water of recorded floods. New construction must display those marks rather than covering them with a cleaner finish.

    Fresh water arrives from an upstream channel through a buried ceramic line. Ringglass sensors at the intake read salt pressure through the wet ground and close the line before storm surge reaches it. Neighborhood cisterns cover several days of ordinary use. People still fill extra vessels when the outer-gate note changes.
  PROSE
  prose <<~PROSE, section: :operations, heading: "River and Sea"
    Sea vessels unload at the western quays. #{encyclopedia_ref :channel_barge, "Dovrans"} enter from the north and east, passing through tally houses that record cargo by channel. Cranes use tuned kinetic drives isolated from the native stone by thick ceramic beds. The isolation gives each quay a distinct hum that stops at the warehouse wall.

    Independent pilots control most river traffic. Sea carriers cannot simply send their own crews inland because channel depth, ownership, and direction change faster than their charts. Pilots bid by route, water level, and cargo draft. A good one can move a shipment around a closed gate without placing it on a road.

    The port authority inspects hulls, cargo seals, and ringglass installations. Water boards inspect the route itself. Their jurisdictions meet at the tally houses and frequently disagree. A cargo may be cleared to enter the city while the board refuses the channel it arrived through.
  PROSE
  prose <<~PROSE, section: :people, heading: "Mound Wards"
    Each mound has its own market day and flood crew. Central wards house courts, schools, print shops, and the older merchant halls. Eastern mounds hold boatyards, #{ref :ninth_kiln, "Ninth Kiln"}, and working neighborhoods tied to the river. The outer western mound receives long-haul crews and has the city's densest mix of languages, food houses, cheap beds, and hiring rooms. #{ref :the_reed_door, "The Reed Door"} keeps a detachable landing and opens its upper hall for flood lodging.

    Residents identify by mound and then by street. Flood work keeps that identity practical. Crews train together, store tools together, and know which households need help reaching the high court. New residents join a crew after one wet season, whether or not they own property.

    The city's ceramic workers have their own quarter near clean river clay. They make pipe, tile, cookware, electrical insulation, and the dead layers used under resonance machinery throughout Korvath. Kilns stand downwind on low platforms designed to flood without losing the firing floors.
  PROSE
  prose <<~PROSE, section: :governance, heading: "Port, City, and Water"
    Lowbank has a municipal assembly, a separate port authority, and seats on four water boards. None can govern the whole urban system alone. The assembly controls housing, roads, markets, schools, and public health. The port controls deepwater traffic. Water boards can close channels, gates, and lower streets when a flood requires it.

    Warehouse operators use those divided authorities when they can. A company may hold a valid port lease while concealing its owners from the city, and cargo rejected at one channel can appear at another under a different river tally. The local response has been procedural: shared ownership disclosures, cross-board inspectors, and public notice of sealed warehouse orders.

    Enforcement remains uneven. Lowbank's size supplies investigators and concealment in equal measure. Inspectors close individual firms while successor companies bid for the same leases through new owners. Municipal clerks now compare those bids with port payroll and water-board transit tallies before approving them.
  PROSE

  gm_note :appears, "Nothing moves in or out of Lowbank without an independent pilot, and pilots bid by route, water level, and cargo draft rather than by distance. A good one gets a shipment around a closed gate without ever putting it on a road."
  gm_note :triggered_by, "A permit, a clearance, or a dropped inspection belongs to one of three authorities and never to all of them. The assembly holds the streets and markets, the port holds deepwater traffic, and the water boards hold the channels, so cargo cleared into the city can still be refused the route it arrived by."
  gm_note :complicates, "When the boards close channels, gates, and lower streets, the causeways are already shut and every able resident is on their mound's flood crew. Anyone below the painted flood bands is moving upward with the rest of the ward, whatever else they had planned."
end

relate :rel_lowbank_in_dovra, :located_in, :lowbank, :dovra do
  prose "Lowbank occupies the deepest navigable mouths of #{ref :dovra, "Dovra"}."
end
