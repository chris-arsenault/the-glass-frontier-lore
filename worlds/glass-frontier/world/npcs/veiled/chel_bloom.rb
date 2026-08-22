npc :chel_bloom do
  name "Chel'bloom"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'bloom compares salvage growths from Thirty-One, the Bloom Zones, Blue Step Works, and Brake."
end

relate :rel_chel_bloom_at_bay_thirty_one, :operates_in, :chel_bloom, :bay_thirty_one
relate :rel_chel_bloom_at_bloom_zones, :operates_in, :chel_bloom, :bloom_zones
relate :rel_chel_bloom_at_blue_step_works, :operates_in, :chel_bloom, :blue_step_works
relate :rel_chel_bloom_at_brake, :operates_in, :chel_bloom, :brake
