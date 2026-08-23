artifact :whitefoot_pulse_sled do
  name "Whitefoot Pulse Sled"
  subkind :machine
  status :complete
  prominence :marginal
  veiled "The Whitefoot Pulse Sled carries a live relay core while keeping its signal aligned across broken track."
end

relate :rel_whitefoot_pulse_sled_at_whitefoot, :operates_in, :whitefoot_pulse_sled, :whitefoot
relate :rel_whitefoot_pulse_sled_at_span_nine, :operates_in, :whitefoot_pulse_sled, :span_nine
relate :rel_whitefoot_pulse_sled_at_threshold_station, :operates_in, :whitefoot_pulse_sled, :threshold_station
