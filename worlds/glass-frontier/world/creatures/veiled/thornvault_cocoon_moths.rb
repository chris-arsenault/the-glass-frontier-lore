creature :thornvault_cocoon_moths do
  name "The Thornvault Cocoon Moths"
  summary "The Thornvault Cocoon Moths are an archive colony ranging between Thornvault, the Folded Annex, and Old Campus. They eat binding glue and leave each freed page enclosed in a transparent cocoon."
  subkind :animal
  type_of :vault_moth
  status :complete
  prominence :marginal
  veiled "The Thornvault Cocoon Moths eat archive glue and leave each freed page wrapped in a transparent cocoon."
end

relate :rel_vault_moth_in_thornvault, :inhabits, :thornvault_cocoon_moths, :thornvault
relate :rel_vault_moth_in_folded_annex, :inhabits, :thornvault_cocoon_moths, :folded_annex
relate :rel_vault_moth_in_old_campus, :inhabits, :thornvault_cocoon_moths, :old_campus
