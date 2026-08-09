concept :claim_escrow do
  name "Claim Escrow"
  tags :trade, :identity, :legibility, :governance
  prominence :recognized

  prose <<~PROSE
    #{ref :market, "Market"} settles paid work against two records: evidence that the work was accepted, and a recognized identity entitled to the price. Failure in the second record does not reopen the first. The buyer deposits the full price with Market, which substitutes the deposit for the completed work and releases the buyer to use, move or resell what was delivered.

    At #{ref :race_street_claim_house, "Race Street Claim House"}, #{ref :ruth_osei, "Ruth Osei"} issues a serialized completion receipt against the contract rather than the claimant. Its first lines identify the work, the agreed price and the acceptance record. The identity line beneath them may remain blank. The deposited balance cannot be lent, invested or used to settle another contract while the claim is open.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Owner Not Established"
    The examiner can inspect the contract, completion evidence, the buyer's deposit, the identity record supplied by the claimant's guardian and each support obligation for registered dependents. The examiner cannot establish which body performed the work without a recognized identity record, and the procedure does not accept bodily presence as proof of entitlement.

    Under #{ref :the_named_payee_rule, "the Named Payee Rule"}, a blank identity line keeps the payment in reserve and returns the completion receipt to the claimant. The receipt remains valid while the identity record and its support obligations are resolved under that rule.

    Most blank identity lines are resolved when a damaged or duplicated record is repaired. The remainder collect around #{ref :the_unpersons, "Unperson"} communities, where a receipt can prove that somebody earned money that no recognized person can receive. #{ref :the_receipt_holders, "The Receipt Holders"} organized around one such file, #{ref :the_race_street_cooling_claim, "the Race Street Cooling Claim"}. Market's accounts show the buyer paid, the work released, the full balance reserved and no overdue payment to a recognized worker.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Money That Leaves Before The Identity"
    One fraction of a price can leave reserve while the identity line is still blank. An #{ref :the_engagement_allotment, "engagement allotment"} filed before the work begins names a person from a closed class of the worker's relatives, and the counter queries that person's record rather than the worker's. It is not an assignment, so the Named Payee Rule does not void it; the allottee's entitlement was written into the contract the buyer funded.

    The remainder behaves as any blank line does. At the #{ref :conowingo_engagement_counter, "Conowingo counter"}, which engages crews rather than people, most of a season's prices are funded, partly allotted and otherwise reserved indefinitely. #{ref :the_pilgrims, "Pilgrim"} groups file notes for one season and surrender them, having found that a payee at a standing address paid on fixed days makes a season's movements forecastable — see #{ref :the_priced_return, "the Priced Return"}. Groups that file nothing leave the whole price standing.
  PROSE

  log "2026-08-09 — Claim escrow uses the admiralty practice of releasing detained property against posted security: the buyer receives completed work while the full payment remains available to the unresolved claimant."
end
