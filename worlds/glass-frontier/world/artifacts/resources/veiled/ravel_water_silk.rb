resource :ravel_water_silk do
  name "Ravel Water-Silk"
  subkind :biological_material
  status :complete
  prominence :marginal
  veiled "Ravel water-silk tightens around a leak and changes color when the escaping fluid carries a signal charge."
end

relate :rel_ravel_water_silk_at_ravel, :sourced_from, :ravel_water_silk, :ravel
relate :rel_ravel_water_silk_at_tanel, :sourced_from, :ravel_water_silk, :tanel
relate :rel_ravel_water_silk_at_issel, :sourced_from, :ravel_water_silk, :issel
relate :rel_ravel_water_silk_at_karet_three, :sourced_from, :ravel_water_silk, :karet_three
