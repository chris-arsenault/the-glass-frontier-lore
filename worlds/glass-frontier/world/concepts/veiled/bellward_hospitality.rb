concept :bellward_hospitality do
  name "Bellward Hospitality"
  summary "Bellward Hospitality is a lodging custom that reserves one bed in participating houses for travelers carrying news between Sithari and the Keel."
  subkind :social_system
  status :complete
  prominence :marginal
  veiled "Bellward houses reserve one bed for travelers carrying news between the surface capital and the Keel."
end

relate :rel_bellward_hospitality_at_fourth_bell_house, :manifests_at, :bellward_hospitality, :fourth_bell_house
relate :rel_bellward_hospitality_at_keelward, :manifests_at, :bellward_hospitality, :keelward
relate :rel_bellward_hospitality_at_accord_shore, :manifests_at, :bellward_hospitality, :accord_shore
relate :rel_bellward_hospitality_at_sithari, :manifests_at, :bellward_hospitality, :sithari
