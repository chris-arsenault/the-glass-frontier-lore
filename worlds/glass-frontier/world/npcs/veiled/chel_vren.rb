npc :chel_vren do
  name "Chel'vren"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'vren gathers altered pollen in the Bloom Zones and compares it with living tissue from Xyloathax."
end

relate :rel_chel_vren_at_xyloathax, :operates_in, :chel_vren, :xyloathax
relate :rel_chel_vren_at_bloom_zones, :operates_in, :chel_vren, :bloom_zones
