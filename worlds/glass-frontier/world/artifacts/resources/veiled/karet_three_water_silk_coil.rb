artifact :karet_three_water_silk_coil do
  name "The Karet-3 Water-Silk Coil"
  summary "The Karet-3 Water-Silk Coil is Ravel water-silk sourced around Ravel, Tanel, Issel, and Karet-3. It tightens around a leak and changes color when the escaping fluid carries a signal charge."
  subkind :artifact
  type_of :ravel_water_silk
  status :complete
  prominence :marginal
  veiled "The Karet-3 Water-Silk Coil tightens around a leak and changes color when the escaping fluid carries a signal charge."
end

relate :rel_ravel_water_silk_at_ravel, :sourced_from, :karet_three_water_silk_coil, :ravel
relate :rel_ravel_water_silk_at_tanel, :sourced_from, :karet_three_water_silk_coil, :tanel
relate :rel_ravel_water_silk_at_issel, :sourced_from, :karet_three_water_silk_coil, :issel
relate :rel_ravel_water_silk_at_karet_three, :sourced_from, :karet_three_water_silk_coil, :karet_three
