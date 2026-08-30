faction :fourth_bell_company do
  name "The Fourth Bell Company"
  summary "The Fourth Bell Company is one group of travelers lodged under the Bellward custom who repay a household by carrying one message onward toward Sithari or the Keel."
  type_of :bellward_guests
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Fourth Bell Company is one group of travelers lodged under the Bellward custom who repay a household by carrying one message onward toward Sithari or the Keel."
end
relate :rel_bellward_guests_at_fourth_bell_house, :manifests_at, :fourth_bell_company, :fourth_bell_house
relate :rel_bellward_guests_at_keelward, :manifests_at, :fourth_bell_company, :keelward
relate :rel_bellward_guests_at_sithari, :manifests_at, :fourth_bell_company, :sithari
relate :rel_bellward_guests_at_accord_shore, :manifests_at, :fourth_bell_company, :accord_shore
