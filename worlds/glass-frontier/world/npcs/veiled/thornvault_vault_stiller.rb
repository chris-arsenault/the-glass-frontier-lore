npc :thornvault_vault_stiller do
  name "The Thornvault Vault Stiller"
  summary "The Thornvault Vault Stiller damps a room's signal band long enough to move one unstable archive case."
  type_of :vault_stilling
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Thornvault Vault Stiller damps a room's signal band long enough to move one unstable archive case."
end

relate :rel_vault_stilling_at_thornvault, :manifests_at, :thornvault_vault_stiller, :thornvault
relate :rel_vault_stilling_at_folded_annex, :manifests_at, :thornvault_vault_stiller, :folded_annex
