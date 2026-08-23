edict :seed_share_order do
  name "The Seed-Share Order"
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Seed-Share Order sends half of every revived Orra strain to a second habitat before local planting begins."
end

relate :rel_seed_share_order_at_orra, :manifests_at, :seed_share_order, :orra
relate :rel_seed_share_order_at_olven, :manifests_at, :seed_share_order, :olven
