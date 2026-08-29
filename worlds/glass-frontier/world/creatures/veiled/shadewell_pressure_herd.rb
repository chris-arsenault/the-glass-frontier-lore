creature :shadewell_pressure_herd do
  name "The Shadewell Pressure Herd"
  summary "The Shadewell Pressure Herd feeds on hot mineral film outside Shadewell and nearby Ashvane settlements. Before storms, it runs toward sealed workshops."
  subkind :animal
  type_of :pressure_grazer
  status :complete
  prominence :marginal
  veiled "The Shadewell Pressure Herd crops the hot mineral film outside the settlement and stampedes toward sealed workshops before storms."
end

relate :rel_pressure_grazer_in_shadewell, :inhabits, :shadewell_pressure_herd, :shadewell
relate :rel_pressure_grazer_in_coldside_bench, :inhabits, :shadewell_pressure_herd, :coldside_bench
relate :rel_pressure_grazer_in_south_shade, :inhabits, :shadewell_pressure_herd, :south_shade
