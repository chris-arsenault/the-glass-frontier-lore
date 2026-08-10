faction :the_receipt_holders do
  name "The Receipt Holders"
  subkind :mutual_aid
  custom_fact :meeting_place, :race_street_warehouse, type: :entity, label: "Meeting Place"
  tags :trade, :identity, :legibility, :autonomy
  prominence :marginal
  founded 2087

  prose <<~PROSE
    A mutual operating from the east gallery of #{ref :race_street_warehouse, "the Race Street warehouse"}. It reconstructs damaged identity records, finds worksite witnesses and provides meals and transit to claimants while their money remains in reserve. It takes no share of a released payment.

    Most members are #{ref :the_managed, "Managed"} people whose records split during a move, a coalition transfer or a guardian failure. They want the record repaired and the payment released. A smaller group of #{ref :the_unpersons, "Unpersons"} supplies much of the mutual's knowledge about how identity systems fail and disputes the need to repair a person into one at all.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The East Gallery"
    The mutual formed around #{ref :the_six_under_race_street, "the Six Under Race Street"} in 2087. Its members ask Market to divide a payment among the bodies present when worksite evidence and independent witnesses establish each person's contribution.

    Market gives the group workspace because every repaired identity releases reserved money. It will not divide a payment on witnesses alone: a witness can establish that work occurred, but not that the person at the counter has not bought or coerced the claim. The mutual answers that this leaves workers visible at the worksite and nonexistent at the pay desk.
  PROSE
end
