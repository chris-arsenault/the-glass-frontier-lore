artifact :kyther_water_blade do
  name "Kyther Water Blade"
  summary "The Kyther Water Blade is a prospecting relic used in the Kyther Range and Avar. It beads with clean water against stone that carries a buried resonance seam."
  subkind :relic
  type_of :anomalous_relic
  status :complete
  prominence :marginal
  veiled "The Kyther Water Blade sweats clean water when held against stone carrying a buried resonance seam."
end

relate :rel_kyther_water_blade_at_kyther_range, :operates_in, :kyther_water_blade, :kyther_range
relate :rel_kyther_water_blade_at_avar, :operates_in, :kyther_water_blade, :avar
