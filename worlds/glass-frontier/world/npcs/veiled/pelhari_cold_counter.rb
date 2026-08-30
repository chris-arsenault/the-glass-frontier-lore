npc :pelhari_cold_counter do
  name "The Pelhari Cold Counter"
  summary "The Pelhari Cold Counter wakes when a hull loses heat faster than its gauges can register."
  type_of :cold_count
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Pelhari Cold Counter wakes when a hull loses heat faster than its gauges can register."
end

relate :rel_cold_count_at_lithren, :manifests_at, :pelhari_cold_counter, :lithren
relate :rel_cold_count_at_vastine, :manifests_at, :pelhari_cold_counter, :vastine
relate :rel_cold_count_at_pelhari, :manifests_at, :pelhari_cold_counter, :pelhari
