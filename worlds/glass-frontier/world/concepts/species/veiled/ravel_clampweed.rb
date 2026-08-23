species :ravel_clampweed do
  name "Ravel Clampweed"
  subkind :species
  status :complete
  prominence :marginal
  veiled "Ravel clampweed grips hull seams during signal tides and opens its leaves when the pull passes."
end

relate :rel_ravel_clampweed_at_ravel, :inhabits, :ravel_clampweed, :ravel
relate :rel_ravel_clampweed_at_tanel, :inhabits, :ravel_clampweed, :tanel
