installation :verathi do
  name "Verathi"
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
end
