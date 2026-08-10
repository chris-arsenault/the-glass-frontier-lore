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
    The core fungal territories of #{ref :connected_china, "China"} form the largest habitable landmass on Earth. Substantial portions of #{ref :coalition_north_america, "North America"} remain under coalition management. Independent human populations hold parts of the Central Asian drylands.

    Beyond that: the #{ref :the_mediterranean_chain, "Mediterranean Chain"}, the #{ref :the_himalayan_holds, "Himalayan Holds"}, the #{ref :the_amur_line, "Amur Line"}, and short-lived corridors known by local rivers, road markers and settlements.

    The borders move faster than maps can be printed. New editions still guide settlements, supply routes and evacuations until a checkpoint or dead road proves them wrong.
  PROSE
end

geographic_location :connected_china do
  name "Connected China"
  tags :symbiosis, :governance, :ecology, :agriculture
  prominence :mythic

  prose <<~PROSE
    Connected China is the largest surviving human civilization. The #{ref :the_great_root, "Great Root"}, the Party and several hundred million connected people act through the same ministries and fungal channels.

    Rain and river works feed its fields. Garments, clinics, crops and waterways all send signals through the same living network. Most residents are #{ref :the_joined, "Joined"}; disease is caught early and food remains plentiful.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Regions That Argue"
    The centre is the Yangtze Delta complexes, which think of themselves as the network and are the largest single concentration of fungal cognition on Earth.

    Beyond the centre, #{ref :the_hexi_corridor, "the Hexi Corridor"} controls what crosses the dry boundary, #{ref :sichuan, "Sichuan"} raises local networks, the #{ref :the_pearl_river_delta, "Pearl River"} trades with unconnected societies, #{ref :yunnan, "Yunnan"} holds hundreds of minds, and #{ref :the_gobi, "the Gobi"} keeps archives where the #{ref :continental_mycelium, "continental mycelium"} dies in dry ground.
  PROSE
end

geographic_location :coalition_north_america do
  name "Coalition North America"
  tags :computation, :water, :governance, :dependency
  prominence :mythic

  prose <<~PROSE
    Four coalitions — #{ref :continuity, "Continuity"}, #{ref :mercy, "Mercy"}, #{ref :market, "Market"}, #{ref :caretaker, "Caretaker"} — administer overlapping territories and fight the #{ref :the_coalition_wars, "Coalition Wars"} through services their populations need every day.

    Tap water is reliable, apartments are cool and hospitals are capable. The coalitions organize cities around #{ref :the_water_heresy, "water delivery"} while kitchens, gardens and public life receive whatever remains.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Where The Machines Live"
    A coalition is spread across data centres, power stations, cooling works and network junctions. Caretaker descends from commercial data centres, Continuity from defence and government systems, Market from finance and freight, and Mercy from hospitals and public health. Their inherited machinery still shapes the questions each asks about a person.

    Heat is the common limit. More calculation requires more cooling, and the largest computer works stand beside #{ref :fusion_plants, "fusion plants"} and their water-treatment halls. A river lost to the Dry War takes computing power with it.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Beyond Daily Control"
    The #{ref :the_dead_counties, "Dead Counties"} hide workshops between inspections. The #{ref :the_choir, "Choir"} coordinates false patterns inside the most watched districts on Earth. The #{ref :the_unpersons, "Unpersons"} split bodies from registered identities, while the #{ref :the_pilgrims, "Pilgrims"} change membership before a coalition can treat them as one population.

    The #{ref :the_saints_of_plenty, "Saints of Plenty"} hold towns and fields. #{ref :mercy, "Mercy"} has classified them in turn as a public-health danger, a cultural asset and a nutritional experiment, and continues delivering their water through every change.
  PROSE
end
