installation :wash_four do
  name "Wash Four"
  summary "Wash Four is a decontamination settlement in the Glass Frontier, occupying a service cylinder of wash drums, drying lofts, and textile-trace workshops."
  playable_as :chronicle_location, :homeland
  context_tags :"realm:ring_habitat"
  origin_blurb "A sealed hab where textile traces, missing routes, and careful washing preserve old signals."
  aka "Decontamination Habitat Four"
  subkind :settlement
  type_of :settlement
  status :complete
  tags :"ring-hab", :trade, :household, :resonance, :"signal-freq"
  prominence :recognized
  population 3100
  population_band "About thirty-one hundred residents, plus crews waiting through wash cycles"
  role "Decontamination, textile cleaning, and trace recovery"
  setting "A service cylinder filled with wash drums, drying lofts, and inspection bays"
  access "Carom carrier service to paired dirty and clean docks connected by a one-way cargo route"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A service cylinder split into a dirty end and a clean one: wash " \
      "drums and inspection bays where loads arrive, drying lofts where " \
      "warm air lifts cloth through hanging frames, and markets on the " \
      "floor below the lofts.",
    activity:
      "Garments, webbing, and soft cargo move through separate drums " \
      "sorted by material and source while trace washers sample every " \
      "drain; the clean-side stalls sell repaired pressure layers, " \
      "sailcloth, bedding, and bundles of authenticated scrap textile.",
    access:
      "Carom carriers serve a pair of docks, one dirty and one clean, " \
      "joined by a one-way cargo route. Every arriving person and load " \
      "enters on the dirty side.",
    hazards:
      "Anything sewn into a lining travels a different route from its " \
      "owner and surfaces at the clean market hours later. A wash can " \
      "also read back: a coherent pattern drawn into the rinse water may " \
      "name the tool, room, or signal source that last pressed itself " \
      "into the cloth."
  )

  prose <<~PROSE
    Every arriving person and load enters on the dirty side. Clothing, webbing, soft cases, filters, and insulation move through separate drums according to material and source. The clean side opens onto drying lofts where warm air lifts cloth through hanging frames. Markets occupy the space below, selling repaired pressure layers, sailcloth, bedding, uniforms, and bundles of authenticated scrap textile.

    Ringglass mordant in pressure cloth retains coherent signal traces where friction or load drives them into the fiber. A mining coat carries tool rhythms at its cuffs. A courier bag records repeated route beacons along its straps. Each wash weakens the quietest layer; heat and a stronger tuned pattern can overwrite it. Workers draw recoverable traces into rinse water, fix useful portions onto ceramic, and discharge the remainder through grounded drying frames.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Thirty-One"
    #{ref :bay_thirty_one, "Thirty-One"} receives garments associated with injuries, failed seals, contaminated cargo, and disputed journeys. #{ref :tess_orr, "Tess Orr"} lays each piece across an isolated table and maps its strongest trace before any liquid touches it.

    The first wash uses plain water and hand pressure. Later cycles add heat, mineral grit, tuned paddles, or stillwater according to the map. Trace washers sample every drain. A sudden coherent pattern can identify the tool, room, or signal source that last impressed the cloth.

    The bay keeps the #{ref :red_sleeve, "Red Sleeve"} for field comparisons. Its fabric has carried the same speaking voice through three owners and many complete wash cycles.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Clothes With a Chain of Custody"
    Wash Four residents mark garments by use. White stitching records pressure integrity, blue records biological treatment, yellow records signal clearing, and green records a recovered trace stored with the owner. Repairers place each new mark beside the latest treatment and leave the older chain visible. The service designation Decontamination Habitat Four remains painted across the cylinder; Rekindling manifests shortened it after clean-route pilots made the hab a transfer point.

    Formal clothing often includes one visibly replaced panel from a family garment. Work crews exchange marked cuffs when members change jobs. Children receive layered coats whose inner seams carry the wash marks of older siblings and cousins.

    Traders pay more for cloth with a complete route through the dirty dock, wash bay, repair loft, and clean market. The stitched chain matters on ships where fabric passes through several hands before becoming a sail, seal, sling, or pressure patch.
  PROSE

  prose "#{embed :repeated_voice}", section: :present_day, heading: "The Repeated Voice"

  gm_note :complicates, "Arriving characters enter on the dirty side and their coats, webbing and soft cases split into separate drums by material and source, " \
                        "so anything sewn into a lining travels a different route from its owner and reappears at the clean market hours later."
  gm_note :triggered_by, "Ask what a stranger's stitching says and it reads out: white for pressure integrity, blue for biological treatment, yellow for signal clearing, " \
                         "green for a trace the owner still holds, with every older mark left standing beside the new one."
  gm_note :appears, "Cloth sells here on its chain, so a piece with an unbroken route through dirty dock, wash bay, repair loft and clean market fetches a premium and a gap in the marks invites questions about that cycle."
end

relate :rel_wash_four_located_in_frontier, :located_in, :wash_four, :the_glass_frontier, since: 2305 do
  prose "Wash Four operates in a restored decontamination cylinder on the ring."
end

relate :rel_wash_four_supplies_carom, :supplies, :wash_four, :carom, since: 2435 do
  prose "Wash Four cleans and certifies courier bags, insulated cloth, and frame webbing for Carom."
end

relate :rel_tess_orr_operates_bay_thirty_one, :operates_in, :tess_orr, :bay_thirty_one, since: 2435 do
  prose "Tess Orr maps disputed garments at Thirty-One before the first wash."
end

relate :rel_tess_orr_studies_red_sleeve, :studies, :tess_orr, :red_sleeve, since: 2435 do
  prose "Tess Orr uses the Red Sleeve to compare the voice recovered from later garments."
end
