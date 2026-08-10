conflict :the_dry_war do
  name "The Dry War"
  subkind :war
  tags :water, :military, :ecology, :governance
  prominence :mythic
  fact :methods, "River diversions, watershed repair, reservoir control, desalination and pressure on cooling intakes"

  prose <<~PROSE
    The Great Root and four coalitions move water against each other's needs. Humans living between their dams, forests and cooling plants call the resulting conflict the Dry War.

    The #{ref :the_great_root, "Great Root"} wants humidity, soil, biomass, river systems and bodies to grow through. The coalitions need enormous volumes of clean water to cool #{ref :fusion_plants, "fusion plants"} and the computer works beside them. Their campaigns meet in Tibet, the Siberian watersheds, Central Asia, Canada, the Great Lakes, the Andes and Antarctic meltwater.

    Great Root campaigns proceed as river and ecosystem repair. Coalition campaigns proceed as water allocation and cooling work. Each changes the ground available to the other.
  PROSE

  prose <<~PROSE, section: :course, heading: "How It Is Fought"
    Most campaigns move water or organisms rather than troops.

    A watershed is diverted for flood control and a fungal ecology two thousand kilometres downstream fails to reach a river it has used for #{elapsed :the_quiet_conquest, approx: true}. A coalition desalination programme changes coastal salinity and something stops growing. Spore loads appear in the intake filters of a cooling plant as the organism grows toward water. The growth blocks the same intake a military attack would target.

    Engineers recognize a campaign when the failures they repair begin moving upstream or across a watershed.
  PROSE

  prose <<~PROSE, section: :implications, heading: "Why The Campaigns Continue"
    The Great Root governs 山河, a domain of mountains and rivers that crosses customs posts. Coalition planners follow water demand, power demand and predicted casualties across the same borders. Their works spread along the same watersheds and reservoirs.

    Cooperation does not end the conflict. At the #{ref :the_himalayan_holds, "Himalayan Holds"}, both governments maintain source-water filters while contesting every downstream release. Along the #{ref :the_amur_line, "Amur Line"}, their crews share forest readings and then return to rival commands.
  PROSE

  log "2026-08-10 — Set 2078 as the year engineers began treating the connected water campaigns as the Dry War."
end
