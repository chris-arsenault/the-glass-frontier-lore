geographic_location :sable_crescent do
  name "Sable Crescent"
  summary "The Sable Crescent is a warm river basin on Kaleidos whose marshes, cliffs, and canyons contain the system's densest concentration of Echo Rivers."
  playable_as :chronicle_location
  context_tags :surface, :waterway, :ringglass_rich
  subkind :region
  path "player/locations/regions/sable-crescent.md"
  status :complete
  reviewed "2026-03-20"
  tags :surface, :resonance, :archives, :"signal-freq"
  prominence :recognized
  position frame: :kaleidos_surface, latitude_deg: -4, longitude_deg: -55,
           size_class: :region

  descriptive_identity(
    setting:
      "A warm river basin hooked around an ancient impact floor, " \
      "marsh and flooded plain at its center, high cliffs and deep " \
      "canyons cutting the rim where crystal-bearing strata glow " \
      "faintly after sunset. Water moving through the laced sediment " \
      "comes back to the surface carrying voices, and at dusk the " \
      "exposed strata refract low sun through the marsh mist into " \
      "pale bands the residents call glasslight.",
    activity:
      "Shallow broad-bottomed boats carry most freight below the " \
      "cliffs, piloted by ear as much as eye, while farms work raised " \
      "beds in the delta soil and crews wash low-grade ringglass out " \
      "of the sediment traps after floods. Ledgerfall holds the big " \
      "market, Thornvault anchors the Echo Ledger Conclave's " \
      "listening work, and journeys are planned by water level and " \
      "gate schedule as much as by distance.",
    hazards:
      "A channel with a strong new signal may hide a fresh deposit or " \
      "an undercut bank, and an uncovered lamp in glasslight repeats " \
      "through several banks until another boat reads far closer than " \
      "it is. An upstream council holding water to save its own crop " \
      "sends a sharper rise into the next district, so the flood " \
      "arrives carrying somebody's decision."
  )

  prose <<~PROSE
    The Sable Crescent is a warm river basin on Kaleidos, shaped like a hooked arc around an ancient impact floor. Marshes and flooded plains occupy its center. High cliffs and deep canyons cut the rim, exposing crystal-bearing strata that glow faintly after sunset. The #{ref :kaleidos_echo_rivers, "Echo Rivers"} surface here in greater concentration than anywhere else in the system.

    Water ties the basin together and divides it. A town on the rim may stand directly above a stilt village and require a full day's travel to reach it. Channels move between wet seasons. Canyon roads end at stairs, ferries, or narrow lifts. Residents plan journeys by water level and gate schedule as readily as distance.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Geography"
    The Crescent covers a region roughly the size of a major river delta. Its curve follows the raised edge of an impact basin that channels runoff from the surrounding highlands. Water moves through crystal-laced sediment before returning to the surface in springs, cliff seeps, and broad marsh channels. By then it carries voices.

    #{ref :ledgerfall, "Ledgerfall"} occupies the northern rim where one river descends into the basin through a fan of speaking waterfalls. #{ref :thornvault, "Thornvault"} spans a deeper canyon to the west. South of both, the cliffs break into long terraces and finally disappear beneath reed marsh, open pools, wooded islands, and low fields protected by earth banks.

    The central floodplain changes with the season. During low water, old footpaths and field walls emerge from the mud. Rising water turns them into fish habitat and exposes routes through the reeds. Permanent buildings stand on stone rises or piles driven through the soft sediment. Temporary sheds, walkways, and animal pens are made to come apart before the flood reaches them.
  PROSE
  prose <<~PROSE, section: :people, heading: "People"
    Ledgerfall is the basin's largest market. Smaller communities line canyon rims, islands, levees, and river surfacing points. Some consist of a few extended households around a ferry or fish landing. Others support schools, clinics, mills, listening houses, and weekly markets reached from several watersheds.

    Farms work the rich delta soil where crystal content remains low enough for crops. Families grow grain, fruit, reeds, dye plants, and vegetables on raised beds. Fishing and managed ponds support the wetter settlements. Crews gather low-grade #{encyclopedia_ref :ringglass, "ringglass"} from sediment traps after floods, then wash and sound it before selling the aggregate for filters, road beds, and masonry.

    The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} brings money and skilled work into the basin. Its archivists employ boat crews, builders, paper makers, cooks, guides, and instrument repairers in addition to listeners. Thornvault remains the institutional center, while Ledgerfall and smaller listening houses handle much of the public traffic. Water boards and settlement councils govern the places around them.

    Crescent households learn which voices belong to living neighbors. People face one another when they speak near a loud channel. Door signals use light or touch as well as sound. A clear old voice can still halt a room, but most river speech passes through daily work without receiving an answer.
  PROSE
  prose <<~PROSE, section: :access, heading: "Across the Basin"
    Shallow boats carry most freight below the cliffs. Hulls have broad bottoms, protected propellers, and sounding poles for crystal sediment. Pilots read reed direction, current color, and the pitch returned through the pole. A channel with a strong new signal may also contain a fresh deposit or an undercut bank.

    Rim roads connect Ledgerfall, Thornvault, and the highland approaches. Inclined lifts move cargo between those roads and lower landings. Kites use platforms above the mist, where their arrays can settle before descending cargo by cable. Direct landings in the marsh are uncommon because wet ringglass can pull unevenly through a field.

    Flood notices travel from highland gauges to every water board downstream. Settlements mark expected levels on stairs and piles, move floating walkways, and open field banks in a set order. An upstream council that holds water too long can protect its own crop and send a sharper rise into the next district, so gate schedules are negotiated across the basin before the wet season.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Atmosphere"
    The Crescent is wet, warm, and acoustically dense. Crystal-bearing ground reflects and channels sound. A conversation in a canyon can reach the rim. A shout across open marsh arrives with undertones from the sediment, and the direction of a voice can shift as water fills another channel. Visiting #{encyclopedia_ref :tuners, "Tuners"} often need several days to separate current sound from the signal moving through water and stone.

    At dusk, exposed crystal strata catch the lowering sun and refract it through mist rising from the marsh. Residents call the resulting pale bands glasslight. Boats carry shaded lamps until the bands fade because an uncovered light can repeat through several banks and make another vessel appear closer than it is. Thornvault's upper galleries face the brightest canyon wall, while lower listening rooms remain near the river below.
  PROSE

  gm_note :appears, "Distance here is water level and gate schedule rather than ground. A rim town can stand directly above a stilt village and still cost a full day of stairs, ferries and narrow lifts to reach."
  gm_note :triggered_by, "Travel at dusk brings glasslight, and an uncovered lamp repeats through several banks of exposed strata until another boat reads as much closer than it is. Crescent crews run shaded lamps until the bands fade."
  gm_note :complicates, "Gate schedules are negotiated across the whole basin before the wet season, so an upstream council holding water to save its own crop sends a sharper rise downstream. Anyone the party is bargaining with below is already watching the highland gauges."
end

relate :rel_sable_crescent_on_surface_kaleidos, :on_surface_of, :sable_crescent, :kaleidos do
  prose "Sable Crescent is a surface region of #{ref :kaleidos, "Kaleidos"} — and the place where the Echo Rivers surface most clearly, which has shaped everything about it."
end

relate :rel_glassfall_manifests_at_sable_crescent, :manifests_at, :the_glassfall, :sable_crescent do
  prose "Ring debris left crystal-bearing strata throughout the basin and old signals in its underground water."
end

relate :rel_elven_disappearance_manifests_at_sable_crescent, :manifests_at, :disappearance_of_the_elves, :sable_crescent do
  prose "The basin's Echo Rivers preserve the cut voices and flattened harmonics associated with the elven disappearance."
end
