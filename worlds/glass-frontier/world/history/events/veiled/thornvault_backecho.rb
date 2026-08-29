incident :thornvault_backecho do
  name "Thornvault Backecho"
  summary "The Thornvault Backecho is a connected series of four recordings found at Thornvault, Sable Crescent, Ledgerfall, and Hab Meridian, each carrying the voice of someone not yet born when it was made."
  type_of :sable_backecho
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Four recordings found from Thornvault to Hab Meridian carry nearby living voices that had not been born when the material was recorded."
end

relate :rel_sable_backecho_at_sable_crescent, :manifests_at, :thornvault_backecho, :sable_crescent
relate :rel_sable_backecho_at_ledgerfall, :manifests_at, :thornvault_backecho, :ledgerfall
relate :rel_sable_backecho_at_thornvault, :manifests_at, :thornvault_backecho, :thornvault
relate :rel_sable_backecho_at_hab_meridian, :manifests_at, :thornvault_backecho, :hab_meridian
