faction :fourth_bell_hosts do
  name "The Fourth Bell Hosts"
  summary "The Fourth Bell Hosts are the participating houses that reserve one bed for travelers carrying news between Sithari and the Keel."
  type_of :bellward_guests
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Fourth Bell Hosts are the participating houses that reserve one bed for travelers carrying news between Sithari and the Keel."
end

relate :rel_bellward_hospitality_at_fourth_bell_house, :manifests_at, :fourth_bell_hosts, :fourth_bell_house
relate :rel_bellward_hospitality_at_keelward, :manifests_at, :fourth_bell_hosts, :keelward
relate :rel_bellward_hospitality_at_accord_shore, :manifests_at, :fourth_bell_hosts, :accord_shore
relate :rel_bellward_hospitality_at_sithari, :manifests_at, :fourth_bell_hosts, :sithari
