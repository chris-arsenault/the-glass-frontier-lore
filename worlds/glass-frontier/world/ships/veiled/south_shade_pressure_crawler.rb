transport :south_shade_pressure_crawler do
  name "The South Shade Pressure Crawler"
  summary "The South Shade Pressure Crawler is a rock-clinging passenger vehicle used around Shadewell, South Shade, and Coldside Bench. Pressure hammocks secure its occupants during wind shifts."
  subkind :transport
  type_of :shade_crawler
  status :complete
  prominence :marginal
  veiled "The South Shade Pressure Crawler clings to Ashvane rock and folds its passengers into pressure hammocks during wind shifts."
end

relate :rel_shade_crawler_at_shadewell, :operates_in, :south_shade_pressure_crawler, :shadewell
relate :rel_shade_crawler_at_south_shade, :operates_in, :south_shade_pressure_crawler, :south_shade
relate :rel_shade_crawler_at_coldside_bench, :operates_in, :south_shade_pressure_crawler, :coldside_bench
