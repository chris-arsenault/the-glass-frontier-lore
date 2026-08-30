edict :warm_cargo_order do
  name "The Warm-Cargo Order"
  summary "The Warm-Cargo Order requires Crucible ore to carry an open heat gauge from the mine lift to its Ashvane workshop."
  subkind :edict
  type_of :road_and_freight_law
  belongs_to :culture, :workshop_authority
  status :complete
  prominence :marginal
  veiled "The Warm-Cargo Order requires Crucible ore to keep one open heat gauge from mine lift to Ashvane workshop."
end

relate :rel_warm_cargo_order_at_crucible, :manifests_at, :warm_cargo_order, :crucible
relate :rel_warm_cargo_order_at_ashvane, :manifests_at, :warm_cargo_order, :ashvane
relate :rel_warm_cargo_order_at_shadewell, :manifests_at, :warm_cargo_order, :shadewell
relate :rel_warm_cargo_order_at_coldside_bench, :manifests_at, :warm_cargo_order, :coldside_bench
