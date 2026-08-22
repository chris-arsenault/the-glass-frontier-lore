npc :nesh_cold do
  name "Nesh Cold"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Nesh Cold patches shade cloth at Coldside Bench and Shadewell with thread recovered from cargo wraps."
end

relate :rel_nesh_cold_at_coldside_bench, :operates_in, :nesh_cold, :coldside_bench
relate :rel_nesh_cold_at_shadewell, :operates_in, :nesh_cold, :shadewell
