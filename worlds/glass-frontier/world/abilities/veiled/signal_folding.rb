ability :signal_folding do
  name "Signal Folding"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Signal folders compress a spoken warning into a resonance burst that survives damaged relay lines."
end

relate :rel_signal_folding_at_issel, :manifests_at, :signal_folding, :issel
relate :rel_signal_folding_at_tanel, :manifests_at, :signal_folding, :tanel
relate :rel_signal_folding_at_hab_meridian, :manifests_at, :signal_folding, :hab_meridian
