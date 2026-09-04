artifact :marker_twelve_shock_pin do
  name "The Marker Twelve Shock Pin"
  summary "The Marker Twelve Shock Pin is a single-use grounding device sourced from Vigil Breach, the Kyther Range, Marker House Twelve, and Ladderwell. It absorbs one resonance strike and shatters into harmless black grains."
  subkind :artifact
  type_of :vigil_pin
  status :complete
  prominence :marginal
  veiled "The Marker Twelve Shock Pin grounds one resonance strike by shattering into harmless black grains."
end

relate :rel_vigil_shock_pin_at_vigil_breach, :sourced_from, :marker_twelve_shock_pin, :vigil_breach
relate :rel_vigil_shock_pin_at_kyther_range, :sourced_from, :marker_twelve_shock_pin, :kyther_range
relate :rel_vigil_shock_pin_at_marker_house_twelve, :sourced_from, :marker_twelve_shock_pin, :marker_house_twelve
relate :rel_vigil_shock_pin_at_ladderwell, :sourced_from, :marker_twelve_shock_pin, :ladderwell
