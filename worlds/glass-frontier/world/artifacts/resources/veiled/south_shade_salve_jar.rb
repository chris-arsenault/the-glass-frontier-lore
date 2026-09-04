artifact :south_shade_salve_jar do
  name "The South Shade Salve Jar"
  summary "The South Shade Salve Jar holds shade-burn salve sourced from Crucible and South Shade. It draws charged grit from flesh and becomes rigid when the last grain leaves."
  subkind :artifact
  type_of :cast
  status :complete
  prominence :marginal
  veiled "The South Shade Salve Jar draws charged grit from a wound and turns rigid when the last grain leaves."
end

relate :rel_shade_burn_salve_at_crucible, :sourced_from, :south_shade_salve_jar, :crucible
relate :rel_shade_burn_salve_at_south_shade, :sourced_from, :south_shade_salve_jar, :south_shade
