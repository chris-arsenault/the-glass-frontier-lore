artifact :kyther_water_blade do
  name "Kyther Water Blade"
  subkind :relic
  status :complete
  prominence :marginal
  veiled "The Kyther Water Blade sweats clean water when held against stone carrying a buried resonance seam."
end

relate :rel_kyther_water_blade_at_kyther_range, :operates_in, :kyther_water_blade, :kyther_range
relate :rel_kyther_water_blade_at_avar, :operates_in, :kyther_water_blade, :avar
