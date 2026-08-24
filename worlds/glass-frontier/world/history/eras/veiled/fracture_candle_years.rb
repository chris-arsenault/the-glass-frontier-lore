era :fracture_candle_years do
  name "The Fracture-Candle Years"
  summary "The Fracture-Candle Years were a period around Korvath and Vigil Breach when claim beacons failed faster than crews could replace them."
  subkind :historical_period
  status :complete
  prominence :marginal
  veiled "The Fracture-Candle Years are remembered for claim beacons burning faster than crews could replace them."
end

relate :rel_fracture_candle_years_at_korvath, :manifests_at, :fracture_candle_years, :korvath
relate :rel_fracture_candle_years_at_vigil_breach, :manifests_at, :fracture_candle_years, :vigil_breach
