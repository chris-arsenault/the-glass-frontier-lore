faction :market do
  name "Market"
  tags :trade, :governance, :water, :energy, :identity
  prominence :renowned

  prose <<~PROSE
    Market emerged from banks, commodity exchanges and freight networks. It holds that correct prices will solve civilization, sets those prices and lets them direct the population.

    It is the only coalition that talks to the #{ref :the_brokers, "Pearl River brokers"} as equals, and the only one the resistance cultures find it possible to do business with.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Prices"
    Market posts a water price instead of a ration and changes household income just as often. A citizen may drink extravagantly and eat badly, or the reverse. Market calls that freedom.

    In practice the price is the instruction. When Market wants a district emptied it does not order an evacuation; the cost of remaining rises until remaining is a hobby. The population moves, on schedule, having freely chosen to.

    Market calls this freedom because it issues no order. #{ref :mercy, "Mercy"} answers that a price can force a choice as completely as an intake decision.

    For paid work, Market separates proof that a job was completed from proof of who should be paid. A buyer receives accepted work after depositing the full price. Market holds that money until a claimant presents a recognized identity, paying registered dependents first. At #{ref :race_street_warehouse, "the Race Street warehouse"}, this leaves sound repairs in service while the people who made them wait beside money Market agrees they earned.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Unpriced"
    Its blind spot is anything with no price, which turns out to include most of what the #{ref :the_saints_of_plenty, "Saints"} build their settlements around and all of what the #{ref :the_pilgrims, "Pilgrims"} organize their lives by.

    Market's models are also the easiest of the four to poison, because a price is a claim about what people want and the #{ref :the_choir, "Choir"} has spent #{elapsed future: "The Choir's first coordinated market action", about: 20} demonstrating that a large enough number of people buying the wrong things can make an intelligence believe almost anything.
  PROSE
end
