faction :kyther_water_court do
  name "Kyther Water Court"
  subkind :government
  status :complete
  prominence :marginal
  veiled "Kyther Water Court assigns melt channels by reading the previous season's marks at Marker House Twelve."
end

relate :rel_kyther_water_court_at_kyther_range, :operates_in, :kyther_water_court, :kyther_range
relate :rel_kyther_water_court_at_marker_house_twelve, :operates_in, :kyther_water_court, :marker_house_twelve
