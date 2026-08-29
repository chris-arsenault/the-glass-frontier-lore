creature :seamkeeper do
  name "Seamkeeper"
  summary "Seamkeeper is a named Ravel clampweed growth traced through hull seams at Ravel and Tanel."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :ravel_clampweed
  veiled "Seamkeeper runs through the hull seams of Ravel and Tanel and grips both during the same signal tides."
end

relate :rel_seamkeeper_at_ravel, :inhabits, :seamkeeper, :ravel
relate :rel_seamkeeper_at_tanel, :inhabits, :seamkeeper, :tanel
