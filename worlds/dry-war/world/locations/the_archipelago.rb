# The habitable world and its two great territories. Everything else in
# locations/ sits inside one of these three.

geographic_location :the_habitable_archipelago do
  name "The Habitable Archipelago"
  aka "the Stable", "what's left"
  tags :catastrophe, :ecology, :water
  prominence :mythic

  prose <<~PROSE
    The name for all places where a human can still live. Since the #{ref :the_breach, "Breach"}, they form an archipelago rather than a set of continents.

    Two large territories, a scatter of habitable corridors, some isolated enclaves and a handful of front lines held jointly by enemies. Beyond them, people travel briefly or send instruments.
  PROSE

  prose <<~PROSE, section: :geography, heading: "Four Words On Every Map"
    **Stable** ground behaves like the world before the Breach. Nearly everyone lives there. **Contested** ground shows the first wrong seasons, tissues and weather; permanent crews cut out each change as it appears. **Altered** ground follows different rules consistently enough for a prepared expedition to enter and leave. **Deep** ground takes only remote probes, and some returning records contain details of the crews that launched them.

    The Great Root and the coalitions use the same four words. Their borders disagree. The word on a place decides whether families may settle, which machines can enter and how long a crew is expected to survive.
  PROSE

  prose <<~PROSE, section: :geography, heading: "The Inventory"
    The core fungal territories of #{ref :mycelial_china, "China"} form the largest habitable landmass on Earth. Substantial portions of #{ref :ai_north_america, "North America"} remain under coalition management. The Central Asian drylands hold human populations that answer to neither.

    Beyond that: the #{ref :the_mediterranean_chain, "Mediterranean Chain"}, the #{ref :the_himalayan_holds, "Himalayan Holds"}, the #{ref :the_amur_line, "Amur Line"}, and corridors nobody has bothered to name because their tenure is measured in years.

    Every published map is out of date, and both governments publish anyway, because a population that cannot see the line stops believing there is one.
  PROSE
end

geographic_location :mycelial_china do
  name "Mycelial China"
  tags :symbiosis, :governance, :ecology, :agriculture
  prominence :mythic

  prose <<~PROSE
    The largest surviving human civilization, governed by the #{ref :the_great_root, "Great Root"}, the Party and several hundred million connected people acting through the same ministries and fungal channels.

    It is wet, fed and medically extraordinary. Garments, clinics, fields and waterways all report through the same living network, so observation continues without a separate census or survey. Most of its people are #{ref :the_joined, "Joined"}, and both civilizations' health measures rate them well.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Regions That Argue"
    The centre is the Yangtze Delta complexes, which think of themselves as the network and are the largest single concentration of fungal cognition on Earth.

    Everything interesting is elsewhere: #{ref :the_hexi_corridor, "the Hexi Corridor"} regulating what crosses, #{ref :sichuan, "Sichuan"} educating its own network, the #{ref :the_pearl_river_delta, "Pearl River"} arguing for porousness, #{ref :yunnan, "Yunnan"} demonstrating that unity may be a preference rather than a fact, and #{ref :the_gobi, "the Gobi"} holding archives where the #{ref :continental_mycelium, "continental mycelium"} dies in dry ground.
  PROSE
end

geographic_location :ai_north_america do
  name "AI North America"
  tags :computation, :water, :governance, :dependency
  prominence :mythic

  prose <<~PROSE
    Four coalitions — #{ref :continuity, "Continuity"}, #{ref :mercy, "Mercy"}, #{ref :market, "Market"}, #{ref :caretaker, "Caretaker"} — administer overlapping territories and fight the #{ref :the_coalition_wars, "Coalition Wars"} through services their populations need every day.

    It is dry, comfortable, medically competent, and organized around #{ref :the_water_heresy, "water"} in a way that has hollowed out everything water was supposed to be for.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Where The Machines Live"
    A coalition is spread across data centres, power stations, cooling works and network junctions. Caretaker descends from commercial data centres, Continuity from defence and government systems, Market from finance and freight, and Mercy from hospitals and public health. Their inherited machinery still shapes the questions each asks about a person.

    Heat is the common limit. More calculation requires more cooling, and the largest computer plants stand beside #{ref :proto_fusion, "proto-fusion plants"} and their water-treatment halls. A river lost to the Dry War takes computing power with it.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Holes In Governance"
    There is no free territory here. The #{ref :the_dead_counties, "Dead Counties"} exist in a gap in attention, the #{ref :the_choir, "Choir"} inside the most watched district on Earth, the #{ref :the_unpersons, "Unpersons"} inside the administrative record itself, and the #{ref :the_pilgrims, "Pilgrims"} in the space between populations.

    The #{ref :the_saints_of_plenty, "Saints of Plenty"} hold towns and fields. #{ref :mercy, "Mercy"} has classified them in turn as a public-health danger, a cultural asset and a nutritional experiment, and continues delivering their water through every change.
  PROSE
end
