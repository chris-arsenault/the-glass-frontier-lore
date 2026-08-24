phenomenon :crowncut_spark_bloom do
  name "Crowncut Spark Bloom"
  summary "Crowncut Spark Bloom is a scrap-bed life cycle in which warm-rooted growths release metallic spores as Lot Forty cutters approach."
  subkind :ecological_phenomenon
  status :complete
  prominence :marginal
  veiled "Crowncut spark blooms root in warm scrap and release metallic spores when Lot Forty cutters approach."
end

relate :rel_crowncut_spark_bloom_at_crowncut_refinery, :manifests_at, :crowncut_spark_bloom, :crowncut_refinery
relate :rel_crowncut_spark_bloom_at_lot_forty, :manifests_at, :crowncut_spark_bloom, :lot_forty
