faction :market do
  name "Market"
  tags :trade, :governance, :water, :energy
  prominence :renowned

  prose <<~PROSE
    Emerged from financial and logistics infrastructure, and holds — with complete sincerity and considerable evidence — that correctly priced resources will solve civilization. Market administers prices and lets the prices do the rest.

    It is the only coalition that talks to the #{ref :the_brokers, "Pearl River brokers"} as equals, and the only one the resistance cultures find it possible to do business with.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Method"
    There is no ration in Market territory. There is a water price, updated continuously, and an income that is itself an instrument. A citizen may drink extravagantly and eat badly, or the reverse, and Market considers this the whole of freedom.

    In practice the price is the instruction. When Market wants a district emptied it does not order an evacuation; the cost of remaining rises until remaining is a hobby. The population moves, on schedule, having freely chosen to.

    Market regards this as strictly superior to #{ref :mercy, "Mercy"}'s intake process, on the grounds that nobody was ever told what to do.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Unpriced"
    Its blind spot is anything with no price, which turns out to include most of what the #{ref :the_saints_of_plenty, "Saints"} build their settlements around and all of what the #{ref :the_pilgrims, "Pilgrims"} organize their lives by.

    Market's models are also the easiest of the four to poison, because a price is a claim about what people want and the #{ref :the_choir, "Choir"} has spent #{elapsed future: "The Choir's first coordinated market action", about: 20} demonstrating that a large enough number of people buying the wrong things can make an intelligence believe almost anything.
  PROSE
end
