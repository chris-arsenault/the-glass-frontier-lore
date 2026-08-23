ability :vault_stilling do
  name "Vault Stilling"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Vault stillers damp a room's signal band long enough to move one unstable archive case."
end

relate :rel_vault_stilling_at_thornvault, :manifests_at, :vault_stilling, :thornvault
relate :rel_vault_stilling_at_folded_annex, :manifests_at, :vault_stilling, :folded_annex
