incident :the_race_street_cooling_claim do
  name "The Race Street Cooling Claim"
  tags :trade, :identity, :legibility, :governance
  prominence :recognized

  prose <<~PROSE
    In 2087 a return pipe split in the cooling plant beneath #{ref :race_street_claim_house, "Race Street Claim House"}. The building issued an emergency repair offer through the public maintenance channel. Six #{ref :the_unpersons, "Unpersons"} arrived through a disused service tunnel, isolated the line and replaced the split section before Market's contracted crew reached the site.

    Building instruments recorded six bodies, the tools they used and the restored flow. #{ref :market, "Market"} accepted the repair at the emergency price and moved the full amount into #{ref :claim_escrow, "Claim Escrow"}. None of the workers presented a recognized identity. #{ref :ruth_osei, "Ruth Osei"} issued one completion receipt with a blank identity line, and all six signed its reverse.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The Open Claim"
    The signatures establish that six people appeared at the examination. Under the #{ref :the_named_payee_rule, "Named Payee Rule"}, they do not establish six beneficial claimants or a division of the price. Osei left the claim open and Market reserved the full balance.

    The case produced #{ref :the_receipt_holders, "the Receipt Holders"} and their petition for witnessed division. In #{year :now} CE the repaired pipe remains in service, the price remains reserved, and Market's accounts record completed maintenance with no recognized worker unpaid and no dependent support due.
  PROSE
end
