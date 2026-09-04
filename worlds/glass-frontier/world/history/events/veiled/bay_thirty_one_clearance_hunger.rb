incident :bay_thirty_one_clearance_hunger do
  name "Bay Thirty-One Clearance Hunger"
  summary "Bay Thirty-One Clearance Hunger is the recurring shortage among crews stranded in Clearance Eight's traffic galleries when a supply window slips."
  type_of :clearance_hunger
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Bay Thirty-One Clearance Hunger is the recurring shortage among crews stranded in Clearance Eight's traffic galleries when a supply window slips."
end
relate :rel_clearance_hunger_at_clearance_eight, :manifests_at, :bay_thirty_one_clearance_hunger, :clearance_eight
relate :rel_clearance_hunger_at_bay_thirty_one, :manifests_at, :bay_thirty_one_clearance_hunger, :thirty_one
