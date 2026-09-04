creature :lumenshard_garden_walker do
  name "The Lumenshard Garden-Walker"
  summary "The Lumenshard Garden-Walker is a garden-bearing creature ranging around Miraeth, Lumenshard, and Seren. It carries living soil on its back and buries itself when the soil turns sour."
  subkind :creature
  type_of :pavior
  status :complete
  prominence :marginal
  veiled "The Lumenshard Garden-Walker carries a whole garden on its back and buries itself when the soil turns sour."
end

relate :rel_blue_loam_walker_in_miraeth, :inhabits, :lumenshard_garden_walker, :miraeth
relate :rel_blue_loam_walker_in_lumenshard, :inhabits, :lumenshard_garden_walker, :lumenshard
relate :rel_blue_loam_walker_in_seren, :inhabits, :lumenshard_garden_walker, :seren
