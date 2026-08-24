conflict :fourth_bell_tenancy do
  name "The Fourth Bell Tenancy"
  summary "The Fourth Bell Tenancy is a conflict between Keelward families and route crews over occupancy of Fourth Bell House during dock closures."
  subkind :conflict
  status :complete
  prominence :marginal
  veiled "Keelward families and route crews contest who may occupy Fourth Bell House during long dock closures."
end

relate :rel_fourth_bell_tenancy_at_fourth_bell_house, :manifests_at, :fourth_bell_tenancy, :fourth_bell_house
relate :rel_fourth_bell_tenancy_at_keelward, :manifests_at, :fourth_bell_tenancy, :keelward
