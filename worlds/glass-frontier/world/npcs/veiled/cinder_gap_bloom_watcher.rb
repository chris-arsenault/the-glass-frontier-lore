npc :cinder_gap_bloom_watcher do
  name "The Cinder Gap Bloom Watcher"
  summary "The Cinder Gap Bloom Watcher feels pain in their teeth before a dormant zone begins emitting light."
  type_of :bloom_sense
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Cinder Gap Bloom Watcher feels pain in their teeth before a dormant zone begins emitting light."
end

relate :rel_bloom_sense_at_bloom_zones, :manifests_at, :cinder_gap_bloom_watcher, :bloom_zones
relate :rel_bloom_sense_at_cinder_gap, :manifests_at, :cinder_gap_bloom_watcher, :cinder_gap
relate :rel_bloom_sense_at_latch, :manifests_at, :cinder_gap_bloom_watcher, :latch
