phenomenon :ravel_tides do
  name "Ravel Tides"
  summary "Ravel Tides are periodic force shifts that draw loose objects toward the next active signal relay before releasing them together."
  subkind :physical_phenomenon
  status :complete
  prominence :marginal
  veiled "Ravel tides pull loose objects toward the next active signal relay before releasing them at once."
end

relate :rel_ravel_tides_at_ravel, :manifests_at, :ravel_tides, :ravel
relate :rel_ravel_tides_at_tanel, :manifests_at, :ravel_tides, :tanel
relate :rel_ravel_tides_at_issel, :manifests_at, :ravel_tides, :issel
relate :rel_ravel_tides_at_far_bell, :manifests_at, :ravel_tides, :far_bell
