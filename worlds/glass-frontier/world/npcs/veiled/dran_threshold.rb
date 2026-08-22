npc :dran_threshold do
  name "Dran Threshold"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dran Threshold services freight lifts at Three Arms Yard, Threshold Station, the Underlayers, and Vastine."
end

relate :rel_dran_threshold_at_three_arms_yard, :operates_in, :dran_threshold, :three_arms_yard
relate :rel_dran_threshold_at_threshold_station, :operates_in, :dran_threshold, :threshold_station
relate :rel_dran_threshold_at_underlayers, :operates_in, :dran_threshold, :underlayers
relate :rel_dran_threshold_at_vastine, :operates_in, :dran_threshold, :vastine
