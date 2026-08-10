npc :ruth_osei do
  name "Ruth Osei"
  subkind :official
  tags :trade, :identity, :legibility, :governance
  prominence :marginal
  occupation "Senior claims examiner"

  prose <<~PROSE
    Senior claims examiner at #{ref :race_street_warehouse, "the Race Street warehouse"}, where she handles accepted work whose payee cannot be joined to a recognized identity. She has held the post since 2081. Her #{ref :market, "Market"} guardian record, household account and registered dependent obligations pass every identity query she performs.

    Osei reviews the work before the person. She establishes what the buyer accepted and fixes the price before she opens the identity record. Her standing concern is that a buyer should not keep both the work and its price, and that a claimant should not sell a dependent's support to whoever can reach the counter first.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What She Can Establish"
    Contract terms, tool records, inspection images, the buyer's acceptance, the reserved balance and every support obligation attached to a recognized identity. She can compare a claimant's account of the work with the worksite record, and has rejected collectors who knew the price but not which fasteners had been cut.

    A body at her desk is evidence that somebody came to the desk. It does not tell her whether that person did the work, bought the claim or took it from somebody who could not defend it. Market does not let her settle that question through witnesses or bodily presence alone.

    Osei examined #{ref :the_six_under_race_street, "the Six Under Race Street"}. The pipe still works, the six workers are still unpaid and the full emergency price remains unavailable to any other account.
  PROSE
end
