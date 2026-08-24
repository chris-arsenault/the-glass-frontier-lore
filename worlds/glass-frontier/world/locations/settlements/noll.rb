installation :noll do
  name "Noll"
  summary "Noll is a forested ring-hab settlement of twenty-three hundred people in the Glass Frontier, cultivating resonant structural timber beneath a transparent hull."
  playable_as :chronicle_location
  aka "Nol-Avaren"
  subkind :settlement
  status :complete
  tags :"ring-hab", :"ring-era", :ecology, :materials, :trade, :"structural-freq"
  prominence :recognized
  population 2300
  population_band "About twenty-three hundred residents"
  role "Coppice forestry and cultivation of resonant structural timber"
  setting "A forested crescent enclosed by old transparent hull panels"
  access "Three Arms Yard contract carrier to two shaded docks, then a narrow freight throat beside the root galleries"
  omit_facts :maintained_by

  prose <<~PROSE
    Trees rise from deep troughs along the inner curve. Houses and workshops stand on woven platforms above the root galleries, where pumps, fungal beds, and structural sounding lines run beneath the soil. Moving shades cross the outer hull to create short seasons around each stand.

    The original arboretum survived as roots, dormant stools, and a working water spine. Rekindling growers restored the transparent hull and cut rotation paths through the new forest. A mature stool sends many straight stems after harvest. Growers keep selected branches under tension, graft roots across damaged troughs, and carry a low structural tone through the water. The wood sets around that load and retains its curve after cutting.
  PROSE

  prose <<~PROSE, section: :economy, heading: "A Forest Sold by Future Shape"
    Buyers reserve stems while they are still growing. A shipwright brings a rib template, a builder specifies an arch, or an instrument maker asks for a narrow twist. Noll workers set weights and grafts around the young wood, then tend it through several cutting cycles. Ring-era grafting plates call the cultivar and its crescent Nol-Avaren; dock manifests shortened both to Noll.

    #{ref :navren, "Navren"} commands the longest reservations. Its fibers carry a structural tone evenly through bends and joints, making it useful for hull braces, pressure frames, and large instruments. Offcuts become tool handles and sounding wedges sold from the dock markets.

    Harvest crews mark every cut with the stool, shade season, imposed load, and grower's hand. Navren carries no ringglass vein. Once the cut wood dries, its living response closes and the imposed grain holds one stable curve. Those marks remain on finished pieces so later repairers can orient it as it grew.
  PROSE

  prose <<~PROSE, section: :economy, heading: "The Inward Shoots"
    New shoots across three separate stands have turned toward one sealed root gallery. Their tips press against floors, drainage walls, and old access covers while the rest of each tree follows its assigned load.

    Sounding lines place a slow structural pulse beneath the gallery. The pulse matches healthy navren, though the sealed plans describe pumps and empty service channels. Growers have cleared one cover and exposed fresh grafting marks on its inner face.

    Two stands carry paired spars reserved by Three Arms Yard, and the inward turn has pulled both away from their templates. Opening the gallery could save the root stools and ruin the contracted shapes. Holding the shoots through another cutting cycle preserves the order while their pressure rises against a drainage wall shared by three household troughs.
  PROSE

  gm_note :appears, "Reaching Noll takes a #{ref :three_arms_yard, "Three Arms Yard"} contract carrier to one of two shaded docks and then a narrow freight throat beside the root galleries, so a party arrives and leaves on the yard's timetable instead of its own."
  gm_note :triggered_by, "Asking to buy timber gets an offer of a place in a queue. Stems are reserved while still growing and shaped to one named buyer's template, which leaves a visitor the dock-market offcuts or somebody else's reservation to buy out."
  gm_note :complicates, "Every cut carries the stool, shade season, imposed load, and grower's hand, and the marks stay on the finished brace so a repairer can orient it as it grew. A salvaged or stolen #{ref :navren, "navren"} frame therefore names the stand it came out of."
end

relate :rel_noll_located_in_frontier, :located_in, :noll, :the_glass_frontier, since: 2305 do
  prose "Noll cultivates a forest inside a transparent ring crescent."
end

relate :rel_noll_supplies_rib, :supplies, :noll, :rib, since: 2435 do
  prose "Noll grows curved navren frames for Rib's doors and new passages through the pressure reef."
end

relate :rel_noll_supplies_three_arms_yard, :supplies, :noll, :three_arms_yard, since: 2435 do
  prose "Three Arms Yard orders paired navren spars for kite frames that must flex across separate loads."
end

relate :rel_rib_depends_on_navren, :depends_on, :rib, :navren do
  prose "Rib uses pre-shaped navren frames to hold new doors and passages while its pressure reef grows around them."
end
