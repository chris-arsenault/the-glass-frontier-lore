npc :irra_keth do
  name "Irra Keth"
  summary "Irra Keth is a Heshari cutter-yard claims runner working between the Dry Net, Three Arms Yard, Lot Forty, and Clearance Eight."
  subkind :npc
  status :complete
  prominence :marginal
  type_of :heshari
  veiled "Irra Keth carries work seals from four cutting yards and replaces one glass tooth after every contested salvage return."
end

relate :rel_irra_keth_at_the_dry_net, :inhabits, :irra_keth, :the_dry_net
relate :rel_irra_keth_at_three_arms_yard, :inhabits, :irra_keth, :three_arms_yard
relate :rel_irra_keth_at_lot_forty, :inhabits, :irra_keth, :lot_forty
relate :rel_irra_keth_at_clearance_eight, :inhabits, :irra_keth, :clearance_eight
