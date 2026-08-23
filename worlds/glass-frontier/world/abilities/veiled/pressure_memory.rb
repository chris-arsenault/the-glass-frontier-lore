ability :pressure_memory do
  name "Pressure Memory"
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Some Ashvane-born workers can retrace a pressure front hours after it has crossed a sealed room."
end

relate :rel_pressure_memory_at_shadewell, :manifests_at, :pressure_memory, :shadewell
relate :rel_pressure_memory_at_south_shade, :manifests_at, :pressure_memory, :south_shade
