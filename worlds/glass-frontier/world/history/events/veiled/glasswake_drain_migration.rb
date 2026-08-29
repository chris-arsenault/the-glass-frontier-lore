incident :glasswake_drain_migration do
  name "Glasswake Drain Migration"
  summary "Glasswake Drain Migration is the seasonal departure of metal-feeding life from Glasswake's drains when surface yards begin cutting ringglass."
  type_of :drain_migration
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Glasswake Drain Migration is the seasonal departure of metal-feeding life from Glasswake's drains when surface yards begin cutting ringglass."
end
relate :rel_drain_migration_at_glasswake, :manifests_at, :glasswake_drain_migration, :glasswake
relate :rel_drain_migration_at_the_dry_net, :manifests_at, :glasswake_drain_migration, :the_dry_net
relate :rel_drain_migration_at_three_arms_yard, :manifests_at, :glasswake_drain_migration, :three_arms_yard
relate :rel_drain_migration_at_blue_step_works, :manifests_at, :glasswake_drain_migration, :blue_step_works
