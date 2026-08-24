culture :shade_families do
  name "Shade Families"
  summary "Shade Families are Ashvane households who exchange pressure-safe rooms by season and carry their door seals between homes."
  subkind :regional_culture
  status :complete
  prominence :marginal
  veiled "Shade Families exchange pressure-safe rooms by season and carry their door seals from house to house."
end

relate :rel_shade_families_at_ashvane, :manifests_at, :shade_families, :ashvane
relate :rel_shade_families_at_shadewell, :manifests_at, :shade_families, :shadewell
relate :rel_shade_families_at_coldside_bench, :manifests_at, :shade_families, :coldside_bench
relate :rel_shade_families_at_south_shade, :manifests_at, :shade_families, :south_shade
