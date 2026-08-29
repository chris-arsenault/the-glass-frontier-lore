transport :thornvault_cage_mule do
  name "The Thornvault Cage-Mule"
  summary "The Thornvault Cage-Mule is an archive-transport vehicle serving Thornvault, the Folded Annex, and the Underlayers. Its suspended cages isolate unstable records so one bad page cannot activate the rest."
  subkind :transport
  type_of :vault_mule
  status :complete
  prominence :marginal
  veiled "The Thornvault Cage-Mule carries unstable records in separate suspended cages so one bad page cannot wake the rest."
end

relate :rel_vault_mule_at_thornvault, :operates_in, :thornvault_cage_mule, :thornvault
relate :rel_vault_mule_at_folded_annex, :operates_in, :thornvault_cage_mule, :folded_annex
relate :rel_vault_mule_at_underlayers, :operates_in, :thornvault_cage_mule, :underlayers
