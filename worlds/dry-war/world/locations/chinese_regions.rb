# The regions where the fungal civilization argues with itself. Each is the ground
# a faction stands on; the faction entry carries the politics and this carries the
# place.

geographic_location :the_gobi do
  name "The Gobi"
  tags :resistance, :legitimacy, :ecology
  prominence :renowned

  prose <<~PROSE
    The one large place inside the fungal civilization's reach where the network cannot finish a thought. Disconnected colonies cannot exchange information reliably across dry ground, so long-range cognition fails and humans can hold opinions the #{ref :the_great_root, "Great Root"} did not shape.

    The #{ref :the_preservationists, "Preservationists"} live here. Their greatest strategic resource is not a weapon or a mountain. It is dryness.
  PROSE

  prose <<~PROSE, section: :access, heading: "Living Inhospitably"
    Settlements make themselves deliberately hostile to life: kiln-dried construction, salt barriers, ultraviolet floodlights, antifungal dust, sealed reserves, controlled burns on a perimeter schedule.

    The permanent irony of the place is that survival requires water and every oasis is somewhere the enemy can grow. A Gobi settlement's water discipline is therefore not conservation. It is containment, and a leak is treated as a breach of the wall.

    The archive settlements are sited for the same property that defends them. #{ref :juyan, "Juyan"}, on the dry bed at the end of the Ejin river, holds the largest of them and issues every litre it spends on reading against a stamped card.
  PROSE
end

geographic_location :the_hexi_corridor do
  name "The Hexi Corridor"
  tags :trade, :symbiosis, :medicine
  prominence :renowned

  prose <<~PROSE
    The narrow road through Gansu that carried everything between the Chinese heartland and Central Asia for two thousand years, and now sits on the ecological boundary between dense fungal civilization and the dry interior.

    It is one of the most strategically important places on Earth for a reason that has nothing to do with armies: it is where permeability is decided. The #{ref :the_gatekeepers, "Gatekeepers"} hold it, and nearly everything that passes between the connected and unconnected worlds passes through their checkpoints, their quarantine towns and their fee schedule.
  PROSE
end

geographic_location :sichuan do
  name "Sichuan"
  tags :locality, :agriculture, :symbiosis
  prominence :renowned

  prose <<~PROSE
    Too wet to resist the network biologically, and therefore the birthplace of the only resistance tradition that works inside one. The #{ref :the_garden_courts, "Garden Courts"} do not disconnect their local mycelium; they raise it, over generations, on local plants, local opera, local archives and local argument.

    The province's networks are recognizably Sichuanese in a way that the Yangtze Delta complexes find provincial and cannot correct, since the mechanism producing it is the same mechanism producing everything else.
  PROSE
end

geographic_location :the_pearl_river_delta do
  name "The Pearl River Delta"
  tags :trade, :biotech, :legitimacy
  prominence :renowned

  prose <<~PROSE
    Guangzhou, Shenzhen and Hong Kong, and the only place in the fungal civilization organized around contact with outside. The #{ref :the_brokers, "Brokers"} operate here: engineers building interfaces to order, families three generations deep in trade between connected and unconnected societies, and a body of law found nowhere else that distinguishes a fungal person from a human-fungal composite from a foreign extension of a continental intelligence.

    The continental network increasingly treats what arrives through the Delta as uncontrolled mutation. The Delta has been treating that objection as a compliment since before the #{ref :the_breach, "Breach"}.
  PROSE
end

geographic_location :yunnan do
  name "Yunnan"
  tags :locality, :ecology, :religion
  prominence :renowned

  prose <<~PROSE
    Where the #{ref :the_great_root, "Great Root"} met the most biologically various country on the continent and stopped being able to describe itself in the singular.

    Instead of one network there are hundreds — village minds, forest minds, seasonal minds, minds that appear to communicate only through particular trees. The #{ref :the_thousand_minds, "Thousand Minds"} are not an organization but the name for what happened here, and several communities maintain relationships with local minds that the central administration has given up trying to classify.

    Integration campaigns arrive periodically. Some minds join. Some negotiate. Some go further into the mountains. Some appear to join.
  PROSE
end
