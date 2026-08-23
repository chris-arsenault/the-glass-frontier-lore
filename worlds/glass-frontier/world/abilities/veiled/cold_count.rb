ability :cold_count do
  name "Cold Count"
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Cold counters wake when a hull loses heat faster than its gauges can register."
end

relate :rel_cold_count_at_lithren, :manifests_at, :cold_count, :lithren
relate :rel_cold_count_at_vastine, :manifests_at, :cold_count, :vastine
relate :rel_cold_count_at_pelhari, :manifests_at, :cold_count, :pelhari
