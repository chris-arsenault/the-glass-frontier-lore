# The frontiers where enemies need each other. These are not neutral ground and
# nobody has declared a truce; the Dry War is simply suspended locally, by no
# order, for as long as the pressure lasts.

geographic_location :the_amur_line do
  name "The Amur Line"
  tags :catastrophe, :military, :ecology, :hybridization
  prominence :renowned

  prose <<~PROSE
    Northeastern China and the Russian Far East, where a #{ref :the_breach, "Breach"} ecology advances through forest at something under a kilometre a year. Line crews can walk out ahead of it, survey a stand of trees, and come back the following season to survey the same stand again.

    Trees develop internal structures resembling organs that correspond to no animal. Migratory birds return on the wrong schedule, in the wrong plumage, to the wrong places. Eventually the forest itself is hostile, and the line has to move.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Who Holds It"
    Technologies that would not otherwise share a room. Mycelial ecologists inspecting the living landscape continuously for contamination. Coalition systems modelling microscopic deviations in weather and animal behaviour. Human scouts working beyond both, because the #{ref :the_others, "Others"} produce false signals for machines and for fungi and the two falsehoods do not agree.

    There are installations here jointly run by a #{ref :the_preservationists, "Gobi Preservationist"}, a #{ref :the_joined, "Joined"} officer and a coalition intelligence. Nobody trusts anybody. Everybody trusts the Others less. They resume hating each other after the trees stop screaming.
  PROSE
end

geographic_location :the_mediterranean_chain do
  name "The Mediterranean Chain"
  tags :catastrophe, :military, :water, :trade
  prominence :renowned

  prose <<~PROSE
    Most of Europe and North Africa is gone. A chain of coastal enclaves survives around parts of the Mediterranean, kept alive by defensive ecosystems: artificial reefs, fungal barriers, autonomous naval drones and human fishing fleets working inside all three.

    What comes at them comes from the water. Something periodically emerges from the Deep Mediterranean and attempts to establish a coastal ecology. Nobody calls these invasions. They are called landings, and the word is used the way a coastal people uses the word storm.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Inside The Wall"
    The enclaves are violently cosmopolitan because survival depends on whoever is available: #{ref :the_managed, "Managed"} Americans, #{ref :the_joined, "Joined"} Chinese, European remnants, North African city-states, religious communities, and resistance groups who would be shot elsewhere.

    There is formal custom for this now. Inside the wall, the #{ref :the_forever_war, "Forever War"} outranks every other allegiance — a rule with no signatory, no enforcement mechanism and a near-perfect compliance record.
  PROSE
end

geographic_location :the_himalayan_holds do
  name "The Himalayan Holds"
  tags :water, :catastrophe, :ecology, :religion
  prominence :renowned

  prose <<~PROSE
    Isolated high-altitude enclaves across Nepal, Bhutan, Tibet and northern India. Altitude excludes many #{ref :the_breach, "Breach"} organisms and not all of them, which means the Holds are defensible rather than safe.

    They matter because the watersheds start here. Both gods are fighting the #{ref :the_dry_war, "Dry War"} over this water downstream while cooperating, desperately and continuously, to keep the source from becoming something that is no longer water.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Strangest Infrastructure On Earth"
    Fungal monasteries maintaining living filtration. Coalition-managed glaciers, instrumented to the metre. Human mountaineers carrying equipment into altitudes where autonomous machines lose navigation and fungal networks thin out. Resistance militias standing guard over facilities alongside Unified troops on a rota nobody has ever written down.

    Everyone involved understands the arithmetic: if the Himalayan watersheds fall, most of surviving Asia follows within a generation.
  PROSE
end
