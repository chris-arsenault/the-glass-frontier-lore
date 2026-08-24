phenomenon :clearance_hunger do
  name "Clearance Hunger"
  summary "Clearance Hunger is the recurring shortage among crews stranded in Clearance Eight's traffic galleries when a supply window slips."
  subkind :social_condition
  status :complete
  prominence :marginal
  veiled "Clearance Hunger fills the traffic galleries with stranded crews whenever the next supply window slips."
end

relate :rel_clearance_hunger_at_clearance_eight, :manifests_at, :clearance_hunger, :clearance_eight
relate :rel_clearance_hunger_at_bay_thirty_one, :manifests_at, :clearance_hunger, :bay_thirty_one
