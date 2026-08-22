installation :keelward do
  name "Keelward"
  playable_as :chronicle_location, :homeland
  origin_blurb "Sithari's crowded arrival district of shuttle fields, freight rail, port hostels, and old neighborhoods."
  subkind :settlement
  population 460_000
  population_band "About four hundred sixty thousand residents across the eastern wards"
  role "Sithari's orbital-transfer, freight and arrival district"
  setting "The eastern sprawl between the old city and its surface-access terminals"
  access "Orbital shuttles, kite fields, freight rail and city transit"
  tags :surface, :orbital, :transport, :trade, :resonance
  prominence :recognized

  prose <<~PROSE
    Keelward is the broad eastern district where #{ref :keel, "the Keel"} reaches #{ref :sithari, "Sithari"}. Orbital shuttles descend to its outer fields, kite traffic uses the shorter inner pads, and freight rail carries cleared loads west into the city. About four hundred sixty thousand people live among the terminals, yards, warehouses, older neighborhoods, and port hostels such as #{ref :fourth_bell_house, "Fourth Bell House"}.

    For many visitors, Keelward is Sithari. They first see its landing lights through filtered cloud, pass its inspection halls, sleep near its rail lines, and conduct their business without entering the old center. The district speaks every major trade register in the system. Its signs lead first to transfers, food, lodging, clinics, and cargo claims; civic monuments appear further west.
  PROSE
  prose <<~PROSE, section: :geography, heading: "From Field to City"
    The outer terminals occupy a high, open tableland beyond the dense city. Heavy shuttles use reinforced pads there and connect to pressurized arrival halls by ground carriers. Closer in, low craft and #{ref :kite_sail, "kites"} use narrow fields separated by catch fences and collapsible roofs. Freight rail begins below the customs halls and runs west through warehouses built over older surface roads.

    Housing fills the spaces between successive port boundaries. A row of workers' courts that once faced open fields may now sit behind a cargo shed. Former farm lanes carry food stalls and foot traffic beneath elevated freight lines. The oldest neighborhoods retain wells and gardens; newer blocks rely on terminal utilities and lose heat when a berth row shuts down for repair.

    The abandoned foundations of Sithari's space-elevator project lie at the southern edge of the freight zone. The below-grade caissons remain fenced because their ringglass anchor beds were installed before funding stopped. Surface structures were dismantled, but maintenance records still list active readings beneath the cap.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Landing and Release"
    A vessel does not unload as soon as it touches a pad. Its field must settle against the berth frame first. Ground crews compare the strain across the landing gear, sound the pad's ringglass ties, and wait for the residual pull to fall inside the cargo class. A crane attached too early can transfer a kite's last momentum correction into the load or the terminal structure.

    Ringglass receives a second check. Crates are sorted by grade and measured response before they enter the warehouses. Two lots that answer strongly to the same reference tone are stored in separate bays, even when their paperwork names different uses. The rule protects workers from tools, fuel cells, and raw crystal coupling across a crowded floor.

    Passenger release follows the same field cycle but usually finishes first. Travelers cross into the arrival halls while their baggage remains behind a marked line. Keelward porters recognize an unsettled bay by the taut guide ropes and direct impatient passengers away before the warning lamps change.
  PROSE
  prose <<~PROSE, section: :trade, heading: "Carriers and Yards"
    #{ref :vantara, "Vantara"} keeps its largest surface operation in Keelward and runs scheduled orbital traffic. It shares the district with independent shuttle lines, family freight houses, passenger cooperatives, and guild carriers. The #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} maintains shower-rated repair bays near the inner fields. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} staffs cargo crews and negotiates common rates for haulers that lack their own surface workforce.

    Competition is most visible at the transfer board. A delayed orbital load may be divided among three surface carriers, each with different equipment and liability terms. Freight agents make a living matching cargo to the available berth, warehouse, and onward train before storage fees consume the margin.

    The district also handles people who arrive with no return booking. Seasonal workers rent bunks by the week. Migrants find rooms through family associations and workplace boards. Accord delegations generally pass through reserved lounges, but their cooks, technicians, and cargo travel through the same claims floor as everyone else.
  PROSE
  prose <<~PROSE, section: :people, heading: "Between Departures"
    Keelward lives on staggered time. Outer-terminal shifts follow orbital windows. Markets open for the workers leaving them. Schools schedule parent meetings across three common rotations, and apartment blocks post quiet hours by corridor rather than by a single night.

    Repair trades cluster beside the inner fields. Sail cloth dries from high frames, hull panels stand against workshop walls, and instrument shops keep loan counters for crews whose own equipment is still in quarantine. Travelers can buy a complete kit for surface weather without leaving the station streets. Residents complain that the same shops charge arrival prices all year.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Port Failures"
    Most accidents begin with haste: a crane attached during field settlement, a sealed crate moved before its response check, or a passenger crossing a live service line. Glassfall showers can close the inner fields with little warning, sending every low craft toward the heavy terminals. A closure fills the arrival halls faster than rail can clear them.

    The abandoned elevator caissons create a different hazard. Their buried anchor beds still draw a measurable structural load during some orbital alignments. The city vents the foundations and inspects the cap after each event. Unauthorized entrants continue to reach the lower works through freight drains and former construction tunnels.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    A spreading shower front has moved several scheduled descents from the inner fields to the outer terminals. Repair yards are full, passenger halls are running on floor bedding, and independent carriers are taking freight that larger lines cannot clear. Inspectors have also recorded a new warm line across the elevator cap, directly above an anchor bed listed as disconnected.
  PROSE
end

relate :rel_keelward_located_in_sithari, :located_in, :keelward, :sithari, since: 2305 do
  prose "Keelward spreads east from #{ref :sithari, "Sithari"}'s old center to the city's surface-access terminals."
end
relate :rel_keelward_terminus_keel, :terminus_of, :keelward, :keel do
  prose "The surface-access spurs of #{ref :keel, "the Keel"} terminate at Keelward's shuttle and freight fields."
end
relate :rel_pell_freight_operates_keelward, :operates_in, :pell_freight_assembly, :keelward, since: 2328 do
  prose "The #{ref :pell_freight_assembly, "Pell Freight Assembly"} supplies cargo crews and pooled handling contracts in Keelward."
end
