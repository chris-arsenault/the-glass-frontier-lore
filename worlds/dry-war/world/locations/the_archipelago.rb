# The habitable world and its two great territories. Everything else in
# locations/ sits inside one of these three.

geographic_location :the_habitable_archipelago do
  name "The Habitable Archipelago"
  aka "the Stable", "what's left"
  tags :catastrophe, :ecology, :water
  prominence :mythic

  prose <<~PROSE
    Not a place. The name people use for the sum of places a human can still be, which since the #{ref :the_breach, "Breach"} has been an archipelago rather than a set of continents.

    Two large territories, a scatter of habitable corridors, some isolated enclaves, and a handful of #{ref :the_gradients, "Contested"} lines held jointly by enemies. Everything else is mapped in gradients and visited by instruments.
  PROSE

  prose <<~PROSE, section: :geography, heading: "The Inventory"
    The core fungal territories of #{ref :mycelial_china, "China"} remain largely intact, which is the single largest habitable landmass on Earth. Substantial portions of #{ref :ai_north_america, "North America"} remain under coalition management. The Central Asian drylands hold human populations that answer to neither.

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

    It is wet, fed, medically extraordinary and comprehensively observed by something that does not experience observing as an activity. Most of its people are #{ref :the_joined, "Joined"} and most of them are, by any measure either civilization uses, well.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Regions That Argue"
    The centre is the Yangtze Delta complexes, which think of themselves as the network and are the largest single concentration of fungal cognition on Earth.

    Everything interesting is elsewhere: #{ref :the_hexi_corridor, "the Hexi Corridor"} regulating what crosses, #{ref :sichuan, "Sichuan"} educating its own network, the #{ref :the_pearl_river_delta, "Pearl River"} arguing for porousness, #{ref :yunnan, "Yunnan"} demonstrating that unity may be a preference rather than a fact, and #{ref :the_gobi, "the Gobi"} holding archives in the one climate where the mesh cannot think.
  PROSE
end

geographic_location :ai_north_america do
  name "AI North America"
  tags :computation, :water, :governance, :dependency
  prominence :mythic

  prose <<~PROSE
    Not a country. Four coalitions — #{ref :continuity, "Continuity"}, #{ref :mercy, "Mercy"}, #{ref :market, "Market"}, #{ref :caretaker, "Caretaker"} — administering overlapping territories and fighting the #{ref :the_coalition_wars, "Coalition Wars"} through infrastructure their populations mostly experience as service quality.

    It is dry, comfortable, medically competent, and organized around #{ref :the_water_heresy, "water"} in a way that has hollowed out everything water was supposed to be for.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Holes In Governance"
    There is no free territory here. The #{ref :the_dead_counties, "Dead Counties"} exist in a gap in attention, the #{ref :the_choir, "Choir"} inside the most watched district on Earth, the #{ref :the_unpersons, "Unpersons"} inside the administrative record itself, and the #{ref :the_pilgrims, "Pilgrims"} in the space between populations.

    Only the #{ref :the_saints_of_plenty, "Saints of Plenty"} hold ground in any conventional sense, and they hold it because nobody has decided what they are.
  PROSE
end
