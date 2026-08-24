transport :vault_mule do
  name "Vault Mule"
  summary "Vault mules are archive-transport vehicles serving Thornvault, the Folded Annex, and the Underlayers. Suspended cages isolate unstable records so one bad page cannot activate the rest."
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Vault mules carry unstable records in separate suspended cages so one bad page cannot wake the rest."
end

relate :rel_vault_mule_at_thornvault, :operates_in, :vault_mule, :thornvault
relate :rel_vault_mule_at_folded_annex, :operates_in, :vault_mule, :folded_annex
relate :rel_vault_mule_at_underlayers, :operates_in, :vault_mule, :underlayers
