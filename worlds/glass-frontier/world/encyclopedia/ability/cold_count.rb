encyclopedia :cold_count do
  name "Cold Count"
  summary "Cold Count is an innate sensitivity to rapid hull heat loss that can wake its bearer before ordinary gauges register the change."
  kind :ability
  subkind :innate_sensitivity
  status :draft
  prevalence :rare
  appears_when all: { place: [:cold] }

  tier :broad, effect: "Wake when a hull loses heat faster than ordinary gauges can register"

  prose "Cold counters wake when a hull loses heat faster than its gauges can register."
end
