incident :lot_forty_spark_bloom do
  name "Lot Forty Spark Bloom"
  summary "Lot Forty Spark Bloom is a scrap-bed life cycle in which warm-rooted growths release metallic spores as Lot Forty cutters approach."
  type_of :tithe
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Lot Forty Spark Bloom is a scrap-bed life cycle in which warm-rooted growths release metallic spores as Lot Forty cutters approach."
end
relate :rel_crowncut_spark_bloom_at_crowncut_refinery, :manifests_at, :lot_forty_spark_bloom, :crowncut_refinery
relate :rel_crowncut_spark_bloom_at_lot_forty, :manifests_at, :lot_forty_spark_bloom, :forty
