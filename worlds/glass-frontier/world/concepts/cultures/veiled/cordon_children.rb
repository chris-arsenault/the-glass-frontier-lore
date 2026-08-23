culture :cordon_children do
  name "Cordon Children"
  subkind :overview
  status :complete
  prominence :marginal
  veiled "Cordon Children learn Bloom warning colors before letters and paint safe routes across their sleeves."
end

relate :rel_cordon_children_at_bloom_zones, :manifests_at, :cordon_children, :bloom_zones
relate :rel_cordon_children_at_latch, :manifests_at, :cordon_children, :latch
