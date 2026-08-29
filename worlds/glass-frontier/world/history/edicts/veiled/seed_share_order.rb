edict :seed_share_order do
  name "The Seed-Share Order"
  summary "The Seed-Share Order requires half of every revived Orra strain to reach a second habitat before local planting begins."
  subkind :edict
  type_of :resource_sharing_rule
  status :complete
  prominence :marginal
  veiled "The Seed-Share Order sends half of every revived Orra strain to a second habitat before local planting begins."
end

relate :rel_seed_share_order_at_orra, :manifests_at, :seed_share_order, :orra
relate :rel_seed_share_order_at_olven, :manifests_at, :seed_share_order, :olven
