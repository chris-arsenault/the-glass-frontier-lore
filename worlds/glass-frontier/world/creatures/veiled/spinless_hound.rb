creature :spinless_hound do
  name "Spinless Hound"
  summary "Spinless hounds are gravity-following anomalies found among Holl, Eleven, and Five Landing. They run across ceilings when a habitat's gravity changes and drag loose cargo behind them."
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "Spinless hounds run across ceilings when a habitat's gravity changes and drag loose cargo behind them."
end

relate :rel_spinless_hound_in_holl, :inhabits, :spinless_hound, :holl
relate :rel_spinless_hound_in_eleven, :inhabits, :spinless_hound, :eleven
relate :rel_spinless_hound_in_five_landing, :inhabits, :spinless_hound, :five_landing
