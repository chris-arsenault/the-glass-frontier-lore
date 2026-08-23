transport :vault_mule do
  name "Vault Mule"
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Vault mules carry unstable records in separate suspended cages so one bad page cannot wake the rest."
end

relate :rel_vault_mule_at_thornvault, :operates_in, :vault_mule, :thornvault
relate :rel_vault_mule_at_folded_annex, :operates_in, :vault_mule, :folded_annex
relate :rel_vault_mule_at_underlayers, :operates_in, :vault_mule, :underlayers
