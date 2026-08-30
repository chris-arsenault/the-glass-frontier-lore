encyclopedia :the_boards do
  name "The Boards"
  summary "The Boards are the ring-era public departure boards that still update on schedule in older settlements, posting arrivals and connections for routes the Glassfall ended. Their cycle keeps perfect time, and the settlements beneath them keep time by it."
  kind :phenomenon
  subkind :persistent_condition
  status :complete
  topics :"ring-era", :mystery, :navigation, :trade
  prevalence :common
  appears_when any: { place: [:urban, :market, :dock] }
  medium "Ring-era civic display boards in public halls, markets, and dock concourses"
  nature "Elven public infrastructure still executing its posting cycle"
  function "Settlements use the boards' fixed cycle as a public clock and meeting reference"

  descriptive_identity(
    signs: "A tall dark panel of worked glass over a market or concourse, ticking through crisp " \
           "bright route listings in the ring's civic hand — departures, platforms, connections — " \
           "with each line arriving and clearing on a cycle steady enough to set gauges by.",
    effects: "The postings name routes, berths, and junctions of the intact ring, and the cycle " \
             "repeats with astronomical regularity. Markets open at first-posting, shifts change " \
             "at the long clear, and 'under the boards' is the meeting place in every town " \
             "that has one.",
    hazards: "Reading the boards for travel is a newcomer's error with a long local comic " \
             "tradition; the routes they post have been closed since the Glassfall."
  )

  prose <<~PROSE
    In the older halls of Sithari, in Lowbank's market vault, over dock concourses across the settled fragments, the ring's departure boards are still working. A board is a tall panel of worked dark glass that ticks through route listings in the ring's clean civic hand — departures, platforms, connections — each line posted bright, held, and cleared on its cycle. The #{encyclopedia_ref :elves, "elven"} systems behind them have run unattended since the Glassfall, and the routes they post ended the same day: the boards announce services for a transit network that survives as debris.

    What the settlements kept is the cycle. The posting rhythm repeats with a regularity that instrument shops check their gauges against, and public life arranged itself around it generations ago. Markets open at first-posting. Shifts change on the long clear, the stretch where the board wipes and rebuilds its listings. "Under the boards" means the meeting spot in any town that has one, and "by the boards" attached to an appointment means the speaker intends to be punctual. Registrars in Sithari date documents by board cycle alongside the calendar, and the two systems have drifted apart by a known, published constant.
  PROSE

  prose <<~PROSE, section: :structure, heading: "What the Listings Say"
    The listings are a fixed repertoire with living details. Route names, berth numbers, and junction codes repeat identically cycle after cycle, and archive projects have matched most of them to the ring's registers — a board is, among other things, a public map of the transit system as it stood on its last ordinary day. The living details are the exceptions that keep board-watching a habit beyond timekeeping: individual listings occasionally change. A connection code updates. A platform reassigns. The Verathi civil registry logs every change on its board and has done so since the Rekindling; the log shows clusters of changes in some years and none in others, and the registry publishes the log with the plain note that the reassigned platforms belong to stations that no longer exist.
  PROSE

  cue "Above the market crowd a dark glass panel ticks through bright departure listings in the ring's civic hand, and three separate people check its rhythm against their wrist gauges as they pass."
  cue "Two traders settle a delivery time with the phrase 'second posting after the long clear,' and both write it down as if it were an hour."
  affordance "The board cycle is the steadiest public clock in the system — free, visible, and identical in every town that has one — and its fixed listings give archivists a preserved map of the ring's last working day."
  pressure "A listing that changes draws a crowd and an argument, because the board is updating a network that survives as debris, and the Verathi change-log gives every faction in the room something to cite."
  variation "Sithari's boards run behind polished gallery glass with attendants; Lowbank's market board is touched for luck until its lower corner has gone smooth."
  variation "Dock towns time cargo windows by the boards; garden habs with a working board mostly ignore it and keep water-clock time, and visitors from board towns find this barbaric."
end
