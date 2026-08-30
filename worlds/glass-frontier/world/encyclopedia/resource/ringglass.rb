encyclopedia :ringglass do
  title "Ringglass"
  kind :resource
  subkind :material
  status :complete
  summary "Ringglass is the crystalline material of the broken orbital ring and the principal medium used to concentrate and channel ambient resonance."
  reviewed "2026-03-19"
  topics :resonance, :materials, :trade
  prevalence :common
  available_globally
  function "Concentrates and channels ambient resonance"
  grades "Aggregate, refined and intact"
  availability "Low grade is abundant; intact ring-era pieces are finite"

  cue "Raw ringglass is sorted by vibrating it and reading the crystal's natural frequency affinity and purity."
  cue "Intact pieces retain smooth surfaces with endless self-repeating detail and multi-frequency tuning no refinery can reproduce."
  affordance "Cut, tuned, and mounted ringglass concentrates ambient resonance for construction, household tools, kites, communications, and industrial equipment."
  pressure "A cut across the crystal planes fractures the piece and kills its resonance, with no second attempt on the same fragment."
  variation "Aggregate is cheap, abundant mixed crystal used in construction, household tools, and refinery feedstock."
  variation "Refined ringglass is processed and tuned to a specific frequency band for standard commercial use."
  variation "Intact ringglass retains ring-era configurations that no modern refinery can reproduce."

  descriptive_identity(
    appearance:
      "Crystal from the broken ring, met in three grades: aggregate — " \
      "small mixed fragments in soil, concrete, and cheap tools; " \
      "refined — cut, purified stock tuned to one frequency band; and " \
      "intact — large ring-era sections whose surfaces have the " \
      "smoothness and endless self-repeating detail of the builders' " \
      "own work, carrying multi-frequency tuning no refinery can " \
      "reproduce.",
    working:
      "Raw material is sorted by vibrating it and reading what comes " \
      "back, cut along its crystal planes to isolate consistent " \
      "structure, tuned with pressure, heat, and reference crystals " \
      "until it prefers one frequency, and mounted in a housing that " \
      "suits the use — the crystal resonates through contact, so the " \
      "mount shapes the performance.",
    risks:
      "The cut decides everything: across the planes, internal stresses " \
      "fracture the piece and its resonance is gone, with no second " \
      "attempt on the same fragment. An intact piece has no ordinary " \
      "price — parties negotiate, bid, or fight, and its value follows " \
      "what the configuration turns out to do, which can take months " \
      "of study to establish.",
  )

  prose <<~PROSE
    Ringglass is the crystalline material the orbital rings were built from. It is the primary medium through which ambient #{encyclopedia_ref :resonance, "resonance"} is concentrated and channeled into practical applications.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Sources"
    Three sources feed the ringglass trade.

    **Fallout deposits.** Debris from the #{ref :the_glass_frontier, "Glass Frontier"} seeded Kaleidos's soil, riverbeds, and rock strata with small fragments. Surface mines follow basins and channels where the falling glass accumulated. Most deposits yield mixed, inconsistently aligned stock for construction aggregate, refinery feed, and household tools.

    **Shear salvage.** The debris field between Kaleidos's atmosphere and the ring habs holds larger pieces with cleaner crystal structure and more consistent alignment. Salvage crews recover loose fragments and intact structural sections. Some sections retain a ring-era tuning and need only a sound cut to enter service.

    **Hab reclamation.** Ring habs sell surplus members from their own structures and debris collected against their hulls. The stock commands high prices because it tends to be large, pure, and still marked by its original tuning.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Grades and Trade"
    Ringglass is the principal traded material of the #{ref :kaleidos_system, "Kaleidos system"}. The trade recognizes three broad grades.

    **Aggregate.** Small fragments with mixed crystal structure and weak or inconsistent response become ringglass-laced concrete, reinforced foundations, lanterns, stoves, heaters, and refinery feed. Surface mines ship it by the bulk hold from their sorting floors to construction markets.

    **Refined.** Cutters purify and tune consistent stock to one frequency band for kites, communication arrays, and industrial equipment. Surface, Shear, and ring-hab refineries employ specialized saws and skilled #{encyclopedia_ref :tuners, "Tuners"}; one fractured cut destroys the piece's response. A sound kinetic-array crystal can sell above a hold of aggregate, so refined stock travels established routes under escort. Factions draw revenue from their refineries or from the routes that carry the finished cuts.

    **Intact.** Large ring-era sections retain complex multi-frequency configurations beyond current replication. Most come from Shear salvage or hab reclamation and surface one at a time. Buyers negotiate or bid after instrument teams establish what the configuration does, a study that can take months. Until then, the legible surfaces and measured responses provide the only basis for custody and price.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "Processing"
    Refineries turn raw ringglass into working cuts through sorting, cutting, tuning, and mounting.

    **Sorting.** A reference vibration reveals a crystal's natural frequency affinity, internal consistency, and purity. Automated floors handle aggregate; experienced sorters read high-value pieces by instrument and touch.

    **Cutting.** Saws follow the crystal planes to isolate consistent structure. A cut across those planes releases the internal stresses, fractures the piece, and kills its response. Aggregate floors use industrial saws; refined work uses precision tools and cutters trained to follow the returning tone.

    **Tuning.** Controlled pressure, heat, and sympathetic vibration from reference crystals align the cut toward a target frequency and damp the others. Tuners follow the response as the internal structure settles; an expert can bring marginal stock into the next grade.

    **Mounting.** Metal frames carry structural cuts, insulated casings hold kinetic arrays, and shielded enclosures isolate signal equipment. Ringglass transmits resonance through physical contact, so the housing shapes the finished assembly's response.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Scarcity"
    Aggregate remains abundant in the debris field and deep surface deposits. High-grade stock is finite and increasingly costly to recover. Crews picked over the accessible Shear salvage decades ago, the richest surface deposits are claimed, and current refineries cannot reproduce an intact ring-era configuration.

    Aggregate therefore stays cheap, refined glass supports competitive refinery trade, and every intact piece enters a smaller market than the one before it.
  PROSE

end
