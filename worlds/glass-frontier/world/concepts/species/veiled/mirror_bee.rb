species :mirror_bee do
  name "Mirror Bee"
  subkind :species
  status :complete
  prominence :marginal
  veiled "Mirror bees pollinate blue loam plants and copy the color of the last healthy flower they touched."
end

relate :rel_mirror_bee_at_lumenshard, :inhabits, :mirror_bee, :lumenshard
relate :rel_mirror_bee_at_miraeth, :inhabits, :mirror_bee, :miraeth
