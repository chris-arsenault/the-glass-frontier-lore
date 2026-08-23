ability :bloom_sense do
  name "Bloom Sense"
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Bloom-sensitive people feel their teeth ache before a dormant zone begins emitting light."
end

relate :rel_bloom_sense_at_bloom_zones, :manifests_at, :bloom_sense, :bloom_zones
relate :rel_bloom_sense_at_cinder_gap, :manifests_at, :bloom_sense, :cinder_gap
relate :rel_bloom_sense_at_latch, :manifests_at, :bloom_sense, :latch
