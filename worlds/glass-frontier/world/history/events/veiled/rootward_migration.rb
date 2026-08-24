incident :rootward_migration do
  name "The Rootward Migration"
  summary "The Rootward Migration moved Noll gardeners and their soil beds into Olven after a root deck cooled beyond recovery."
  subkind :migration
  status :complete
  prominence :marginal
  veiled "Noll gardeners moved into Olven with their soil beds after a whole root deck cooled beyond recovery."
end

relate :rel_rootward_migration_at_noll, :manifests_at, :rootward_migration, :noll
relate :rel_rootward_migration_at_olven, :manifests_at, :rootward_migration, :olven
