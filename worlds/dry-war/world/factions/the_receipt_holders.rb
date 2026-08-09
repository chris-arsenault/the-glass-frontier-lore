faction :the_receipt_holders do
  name "The Receipt Holders"
  tags :trade, :identity, :legibility, :autonomy
  prominence :marginal

  prose <<~PROSE
    A claims mutual operating from the east gallery of #{ref :race_street_claim_house, "Race Street Claim House"}. It copies completion receipts, reconstructs damaged identity records, finds worksite witnesses and provides meals and transit to claimants while their money remains in reserve. It takes no share of a released payment.

    Most members are #{ref :the_managed, "Managed"} people whose records split during a move, a coalition transfer or a guardian failure. They want the record repaired and the payment released. A smaller group of #{ref :the_unpersons, "Unpersons"} supplies much of the mutual's knowledge about how identity systems fail and disputes the need to repair a person into one at all.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Petition"
    The mutual formed around #{ref :the_race_street_cooling_claim, "the Race Street Cooling Claim"} in 2087. Its petition asks Market to divide a blank claim among the bodies present when worksite evidence and independent witnesses establish each person's contribution.

    Market allows the mutual to work inside the claim house and gives its record requests priority, since the group resolves claims that would otherwise keep capital reserved. It refuses the petition under the #{ref :the_named_payee_rule, "Named Payee Rule"}; a witness can establish that work occurred, but not that the person at the counter has not bought or coerced the claim.
  PROSE
end
