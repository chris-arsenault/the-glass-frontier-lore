npc :rell_threshold do
  name "Rell Threshold"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Rell Threshold moves refractory samples from Crucible to Threshold Station under a shared cargo bond."
end

relate :rel_rell_threshold_at_threshold_station, :operates_in, :rell_threshold, :threshold_station
relate :rel_rell_threshold_at_crucible, :operates_in, :rell_threshold, :crucible
