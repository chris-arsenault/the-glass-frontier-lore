npc :tala_rattle do
  name "Tala Rattle"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tala Rattle carries axle bids between Rattle and Carom and reads each offer aloud at both docks."
end

relate :rel_tala_rattle_at_exchange_c, :operates_in, :tala_rattle, :exchange_c
relate :rel_tala_rattle_at_carom, :operates_in, :tala_rattle, :carom
