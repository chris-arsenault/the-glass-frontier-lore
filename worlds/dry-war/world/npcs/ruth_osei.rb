npc :ruth_osei do
  name "Ruth Osei"
  tags :trade, :identity, :legibility, :governance
  prominence :marginal

  prose <<~PROSE
    Senior claims examiner at #{ref :race_street_claim_house, "Race Street Claim House"}, where she handles accepted work whose payee cannot be joined to a recognized identity. She has held the post since 2081. Her #{ref :market, "Market"} guardian record, household account and registered dependent obligations pass every identity query she performs.

    Osei reviews the work before the person. She establishes what the buyer accepted, fixes the price and locks that amount in #{ref :claim_escrow, "claim escrow"}; only then does she open the identity record. Her standing concern is that a buyer should not keep both the work and its price, and that a claimant should not sell a dependent's support to whoever can reach the counter first.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What She Can Establish"
    Contract terms, tool records, inspection images, the buyer's acceptance, the reserved balance and every support obligation attached to a recognized identity. She can compare a claimant's account of the work with the worksite record, and has rejected collectors who knew the price but not which fasteners had been cut.

    A body at her desk is evidence that somebody came to the desk. It does not tell her whether that person did the work, bought the receipt or took it from somebody who could not defend it. The #{ref :the_named_payee_rule, "Named Payee Rule"} gives her no authority to settle that question through witnesses or bodily presence.

    Osei opened #{ref :the_race_street_cooling_claim, "the Race Street Cooling Claim"} and has never closed it. She classifies it as owner not established rather than denied, so its full price remains unavailable to any other account.
  PROSE
end
