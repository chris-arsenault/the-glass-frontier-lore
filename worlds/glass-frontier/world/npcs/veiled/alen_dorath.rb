npc :alen_dorath do
  name "Alen Dorath"
  summary "Alen Dorath is a Sithari bell tuner who repairs household bells with voice records from Old Campus."
  subkind :npc
  status :complete
  prominence :marginal
  veiled "Alen Dorath buys broken household bells in Sithari and returns them tuned to voices from Old Campus."end

relate :rel_alen_dorath_at_sithari, :operates_in, :alen_dorath, :sithari
relate :rel_alen_dorath_at_old_campus, :operates_in, :alen_dorath, :old_campus
