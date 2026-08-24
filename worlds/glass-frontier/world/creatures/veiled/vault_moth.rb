creature :vault_moth do
  name "Vault Moth"
  summary "Vault moths are archive animals found at Thornvault, the Folded Annex, and Old Campus. They eat binding glue and leave each freed page enclosed in a transparent cocoon."
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Vault moths eat archive glue and leave each freed page wrapped in a transparent cocoon."
end

relate :rel_vault_moth_in_thornvault, :inhabits, :vault_moth, :thornvault
relate :rel_vault_moth_in_folded_annex, :inhabits, :vault_moth, :folded_annex
relate :rel_vault_moth_in_old_campus, :inhabits, :vault_moth, :old_campus
