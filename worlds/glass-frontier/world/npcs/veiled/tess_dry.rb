npc :tess_dry do
  name "Tess Dry"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tess Dry brings Cold Lantern water accounts to the Dry Net and returns with signed ration changes."
end

relate :rel_tess_dry_at_the_dry_net, :operates_in, :tess_dry, :the_dry_net
relate :rel_tess_dry_at_cold_lantern, :operates_in, :tess_dry, :cold_lantern
