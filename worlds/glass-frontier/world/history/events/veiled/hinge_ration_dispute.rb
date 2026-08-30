incident :hinge_ration_dispute do
  name "The Hinge Ration Dispute"
  summary "The Hinge Ration Dispute was a blockade of Hinge Six by Fourth Bell residents after dock crews claimed the house's emergency stores."
  subkind :dispute
  status :complete
  prominence :marginal
  veiled "Fourth Bell residents blockaded Hinge Six after dock crews claimed the house's emergency stores."
end

relate :rel_hinge_ration_dispute_at_fourth_bell_house, :manifests_at, :hinge_ration_dispute, :fourth_bell_house
relate :rel_hinge_ration_dispute_at_hinge_six, :manifests_at, :hinge_ration_dispute, :hinge_six
