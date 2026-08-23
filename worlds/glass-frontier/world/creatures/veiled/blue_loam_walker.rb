creature :blue_loam_walker do
  name "Blue-Loam Walker"
  subkind :creature
  status :complete
  prominence :marginal
  veiled "Blue-loam walkers carry whole gardens on their backs and bury themselves when the soil turns sour."
end

relate :rel_blue_loam_walker_in_miraeth, :inhabits, :blue_loam_walker, :miraeth
relate :rel_blue_loam_walker_in_lumenshard, :inhabits, :blue_loam_walker, :lumenshard
relate :rel_blue_loam_walker_in_seren, :inhabits, :blue_loam_walker, :seren
