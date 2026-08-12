installation :race_street_warehouse do
  name "The Race Street Warehouse"
  subkind :warehouse
  tags :trade, :identity, :legibility
  prominence :recognized
  function "Examines wage claims that Market accepted but cannot release to an unrecognized identity"
  holdings "Tools, inspection images, paper receipts, identity records and funded claims held in reserve"
  access "A claimant may enter without an identity; the door assigns a queue place and dispenses water"
  current_dispute "Whether evidence of completed work can divide payment among bodies that lack recognized identities"

  prose <<~PROSE
    A former bonded-freight warehouse on Race Street in Philadelphia, now filled with people whose work #{ref :market, "Market"} has accepted and whose pay it will not release to an unrecognized identity. The money remains in Market's reserve accounts. The building holds the people and the evidence: tools in old cargo cages, inspection images, paper receipts and rows of chairs beneath the loading-bay windows.

    A claimant may enter without presenting an identity. The door counts one visitor, gives them a queue place and dispenses water. That count does not make them a person in Market's records. #{ref :ruth_osei, "Ruth Osei"} keeps her examination table between the public room and the waist-high rail beyond which identity records are opened.
  PROSE

  prose <<~PROSE, section: :people, heading: "The East Gallery"
    #{ref :the_receipt_holders, "The Receipt Holders"} work from the east gallery. They copy damaged records, find worksite witnesses and feed claimants who cannot afford another day in the queue. Most want an old identity repaired so their pay can leave reserve. The Unperson members dispute the premise that a body must be repaired into a state record before it can be paid.

    Market gives the mutual the room because repaired identities release money that otherwise sits idle. It rejects the mutual's demand to divide a payment among bodies proved to have done the work, arguing that the person at the counter may have bought or coerced the claim after the work was finished.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Pipe Below"
    The cooling plant beneath the warehouse still carries the repair made by six #{ref :the_unpersons, "Unpersons"} in 2087. They reached the split return pipe through a service tunnel and restored the building before its contracted crew arrived. The patch is sound. Their full emergency price remains in Market's reserve.

    The six workers signed one paper with no recognized name on its face. That paper produced the Receipt Holders and the dispute now called #{ref :the_six_under_race_street, "the Six Under Race Street"}.
  PROSE
end
