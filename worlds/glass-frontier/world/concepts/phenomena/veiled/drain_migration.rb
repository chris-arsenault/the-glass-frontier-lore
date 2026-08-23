phenomenon :drain_migration do
  name "The Drain Migration"
  subkind :ecological_phenomenon
  status :complete
  prominence :marginal
  veiled "Metal-feeding drain life leaves Glasswake in silver streams whenever the surface yards begin cutting ringglass."
end

relate :rel_drain_migration_at_glasswake, :manifests_at, :drain_migration, :glasswake
relate :rel_drain_migration_at_the_dry_net, :manifests_at, :drain_migration, :the_dry_net
relate :rel_drain_migration_at_three_arms_yard, :manifests_at, :drain_migration, :three_arms_yard
relate :rel_drain_migration_at_blue_step_works, :manifests_at, :drain_migration, :blue_step_works
