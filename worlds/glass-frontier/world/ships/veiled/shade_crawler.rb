transport :shade_crawler do
  name "Shade Crawler"
  summary "Shade crawlers are rock-clinging passenger vehicles used around Shadewell, South Shade, and Coldside Bench. Pressure hammocks secure their occupants during wind shifts."
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Shade crawlers cling to Ashvane rock and fold their passengers into pressure hammocks during wind shifts."
end

relate :rel_shade_crawler_at_shadewell, :operates_in, :shade_crawler, :shadewell
relate :rel_shade_crawler_at_south_shade, :operates_in, :shade_crawler, :south_shade
relate :rel_shade_crawler_at_coldside_bench, :operates_in, :shade_crawler, :coldside_bench
