faction :south_shade_household do
  name "The South Shade Household"
  summary "The South Shade Household is one Ashvane family that exchanges pressure-safe rooms by season and carries its door seals between homes."
  type_of :shade_families
  subkind :community
  status :complete
  prominence :marginal
  veiled "The South Shade Household is one Ashvane family that exchanges pressure-safe rooms by season and carries its door seals between homes."
end
relate :rel_shade_families_at_ashvane, :manifests_at, :south_shade_household, :ashvane
relate :rel_shade_families_at_shadewell, :manifests_at, :south_shade_household, :shadewell
relate :rel_shade_families_at_coldside_bench, :manifests_at, :south_shade_household, :coldside_bench
relate :rel_shade_families_at_south_shade, :manifests_at, :south_shade_household, :south_shade
