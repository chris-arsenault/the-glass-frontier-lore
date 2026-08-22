npc :tarn_kyther do
  name "Tarn Kyther"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Tarn Kyther replaces breach alarms across Kyther Range and Vigil Breach after every high-wind watch."
end

relate :rel_tarn_kyther_at_kyther_range, :operates_in, :tarn_kyther, :kyther_range
relate :rel_tarn_kyther_at_vigil_breach, :operates_in, :tarn_kyther, :vigil_breach
