ability :signal_folding do
  name "Signal Folding"
  summary "Signal Folding is a communication technique that compresses a spoken warning into a resonance burst able to cross damaged relay lines."
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Signal folders compress a spoken warning into a resonance burst that survives damaged relay lines."
end

relate :rel_signal_folding_at_issel, :manifests_at, :signal_folding, :issel
relate :rel_signal_folding_at_tanel, :manifests_at, :signal_folding, :tanel
relate :rel_signal_folding_at_hab_meridian, :manifests_at, :signal_folding, :hab_meridian
