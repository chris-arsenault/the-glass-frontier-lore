installation :lumenshard do
  name "Lumenshard"
  summary "Lumenshard is the largest settlement in Miraeth, occupying terraces beneath the crystal-veined canopy of the region's central forest basin."
  playable_as :chronicle_location
  context_tags :surface, :ringglass_rich
  subkind :settlement
  status :complete
  population 63_000
  population_band "About sixty-three thousand across the central basin and ridge wards"
  role "Largest Rooted Grove settlement and market for basin agriculture and graftwood"
  setting "Terraces under a crystal-veined forest canopy in central Miraeth"
  access "Mountain road, basin canals, and shower-rated kite field"
  tags :surface, :ecology, :resonance, :ringglass, :trade
  prominence :recognized

  descriptive_identity(
    setting:
      "Stone terraces around Miraeth's largest basin, the old southern " \
      "wards roofed by a living canopy whose crystal-veined branches meet " \
      "over the streets — green light by day, veins glowing after dusk, " \
      "brightest after a shower. Trunks rise through courtyards and " \
      "workshop floors, six channels thread the orchards toward a reed " \
      "lake, and the kilns, saw frames, and kite field keep to bare stone " \
      "on the north ridge.",
    activity:
      "This is a farm market first: grain milling, fruit preserving, " \
      "timber cutting, channel work, and evening markets gathered beside " \
      "the public ovens while neighboring wards rest dark on their quiet " \
      "turn. Graftwood carpenters keep cut limbs fed until installation, " \
      "and freight comes down the inclined rail to the market yards.",
    access:
      "The town is reached by the mountain road, the basin canals, or " \
      "the shower-rated kite field on the ridge. Off-town traders — " \
      "Glasswake pilots, Kyther carriers, Sable Crescent houses — keep " \
      "permanent quarters near the north yards, wider and louder streets " \
      "than the shaded basin wards.",
    hazards:
      "An unauthorized draw writes its own confession: a bright path " \
      "through the roots straight to the device, empty young veins " \
      "beyond it, and a fine for replanting — or loss of channel access " \
      "if it was hidden. This season's thin showers have left the " \
      "graftwood short, orders late, and buyers bidding against each " \
      "other for existing stock."
  )

  prose <<~PROSE
    Lumenshard occupies the terraces around the largest basin in #{ref :miraeth, "Miraeth"}. Its oldest streets run beneath a canopy whose clear-veined branches meet over the roofs. Newer wards climb the bare northern ridge, where the kite field and heavy workshops can draw power without pulling the central root mat out of balance.

    The town is a farm market, woodworking center, and regional service town. The #{ref :lumenshard_conservatory, "Lumenshard Conservatory"} keeps its main offices here, but most residents do not work for it. They grow food, maintain channels, cut and fit timber, mill grain, preserve fruit, build instruments, or carry goods between the mountain valleys and the western ports.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Under the Canopy"
    The central basin slopes gently toward a reed lake. Six principal channels leave the mountain intake and divide through orchards before reaching it. Settlement terraces stand between the channels on low stone embankments. Footbridges use living graftwood laid in pairs; each bends with its banks during wet weather and is replaced when the clear veins stop answering together.

    The oldest canopy covers the southern wards. Trunks rise through courtyards and workshop floors because later buildings were fitted around them. Upper rooms often open onto branch walks. Light enters green during the day and leaves through crystal veins after dusk. The effect is brightest after a shower and quietest when a ward is resting its field.

    Heavy work stays on the north ridge. Kilns, saw frames, concentrators, and the kite field stand on separate stone foundations above the root line. Freight descends by inclined rail to the market yards. Strict draw limits protect the basin, but the location also keeps noise, smoke, and incoming cargo away from narrow central streets.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Harvest and Craft"
    Food leaves Lumenshard in greater volume than crystal-bearing material. The basin produces orchard fruit, grain, tubers, mushrooms, pond fish, oils, and medicinal plants. Markets grade goods by watershed because water and soil give neighboring basins distinct flavors. Buyers who arrive only for luminous wood discover that most stalls sell supper.

    Living graftwood is cut during cool wet periods. Growers choose limbs whose removal will redistribute stress into healthy roots, then carpenters keep the cut surface fed until installation. The wood is used for flexible roof members, bridge frames, ship interiors, and braces around old masonry. It commands a high price because each piece requires years of growth and days of coordinated work.

    Instrument makers buy smaller crystal-veined branches. Their natural variation suits broad, forgiving responses rather than precise calibrated arrays. A tool handle that absorbs a workshop's repeated vibration may come from Lumenshard. So may the wet frame around a pump that must move slightly without cracking its pipe.
  PROSE
  prose <<~PROSE, section: :governance, heading: "Water and Quiet"
    Six ward assemblies control the channels that cross their terraces. A basin table, composed of delegates from each ward and the outlying farms, sets the seasonal water order and the periods when field draw must fall. The Conservatory holds one advisory seat. It can publish a reading and cannot open a gate.

    Quiet periods rotate across town. Street lamps dim, workshop lines disconnect, and households use stored heat while a section of root mat takes fresh grain. The schedule is public and ordinary. Bakers move their firing day. Inns tell visitors which bridge lighting will be dark. Children carry covered lanterns through wards whose canopy gives enough light to walk by.

    Violations leave evidence in the grove. An unauthorized draw produces a bright path through roots toward the device and empty young veins beyond it. Fines pay for replanting and lost harvest. Deliberate concealment brings loss of channel access, a penalty more serious than money in a basin town.
  PROSE
  prose <<~PROSE, section: :people, heading: "Town Life"
    Lumenshard households often combine trades. A carpenter's family may also hold an orchard strip. Channel workers keep fish ponds. Conservatory readers take market shifts during harvest. This overlap makes basin disputes personal and informed: the person arguing for workshop power may also own trees above the affected gate.

    Meals use what the wet terraces produce. Public ovens stand on isolated stone loops so their heat does not enter the root mat. Evening markets gather beside them, bright under the canopy while adjoining residential streets rest dark. Visitors mistake the light pattern for wealth until they learn that the brightest market is surrounded by wards taking their quiet turn.

    Glasswake pilots, Kyther carriers, and Sable Crescent traders keep permanent houses near the north yards. Their streets are wider, louder, and less shaded than the old basin wards. Lumenshard residents use them for late repairs and early departures, then complain that the ridge never sleeps.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    A thin shower season has left new growth with fewer clear veins than expected. The basin table has shortened workshop draw and extended quiet periods in two southern wards. The Prismwell Kite Guild's records show that its collection flights left the registered fall untouched. Growers are testing upstream soil and the mountain intake for the missing grain.

    The reduction has not threatened food or household power. It has cut the graftwood marked for bridges and delayed several instrument orders. Buyers are offering higher prices for existing stock, while ward assemblies resist harvesting older limbs to meet contracts written before the fall was measured.
  PROSE

  gm_note :appears, "Wards take their quiet turn in rotation, so an evening errand crosses streets with dimmed " \
                    "lamps, disconnected workshop lines, and households on stored heat while the market two " \
                    "terraces over is bright. The schedule is public, and an inn will say which bridge lighting " \
                    "goes dark tonight."
  gm_note :triggered_by, "Running a resonant device in the basin without a ward's grant shows as a bright path " \
                         "through the roots pointing straight at it, with empty young veins beyond. The fine pays " \
                         "for replanting and lost harvest; concealing the draw costs channel access instead."
  gm_note :complicates, "A thin shower season has left new growth short of clear veins, so the graftwood marked " \
                        "for bridges is committed and instrument orders are late. Buyers are outbidding each other " \
                        "for existing stock while ward assemblies refuse to cut older limbs to fill contracts " \
                        "written before the fall was measured."
end

relate :rel_lumenshard_in_miraeth, :located_in, :lumenshard, :miraeth, since: 2192 do
  prose "#{ref :lumenshard, "Lumenshard"} fills the largest cultivated basin in Miraeth."
end
relate :rel_lumenshard_hosts_conservatory, :hosts, :lumenshard, :lumenshard_conservatory, since: 2286 do
  prose "Lumenshard hosts the Conservatory's offices and field yards without placing the town's water or grove assemblies under its control."
end

relate :rel_prismwell_operates_in_lumenshard, :operates_in, :prismwell_kite_guild, :lumenshard do
  prose "Prismwell collection flights use Lumenshard's shower-rated kite field and supply the records against which growers measure the season's fall."
end
