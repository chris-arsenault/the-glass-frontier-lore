resource :vigil_shock_pin do
  name "Vigil Shock Pin"
  subkind :device
  status :complete
  prominence :marginal
  veiled "A Vigil shock pin grounds one resonance strike by shattering into harmless black grains."
end

relate :rel_vigil_shock_pin_at_vigil_breach, :sourced_from, :vigil_shock_pin, :vigil_breach
relate :rel_vigil_shock_pin_at_kyther_range, :sourced_from, :vigil_shock_pin, :kyther_range
relate :rel_vigil_shock_pin_at_marker_house_twelve, :sourced_from, :vigil_shock_pin, :marker_house_twelve
relate :rel_vigil_shock_pin_at_ladderwell, :sourced_from, :vigil_shock_pin, :ladderwell
