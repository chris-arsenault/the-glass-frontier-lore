culture :bellward_guests do
  name "Bellward Guests"
  summary "Bellward Guests are travelers lodged under the Bellward custom who repay a household by carrying one message onward toward Sithari or the Keel."
  subkind :culture
  status :complete
  prominence :marginal
  veiled "Bellward guests repay lodging by carrying one household message onward toward the capital or the Keel."
end

relate :rel_bellward_guests_at_fourth_bell_house, :manifests_at, :bellward_guests, :fourth_bell_house
relate :rel_bellward_guests_at_keelward, :manifests_at, :bellward_guests, :keelward
relate :rel_bellward_guests_at_sithari, :manifests_at, :bellward_guests, :sithari
relate :rel_bellward_guests_at_accord_shore, :manifests_at, :bellward_guests, :accord_shore
