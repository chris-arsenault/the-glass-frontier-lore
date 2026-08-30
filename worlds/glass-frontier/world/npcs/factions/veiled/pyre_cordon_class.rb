faction :pyre_cordon_class do
  name "The Pyre Cordon Class"
  summary "The Pyre Cordon Class is one cohort raised beside Bloom boundaries, taught warning colors before letters and accustomed to wearing safe-route marks."
  type_of :cordon_children
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Pyre Cordon Class is one cohort raised beside Bloom boundaries, taught warning colors before letters and accustomed to wearing safe-route marks."
end
relate :rel_cordon_children_at_bloom_zones, :manifests_at, :pyre_cordon_class, :bloom_zones
relate :rel_cordon_children_at_latch, :manifests_at, :pyre_cordon_class, :latch
