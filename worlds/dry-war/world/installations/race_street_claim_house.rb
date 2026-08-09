installation :race_street_claim_house do
  name "Race Street Claim House"
  tags :trade, :identity, :legibility, :governance
  prominence :recognized

  prose <<~PROSE
    #{ref :market, "Market"}'s specialist office for accepted work with an unsettled payee, occupying a former bonded-freight warehouse on Race Street in Philadelphia. The value attached to each claim remains in Market's reserve accounts. The building holds the evidence: contracts, inspection records, counterfoils and the paper completion receipts issued to people whose identity lines remain blank.

    Claimants may enter the public room without presenting an identity. The door counts a visitor, provides a queue place and dispenses water; none of those acts creates a person in Market's records. The office can open a #{ref :claim_escrow, "claim escrow"} for that visitor, but payment leaves reserve only after the completion receipt has been joined to a recognized identity.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Two Desks"
    The completion desk stands nearest the entrance. Its examiners decide whether the work was delivered and accepted, require the buyer to fund the price and print a receipt whose first lines identify the work, amount and acceptance record. The old cargo cages behind the desk hold disputed tools and materials when the inspection record is insufficient.

    The identity desk stands beyond a waist-high rail. It applies the #{ref :the_named_payee_rule, "Named Payee Rule"}, searches guardian records and lists registered dependent obligations before any balance can leave reserve. A blank identity line returns the receipt to the claimant and leaves the account open.

    #{ref :the_receipt_holders, "The Receipt Holders"} use the east gallery to copy files and help claimants repair broken records. Market provides the room because every repaired identity releases reserved capital. #{ref :ruth_osei, "Ruth Osei"} keeps her examination table between the two desks.
  PROSE

  prose <<~PROSE, section: :reference, heading: "The Run Of Extracts"
    Nine certified sheets stand in a run behind the identity desk, each one a #{ref :the_face_warrant, "warrant"} spent at a #{ref :the_preservationists, "Preservationist"} register house in the Gobi. They carry the acceptance figures for nine classes of plant older than the Breach — test pressures, hold times, joint preparation, and who the schedule required to witness a sign-off — for work whose inspection records cite a clause and hold no text.

    An examiner uses them to ask a claimant what the work involved. #{ref :the_callowhill_duplicate, "The Callowhill Duplicate"} is the case the run was assembled around: two people, one receipt, and three questions that only one of them could answer. Each sheet cost a face off a fired piece that cannot be read twice, so the run grows by about two sheets a year and the classes of plant the desk can examine are the classes on the shelf.
  PROSE
end
