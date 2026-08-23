transport :blue_meridian do
  name "Blue Meridian"
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Blue Meridian carries live soil between Hab Meridian and Miraeth in twelve separately tuned holds."
end

relate :rel_blue_meridian_at_hab_meridian, :operates_in, :blue_meridian, :hab_meridian
relate :rel_blue_meridian_at_miraeth, :operates_in, :blue_meridian, :miraeth
relate :rel_blue_meridian_at_lumenshard, :operates_in, :blue_meridian, :lumenshard
