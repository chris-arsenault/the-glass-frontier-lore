edict :cinder_entry_rule do
  name "The Cinder Entry Rule"
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Cinder Entry Rule admits a crew to Pyre only after its tools hold a stable temperature for one watch."
end

relate :rel_cinder_entry_rule_at_cinder_gap, :manifests_at, :cinder_entry_rule, :cinder_gap
relate :rel_cinder_entry_rule_at_pyre, :manifests_at, :cinder_entry_rule, :pyre
