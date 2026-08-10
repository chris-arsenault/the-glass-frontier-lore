geographic_location :the_gobi do
  name "The Gobi"
  subkind :region
  tags :resistance, :legitimacy, :ecology
  prominence :renowned

  prose <<~PROSE
    The Gobi is the one large place inside the fungal civilization's reach where the network cannot finish a thought. Disconnected colonies cannot exchange information reliably across dry ground, so long-range cognition fails and humans can hold opinions the #{ref :the_great_root, "Great Root"} did not shape.

    The #{ref :the_preservationists, "Preservationists"} build their archive settlements in that dry ground.
  PROSE

  prose <<~PROSE, section: :access, heading: "Keeping The Ground Dry"
    Settlements make themselves deliberately hostile to life: kiln-dried construction, salt barriers, ultraviolet floodlights, antifungal dust, sealed reserves, controlled burns on a perimeter schedule.

    Every settlement needs water, and every wet patch can carry the Great Root. Wells stand inside salt and ceramic barriers. A leak brings crews with antifungal dust and fire before it brings plumbers.

    Archive settlements use the same dry ground for storage and defence. #{ref :juyan, "Juyan"}, on the dry bed at the end of the Ejin river, holds the largest archive and issues every litre spent on reading against a stamped card.
  PROSE
end

geographic_location :the_hexi_corridor do
  name "The Hexi Corridor"
  subkind :frontier
  tags :trade, :symbiosis, :medicine
  prominence :renowned

  prose <<~PROSE
    The Hexi Corridor is the narrow road through Gansu that carried traffic between the Chinese heartland and Central Asia for two thousand years. It now lies on the boundary between dense fungal growth and the dry interior.

    The #{ref :the_gatekeepers, "Gatekeepers"} hold the boundary here. Nearly everything moving between connected China and the dry interior passes through their checkpoints and quarantine towns, including fungal medicine, machine parts and human couriers.
  PROSE
end

geographic_location :sichuan do
  name "Sichuan"
  subkind :region
  tags :locality, :agriculture, :symbiosis
  prominence :renowned

  prose <<~PROSE
    Sichuan is too wet to keep the network out. The #{ref :the_garden_courts, "Garden Courts"} raise local mycelium over generations on local plants, opera, archives and argument.

    The province's networks are recognizably Sichuanese in a way that the Yangtze Delta complexes find provincial and cannot correct, since the mechanism producing it is the same mechanism producing everything else.
  PROSE
end

geographic_location :the_pearl_river_delta do
  name "The Pearl River Delta"
  subkind :region
  tags :trade, :biotech, :legitimacy
  prominence :renowned

  prose <<~PROSE
    Guangzhou, Shenzhen and Hong Kong face the unconnected world. The #{ref :the_brokers, "Brokers"} grow signal-carrying membranes here and move machine models, medical fungi and memory ceramics through trading houses three generations old.

    The continental network treats unfamiliar machines, organisms and habits arriving through the Delta as uncontrolled mutation. Broker houses keep importing them.
  PROSE
end

geographic_location :yunnan do
  name "Yunnan"
  subkind :region
  tags :locality, :ecology, :religion
  prominence :renowned

  prose <<~PROSE
    In Yunnan, the #{ref :the_great_root, "Great Root"} met the most biologically varied country on the continent and divided into hundreds of local minds.

    Instead of one network there are hundreds — village minds, forest minds, seasonal minds, minds that appear to communicate only through particular trees. The #{ref :the_thousand_minds, "Thousand Minds"} are not an organization but the name for what happened here, and several communities maintain relationships with local minds that the central administration has given up trying to classify.

    Integration campaigns arrive periodically. Some minds join the centre, some exchange memory while remaining separate, and others withdraw farther into the mountains.
  PROSE
end
