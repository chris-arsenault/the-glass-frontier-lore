artifact :shade_condensing_frame do
  name "Shade Condensing Frame"
  summary "The Shade Condensing Frame is a water machine used around Shadewell, South Shade, and Coldside Bench. It draws clean water from Ashvane pressure exhaust and cracks when the wind reverses."
  subkind :machine
  status :complete
  prominence :marginal
  veiled "The Shade Condensing Frame pulls clean water from Ashvane's pressure exhaust and cracks when the wind reverses."
end

relate :rel_shade_condensing_frame_at_shadewell, :operates_in, :shade_condensing_frame, :shadewell
relate :rel_shade_condensing_frame_at_south_shade, :operates_in, :shade_condensing_frame, :south_shade
relate :rel_shade_condensing_frame_at_coldside_bench, :operates_in, :shade_condensing_frame, :coldside_bench
