installation :verathi do
  name "Verathi"
  summary "Verathi is an eighteen-thousand-person ring habitat on the outer inhabited arc of the Glass Frontier, with a complete civil registry preserved through the Signal Famine."
  playable_as :chronicle_location
  subkind :settlement
  tags :"ring-hab", :governance, :divergence, :diplomacy
  prominence :recognized
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: 0.1, angle_offset_deg: 104
  status :complete
  population 18000
  population_band "About eighteen thousand residents"
  role "Independent ring-hab polity and early Reconnection embassy partner"
  setting "A stable ring fragment on the outer inhabited arc"
  access "Scheduled hab carriers and one public docking crescent"
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "An open ring hab of about eighteen thousand on the outer inhabited " \
      "arc, built as seven service districts, each wrapped around a " \
      "life-support loop that came through the Glassfall. One public " \
      "docking crescent handles everything that arrives.",
    activity:
      "Small carriers come and go constantly — pressure fittings, " \
      "closed-cycle crop cultures, and loop-inspection crews outbound — " \
      "while district councils and the hab assembly argue over which body " \
      "a given piece of work belongs to. Sithari's mission staff live " \
      "beside the docking crescent and stay out of local rulings.",
    access:
      "Scheduled hab carriers land at the one public crescent, which runs " \
      "close to capacity; an unscheduled arrival waits for a berth and " \
      "gets assigned one by whoever is free to do it. Visitors have been " \
      "admitted since the Reconnection, but any work touching a " \
      "district's air, water, food beds, or structural field needs that " \
      "district's consent.",
    hazards:
      "A deal struck with the assembly can die in any one of seven " \
      "district councils, and no majority overrides the refusal — the " \
      "freight spine is stalled that way now, with Third Service holding " \
      "out over its water return. Berth waits lengthen while the assembly " \
      "studies routes around the problem."
  )

  prose <<~PROSE
    Verathi is an open ring hab whose people emerged from the Signal Famine with a complete civil registry and no surviving belief that the old ring government still held authority over them. It answered the Reconnection signals, admitted visitors, and exchanged technical records. Its first dispute with Sithari concerned the terms of contact rather than whether contact should happen.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Service Districts"
    The hab is divided into seven service districts, each built around a life-support loop that survived the Glassfall. A district council controls work that can alter its air, water, food beds, or structural field. The hab assembly handles trade, docks, courts, and matters shared by all seven.

    No assembly vote can compel a district to accept a change to its life-support loop. The rule began as a repair boundary during isolation and became a constitutional limit. It slows large projects and keeps a central majority from moving physical risk into a smaller district.
  PROSE

  prose <<~PROSE, section: :relationships, heading: "Foreign Missions"
    The #{ref :verathi_exchange, "Verathi Exchange"} established reciprocal missions with Sithari. Verathi's mission now occupies a narrow building at Accord Shore, while Sithari's staff live beside the public docking crescent aboard the hab. Neither mission governs citizens of the host community.

    Verathi joined the Tempered Accord under the same terms. Its delegates are persistent about jurisdiction, service liability, and the distinction between accepting a common rule and accepting another member's government.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Verathi exports pressure fittings, closed-cycle crop cultures, and service-loop inspection. Its carriers are small and frequent because the district veto makes large changes to storage and docking capacity difficult.

    The Third Service district has withheld consent from a proposed freight spine that would cross its water return. The dock crescent is running close to capacity while the assembly studies routes around it.
  PROSE

  gm_note :appears, "An agreement struck with the hab assembly still has to cross seven district councils, and any one of them can refuse work that touches its air, water, food beds, or structural field. No assembly majority overrides that refusal."
  gm_note :triggered_by, "Asking Verathi to honor another polity's ruling produces a jurisdiction argument before it produces compliance. Its delegates separate accepting a common rule from accepting the government that wrote it, and they will make the distinction at length."
  gm_note :complicates, "The single public docking crescent runs near capacity while Third Service withholds consent from the freight spine, so an unscheduled arrival waits for a berth and hears about the water return from whoever finally assigns one."
end

relate :rel_verathi_located_in_frontier, :located_in, :verathi, :the_glass_frontier do
  prose "Verathi occupies a stable fragment of the inhabited ring."
end

relate :rel_verathi_in_orbit_of_kaleidos, :in_orbit_of, :verathi, :kaleidos do
  prose "The hab follows one of Kaleidos's outer inhabited ring orbits."
end

relate :rel_verathi_cooperates_with_sithari, :cooperates_with, :verathi, :sithari, since: 2311 do
  prose "Reciprocal missions have linked Verathi and Sithari since the Verathi Exchange."
  descriptive_identity(
    basis:
      "A narrow Verathi building at Accord Shore and Sithari staff " \
      "quartered beside the hab's public docking crescent, trading " \
      "technical records and consular work in both directions.",
    limits:
      "Neither mission governs a citizen of its host, and Sithari's " \
      "people stay clear of local rulings — a lesson set early, since " \
      "the two polities' first dispute was over the terms of contact " \
      "rather than whether to have it."
  )
end
