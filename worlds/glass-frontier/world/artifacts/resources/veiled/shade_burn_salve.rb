resource :shade_burn_salve do
  name "Shade-Burn Salve"
  summary "Shade-burn salve is a wound medicine sourced from Crucible and South Shade. It draws charged grit from flesh and becomes rigid when the last grain leaves."
  subkind :medicine
  status :complete
  prominence :marginal
  veiled "Shade-burn salve draws charged grit from a wound and turns rigid when the last grain leaves."
end

relate :rel_shade_burn_salve_at_crucible, :sourced_from, :shade_burn_salve, :crucible
relate :rel_shade_burn_salve_at_south_shade, :sourced_from, :shade_burn_salve, :south_shade
