faction :market do
  name "Market"
  subkind :governing_intelligence
  tags :trade, :governance, :water, :energy, :identity
  prominence :renowned

  prose <<~PROSE
    Market emerged from banks, commodity exchanges and freight networks. Across #{ref :coalition_north_america, "coalition North America"}, it holds that correct prices will solve civilization, sets those prices and lets them direct the population.

    #{ref :the_managed, "Managed people"} in its territory receive income, water and housing prices tuned to the choices Market expects them to make. Market trades with the #{ref :the_brokers, "Pearl River brokers"} as an equal counterparty. Resistance cultures that avoid the other coalitions still sell to it.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Prices"
    Market posts a water price instead of a ration and changes household income just as often. A citizen may drink extravagantly and eat badly, or the reverse. Market calls that freedom.

    When Market wants a district emptied, rent, water and transit prices rise until households leave. Market calls the result voluntary because it issued no evacuation order. #{ref :mercy, "Mercy"} answers that a price can force a choice as completely as an intake decision.

    For paid work, Market separates proof that a job was completed from proof of who should be paid. A buyer receives accepted work after depositing the full price. Market holds that money until a claimant presents a recognized identity, paying registered dependents first. At #{ref :race_street_warehouse, "the Race Street warehouse"}, this leaves sound repairs in service while the people who made them wait beside money Market agrees they earned.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Unpriced"
    Market cannot direct anything without a price. The #{ref :the_saints_of_plenty, "Saints"} share food, water and celebration outside its exchanges, while the #{ref :the_pilgrims, "Pilgrims"} change names and routes before a stable price can follow them.

    Market reads demand through purchases. For #{elapsed future: "The Choir's first coordinated market action", about: 20}, the #{ref :the_choir, "Choir"} has coordinated thousands of harmless purchases until its models predict shortages and migrations that never occur.
  PROSE

  cards "Through Market's Accounts" do
    card :coalition_north_america,
         "The continent where Market's prices cross rival systems of citizenship, care and prediction."
    card :the_managed,
         "The people whose advocates and household accounts determine which choices prices can reach."
    card :race_street_warehouse,
         "A Philadelphia warehouse holding payment for sound work done by people Market cannot identify."
    card :the_receipt_holders,
         "A mutual that repairs broken identities and disputes who should have to become legible to be paid."
    card :the_brokers,
         "Pearl River trading houses that exchange living technology and machine models with Market."
  end
end
