npc :sel_threshold do
  name "Sel Threshold"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Sel Threshold carries sealed route changes through Threshold Station, the Underlayers, Vastine, and Verathi."
end

relate :rel_sel_threshold_at_threshold_station, :operates_in, :sel_threshold, :threshold_station
relate :rel_sel_threshold_at_underlayers, :operates_in, :sel_threshold, :underlayers
relate :rel_sel_threshold_at_vastine, :operates_in, :sel_threshold, :vastine
relate :rel_sel_threshold_at_verathi, :operates_in, :sel_threshold, :verathi
