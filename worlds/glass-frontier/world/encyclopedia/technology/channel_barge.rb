encyclopedia :channel_barge do
  name "Dovran"
  summary "Dovrans are broad, shallow vessels that carry people and goods through Korvath's Dovra. Household and village crews reconfigure their decks for cargo, passengers, markets, and flood work."
  kind :technology
  subkind :vessel
  status :complete
  log "2026-08-31 — Renamed Channel Barge to Dovran; the Dovra-derived vessel name grounds the type in Korvath's waterways instead of a generic hull description."
  capacity "A family or village crew, a shallow cargo deck, and removable passenger or living shelters"
  topics :transport, :trade, :"outer-system", :resonance, :ecology
  prevalence :common
  appears_when all: { place: [:waterway] }

  descriptive_identity(
    appearance: "Broad, shallow, and plain below the waterline, timber over ceramic ribs, loaded so it can cross " \
                "water little above a pilot's knee. Deck houses, cargo rails, and shelters move between sockets, so " \
                "the same hull reads as grain carrier, passenger boat, or flood ferry depending on the season. At " \
                "night small lamps hang low over both sides so another pilot can read its draft.",
    aboard: "The deck house holds bunks, a stove, record shelves, and a dry locker for route tallies, often with " \
            "several generations living around the work. Children handle lines and landings before they ever take a " \
            "pole, and the oldest pilot aboard may run the route from memory without touching cargo.",
    behavior: "A small stern drive serves deep water; in the narrow channels the pilot works with poles, tow lines, " \
              "or a bank crew, sounding the bottom through a metal-shod pole whose returned tone tells silt from " \
              "buried iron sand. It settles on mud without damage and backs away when a channel closes ahead. A " \
              "Dovran with damaged ceramic ribs starts answering the river's resonance through its fittings and can " \
              "turn sideways under an otherwise manageable load."
  )

  prose <<~PROSE
    Dovrans carry people and goods through Korvath's #{ref :dovra, "Dovra"}. Their hulls are broad, shallow, and plain below the waterline. A loaded vessel can cross water that reaches little above a pilot's knee, settle on mud without damage, and back away after a channel closes ahead. Most belong to a household, village, mill, or water board rather than a long-haul carrier.

    Dovrans change during their working lives. Deck houses lift away. Cargo rails move between sockets. A grain vessel becomes a passenger boat for a gate-closing market and a flood ferry when the outer note changes. The hull and route license usually outlast several engines, crews, and channel maps.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Hull, Drive, and Pole"
    The hull uses local timber over ceramic ribs. The ceramic interrupts the broad native resonance carried by Korvath's wet iron sediment, keeping a gate, crane, or another vessel from pulling through the Dovran's metal fittings. Damaged ribs are replaced before cosmetic hull work because a Dovran that begins answering the river can turn sideways under an otherwise manageable load.

    A small stern drive handles deep or open water. In narrow channels the pilot uses poles, tow lines, or a bank crew. The sounding pole carries a metal shoe and marked grip. Its pressure tells the pilot how the bottom will hold; its returned tone distinguishes loose silt from buried iron sand and the ceramic apron near a gate.

    #{encyclopedia_ref :pole_thief, "Tolven"} make that reading less certain. The animals strike a sounding shoe from beneath the bank and can make firm ground feel suddenly alive. Experienced pilots pause after the first blow, look for the spreading rings, and use a second pole before changing course.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Route That Does Not Stay Put"
    A Dovran route is a sequence of depths, permissions, tow points, and gate intervals. The chart records its current line; pilots memorize the order in which its conditions appear. They learn the color of disturbed water, the angle of reed growth, the feel of bottom pressure, and which household controls the line fixed to a difficult bend.

    Water boards post closures at landing stairs and transmit them to neighboring gates. A local pilot still sounds the approach. Silt can rise after the notice left. A Dovran ahead can cut a new passage. Two registered gate tones can begin answering through saturated ground and release water into a channel the board believed quiet.

    At night, small lamps hang low over both sides of the hull so another pilot can read its loaded draft. Bright mast lights obscure the banks and are reserved for open water. Crews speak quietly near a gatehouse because the workers there may be listening for a pressure change beneath the chains.
  PROSE

  prose <<~PROSE, section: :people, heading: "Household Vessels"
    A working Dovran often carries several generations without making all of them crew. The deck house contains bunks, a stove, record shelves, and a dry locker for route tallies. Children learn lines and landing work before they take a pole. Older pilots may stop handling cargo and retain authority over the route because they remember channels no current map shows.

    Village Dovrans rotate crews by season. Orchard districts run hardest at harvest. Kiln settlements move clay inward and ceramic outward all year. Water boards maintain flat-deck Dovrans loaded with gate timber, earth baskets, pumps, food, and flood shelters. During an emergency any suitable vessel can be called into board service, with its lost work recorded beside the labor supplied from shore.

    Payment mixes freight fees, reciprocal carriage, and shares of the load. A vessel may deliver fruit for coin, return with repair tile owed to its home gate, and carry three passengers whose families supplied food during the last flood.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Tallies and Hidden Channels"
    Every cargo entering #{ref :lowbank, "Lowbank"} passes a tally house. The sealed record names the pilot, declared load, boards crossed, and the interval used at each registered gate. It can prove that a shipment followed an inspected route without publishing the small channels that make the route possible.

    The protection also permits concealment. A forged tally can move contraband into a legitimate warehouse. An honest pilot can carry one sealed crate through four jurisdictions and know only that every board accepted it. Port inspectors open suspicious cargo; water boards object when the inspection delays a vessel in a channel needed for flood work.

    Pilots preserve their local routes because those routes are their livelihood and their towns' emergency access. They share depths and closures freely when life is at risk. Ownership, cargo, and the quiet way around a port gate receive a different answer.
  PROSE

  cue "Local travel in #{ref :dovra, "Dovra"} means asking a household Dovran for deck space, and the fare is as often return carriage, repair tile, or a share of the load as it is coin."
  cue "At night, small lamps hang low over both sides of the hull so another pilot can read its loaded draft."
  affordance "A passenger in a hurry does not get a shortcut; the pilot sounds the approach even holding a posted closure, because silt rises after a notice leaves and a Dovran ahead may have cut a new passage."
  pressure "During flood work a water board can call any suitable vessel into service with its cargo aboard, recording the lost work beside the labor supplied from shore; its chartered work waits until the board releases it."
  variation "Deck houses lift away."
  variation "A grain vessel becomes a passenger boat for a gate-closing market and a flood ferry when the outer note changes."

end
