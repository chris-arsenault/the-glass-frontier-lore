npc :nera_cold do
  name "Nera Cold"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Nera Cold dries South Shade condenser felt on the wind racks at Coldside Bench."
end

relate :rel_nera_cold_at_south_shade, :operates_in, :nera_cold, :south_shade
relate :rel_nera_cold_at_coldside_bench, :operates_in, :nera_cold, :coldside_bench
