edict :four_hatch_order do
  name "The Four-Hatch Order"
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Four-Hatch Order keeps one docking mouth clear at each Keel stop for unpowered rescue craft."
end

relate :rel_four_hatch_order_at_keel, :manifests_at, :four_hatch_order, :keel
relate :rel_four_hatch_order_at_hinge_six, :manifests_at, :four_hatch_order, :hinge_six
relate :rel_four_hatch_order_at_cold_lantern, :manifests_at, :four_hatch_order, :cold_lantern
relate :rel_four_hatch_order_at_third_latch, :manifests_at, :four_hatch_order, :third_latch
