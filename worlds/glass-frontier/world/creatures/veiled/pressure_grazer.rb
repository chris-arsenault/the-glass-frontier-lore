creature :pressure_grazer do
  name "Pressure Grazer"
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Pressure grazers crop the hot mineral film outside Shadewell and stampede toward sealed workshops before storms."
end

relate :rel_pressure_grazer_in_shadewell, :inhabits, :pressure_grazer, :shadewell
relate :rel_pressure_grazer_in_coldside_bench, :inhabits, :pressure_grazer, :coldside_bench
relate :rel_pressure_grazer_in_south_shade, :inhabits, :pressure_grazer, :south_shade
