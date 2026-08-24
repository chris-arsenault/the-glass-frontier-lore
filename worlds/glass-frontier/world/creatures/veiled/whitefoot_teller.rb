creature :whitefoot_teller do
  name "Whitefoot Teller"
  summary "Whitefoot tellers are relay-ground anomalies found between Whitefoot and Threshold Station. They repeat signal bursts in children's voices and flee from a correct reply."
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "Whitefoot tellers repeat relay bursts in children's voices and flee from any correct reply."
end

relate :rel_whitefoot_teller_in_whitefoot, :inhabits, :whitefoot_teller, :whitefoot
relate :rel_whitefoot_teller_in_threshold_station, :inhabits, :whitefoot_teller, :threshold_station
