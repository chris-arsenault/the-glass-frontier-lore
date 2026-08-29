incident :far_bell_ravel_tides do
  name "Far Bell Ravel Tides"
  summary "Far Bell Ravel Tides are periodic force shifts that draw loose objects toward the next active signal relay before releasing them together."
  type_of :ravel_tides
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Far Bell Ravel Tides are periodic force shifts that draw loose objects toward the next active signal relay before releasing them together."
end
relate :rel_ravel_tides_at_ravel, :manifests_at, :far_bell_ravel_tides, :ravel
relate :rel_ravel_tides_at_tanel, :manifests_at, :far_bell_ravel_tides, :tanel
relate :rel_ravel_tides_at_issel, :manifests_at, :far_bell_ravel_tides, :issel
relate :rel_ravel_tides_at_far_bell, :manifests_at, :far_bell_ravel_tides, :far_bell
