installation :talven do
  name "Talven"
  playable_as :chronicle_location, :homeland
  origin_blurb "A ringglass quarry town whose layered galleries preserve voices, tools, and music in the walls."
  aka "Tal-Venari"
  subkind :settlement
  status :complete
  tags :"ring-hab", :ringglass, :materials, :archives, :"signal-freq"
  prominence :recognized
  population 11500
  population_band "About eleven and a half thousand residents"
  role "Ringglass quarry, instrument market, and acoustic archive"
  setting "A thick extraction fragment whose galleries descend through layered ringglass"
  access "Echo Ledger courier branch to three freight docks and a passenger lock above the oldest quarry court"
  omit_facts :maintained_by

  prose <<~PROSE
    Clear bands in the glass preserve signal-frequency impressions. A hammer blow may release a few syllables from a work shift recorded centuries earlier. Broad cuts produce crowd noise, machine tones, or music spread across an entire wall. Talven sells structural glass, finished instruments, and carefully lifted recordings from strata whose date can be established.

    The settlement fills descending quarries cut through unusually thick ringglass. Homes and markets occupy each gallery after the working face moves deeper, leaving the active benches below a layered record of previous work.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Quarry Courts"
    Each quarry begins as a narrow test cut. Crews sound the exposed band, map structural stress, and open a stepped working face when the layer carries usable material. Finished galleries remain tall and shallow, with thick ribs left between them. Old lift shafts become light wells and air returns. Ring Age extraction marks call the fragment Tal-Venari; Famine crews shortened it to Talven on hand pumps and shelter doors.

    Residential courts occupy stable faces near the outer shell. Instrument shops prefer the middle galleries, where small offcuts remain plentiful. The deepest active benches carry cutters, brace crews, archive readers, and freight sleds. Dust locks separate every level because clear fragments can carry signal patterns into other cuts.

    Talven's main market opens onto the First Court. Sellers demonstrate a resonant instrument inside padded booths. Public performances use the broad quarry wall behind the market, whose old machine rhythm adds a low pulse to anything played against it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Lifting a Voice"
    Archive readers expose a recorded layer with hand wedges and broad dampers. They mark the direction of the crystal grain, seat listening points around the intended cut, and remove thin plates in sequence. A useful plate carries the same impression from at least three listening points. The rest becomes ordinary instrument stock.

    Provenance matters as much as clarity. Talven records the gallery, depth, adjacent layers, cut orientation, and every tool used. A vivid voice separated from its stratum has little historical value because another signal could have traveled into the band during later work.

    Families sometimes commission a search near an ancestor's former workplace. Most recover machinery and background speech. A clear personal recording draws visitors, claims of inheritance, and requests from archives elsewhere in the system.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Sixth Bench"
    The newest working face on the Sixth Bench returns a coordinated set of voices across forty meters of glass. The speakers count pressure changes, call lift positions, and repeat a place name absent from surviving ring maps. Their work rhythm matches the last decades of the Ring Age.

    Freight cutters need the same band opened to reach high-grade structural stock behind it. Archive readers are lifting the outer recordings with #{ref :tess_wedge, "Var's Wedge"}, one plate at a time. The first complete plate has drawn two independent translators to Talven, and both hear a different division between the words.
  PROSE

  gm_note :triggered_by, "A blow against a gallery wall releases a few syllables of whoever worked that layer, so a brawl, a fall, or a dropped crate answers back in centuries-old voices and brings an archive reader asking exactly what was struck and where."
  gm_note :complicates, "Dust locks stand between every level because clear fragments carry signal patterns down into other cuts; a party moving glass, an instrument, or a lifted plate between galleries is logged at each lock, and unprovenanced material is held there."
  gm_note :appears, "Freight cutters want the Sixth Bench band opened for the structural stock behind it while the archive readers lift its recordings one plate at a time, and anyone arriving with a crew, a schedule, or a translation gets pulled onto one side of that."
end

relate :rel_talven_located_in_frontier, :located_in, :talven, :the_glass_frontier, since: 2140 do
  prose "Talven occupies a glass-rich fragment in the inhabited ring."
end

relate :rel_talven_supplies_echo_ledger, :supplies, :talven, :echo_ledger_conclave, since: 2435 do
  prose "Talven supplies provenanced signal plates and cut records to the Echo Ledger Conclave."
end

relate :rel_echo_ledger_studies_talven, :studies, :echo_ledger_conclave, :talven, since: 2435 do
  prose "Conclave listeners compare Talven's plate-lifting methods with recordings recovered elsewhere in the system."
end

relate :rel_echo_ledger_studies_tess_var, :studies, :echo_ledger_conclave, :tess_var, since: 2435 do
  prose "Conclave listeners document Renn Var's grain mapping and the signal loss produced by each rejected cut."
end
