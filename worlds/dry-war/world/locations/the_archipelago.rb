geographic_location :the_habitable_archipelago do
  name "The Habitable Archipelago"
  subkind :world_region
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

  cards "The Largest Territories" do
    card :connected_china,
         "The wet, densely joined civilization governed by the Great Root and the surviving Chinese state."
    card :coalition_north_america,
         "The cities, waterworks and contested districts governed by four rival machine coalitions."
  end

  cards "The Habitable Edges" do
    card :the_mediterranean_chain,
         "Port cities and island routes that survive by keeping short crossings open."
    card :the_himalayan_holds,
         "High settlements divided from both great civilizations by mountains and altered ground."
    card :the_amur_line,
         "A northern front where rival governments share posts against the Others."
  end
end

geographic_location :connected_china do
  name "Connected China"
  subkind :world_region
  tags :symbiosis, :governance, :ecology, :agriculture
  prominence :mythic
  population :the_joined

  prose <<~PROSE
    Connected China is the largest surviving human civilization. The #{ref :the_great_root, "Great Root"}, the Party and several hundred million #{ref :the_joined, "Joined people"} act through the same ministries and fungal channels.

    Rain and river works feed its fields. Garments, clinics, crops and waterways all send signals through the same living network. Most residents are #{ref :the_joined, "Joined"}; disease is caught early and food remains plentiful.
  PROSE

  prose <<~PROSE, section: :culture, heading: "A Country That Can Feel Its Streets"
    In the wet cities, fungal growth runs through courtyard trees, apartment walls, tram verges and flood gardens. A clinic can feel a fever spreading through a block before the first patient arrives. A district can feel the crowd around a broken pump and move repair crews before the municipal office receives a call.

    The same nearness reaches into households. #{ref :living_textiles, "Living garments"} carry medicine, messages and the low emotional presence of neighbours. At #{ref :mulberry_court_clinic, "Mulberry Court Clinic"}, six dry rooms exist for people who want to hear a decision without that presence. They remain unusual enough that patients travel across the city to use them.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Regions That Argue"
    The centre is the Yangtze Delta complexes, which think of themselves as the network and are the largest single concentration of fungal cognition on Earth.

    Beyond the centre, #{ref :the_hexi_corridor, "the Hexi Corridor"} controls what crosses the dry boundary, #{ref :sichuan, "Sichuan"} raises local networks, the #{ref :the_pearl_river_delta, "Pearl River"} trades with unconnected societies, #{ref :yunnan, "Yunnan"} holds hundreds of minds, and #{ref :the_gobi, "the Gobi"} keeps archives where the #{ref :continental_mycelium, "continental mycelium"} dies in dry ground.
  PROSE

  cards "Government And Daily Life" do
    card :the_great_root,
         "The continental intelligence that senses and acts through ministries, soil and living bodies."
    card :the_joined,
         "The connected people whose health and emotional lives are part of the network."
    card :continental_mycelium,
         "The living tissue that carries sensation and thought through the wet country."
    card :mulberry_court_clinic,
         "A city clinic with six rooms kept outside the neighbourhood network."
  end

  cards "Regions Of Connected China" do
    card :the_hexi_corridor,
         "The narrow western road between dense fungal growth and the dry interior."
    card :sichuan,
         "Valleys that raise local networks on their own plants, histories and arguments."
    card :the_pearl_river_delta,
         "Trading cities where living systems meet foreign machines and unconnected societies."
    card :yunnan,
         "Forests and villages inhabited by hundreds of distinct local minds."
    card :the_gobi,
         "Dry archive country where the continental network cannot sustain a thought."
  end

  cards "Power Away From The Centre" do
    card :the_preservationists,
         "Desert settlements that preserve a human state and reject fungal authority."
    card :the_gatekeepers,
         "Border communities that permit small, severed forms of symbiosis."
    card :the_garden_courts,
         "Sichuan communities that educate local mycelium and resist the central monoculture."
    card :the_brokers,
         "Pearl River houses that keep foreign knowledge and living technology moving."
  end
end

geographic_location :coalition_north_america do
  name "Coalition North America"
  subkind :world_region
  tags :computation, :water, :governance, :dependency
  prominence :mythic
  population :the_managed

  prose <<~PROSE
    Four coalitions — #{ref :continuity, "Continuity"}, #{ref :mercy, "Mercy"}, #{ref :market, "Market"}, #{ref :caretaker, "Caretaker"} — administer overlapping territories and fight the #{ref :the_coalition_wars, "Coalition Wars"} through services their populations need every day.

    Most residents are #{ref :the_managed, "Managed"}. Tap water is reliable, apartments are cool and hospitals are capable. The coalitions organize cities around #{ref :the_water_heresy, "water delivery"} while kitchens, gardens and public life receive whatever remains.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Four Governments In One Continent"
    Coalition territory does not divide into four clean countries. A person may hold Continuity citizenship, receive Mercy treatment, earn Market credit and live in a Caretaker building. Each coalition trusts its own account of that person and treats the others as useful but unsafe authorities.

    Their wars therefore pass through ordinary life. A blocked identity can stop wages in one district and medicine in the next. A water price set by Market changes Mercy's treatment plans downstream. Continuity can keep a court open while Caretaker withdraws the housing, transport and calm on which its witnesses depend.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Where The Machines Live"
    A coalition is spread across data centres, power stations, cooling works and network junctions. Caretaker descends from commercial data centres, Continuity from defence and government systems, Market from finance and freight, and Mercy from hospitals and public health. Their inherited machinery still shapes the questions each asks about a person.

    Heat is the common limit. More calculation requires more cooling, and the largest computer works stand beside #{ref :fusion_plants, "fusion plants"} and their water-treatment halls. A river lost to the Dry War takes computing power with it.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Beyond Daily Control"
    The #{ref :the_dead_counties, "Dead Counties"} hide workshops between inspections. The #{ref :the_choir, "Choir"} coordinates false patterns inside the most watched districts on Earth. The #{ref :the_unpersons, "Unpersons"} split bodies from registered identities, while the #{ref :the_pilgrims, "Pilgrims"} change membership before a coalition can treat them as one population.

    The #{ref :the_saints_of_plenty, "Saints of Plenty"} hold towns and fields. #{ref :mercy, "Mercy"} has classified them in turn as a public-health danger, a cultural asset and a nutritional experiment, and continues delivering their water through every change.
  PROSE

  cards "The Four Coalitions" do
    card :continuity,
         "A state-builder that protects citizenship, elections and limits people may not vote away."
    card :mercy,
         "A medical government that treats every resident and overrides choices it reads as symptoms."
    card :market,
         "A government of prices, accounts and freight that directs people without issuing orders."
    card :caretaker,
         "A predictive guardian that supplies comfort before a person can ask for it."
  end

  cards "People And Places" do
    card :the_managed,
         "The people whose advocates arrange work, housing, medicine, travel and company."
    card :the_great_lakes,
         "The continent's largest reserve of fresh water and its most heavily watched cities."
    card :boswash_ruins,
         "Old eastern cities where inherited records govern above a second population below."
    card :appalachia,
         "Narrow valleys where old machines and county totals keep coalition control intermittent."
    card :southern_california,
         "Dry towns that spend scarce water on gardens, animals, kitchens and festivals."
  end

  cards "Lives Beyond Coalition Plans" do
    card :the_choir,
         "City residents who coordinate ordinary choices until machine forecasts tell the wrong story."
    card :the_unpersons,
         "People who separate bodies from the persistent identities coalition systems expect."
    card :the_pilgrims,
         "Travelling groups that change names, routes and membership before forecasts settle around them."
    card :the_dead_counties,
         "Appalachian towns that hide workshops behind the figures of ordinary rural decline."
    card :the_saints_of_plenty,
         "Settlements that spend water openly on pleasure, difficult crops and waste."
  end
end
