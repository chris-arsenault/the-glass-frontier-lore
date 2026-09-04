creature :threshold_child_voice do
  name "The Threshold Child-Voice"
  summary "The Threshold Child-Voice is a relay-ground anomaly ranging between Whitefoot and Threshold Station. It repeats signal bursts in children's voices and flees from a correct reply."
  subkind :anomaly
  type_of :tellers
  status :complete
  prominence :marginal
  veiled "The Threshold Child-Voice repeats relay bursts in children's voices and flees from any correct reply."
end

relate :rel_whitefoot_teller_in_whitefoot, :inhabits, :threshold_child_voice, :whitefoot
relate :rel_whitefoot_teller_in_threshold_station, :inhabits, :threshold_child_voice, :threshold_station
