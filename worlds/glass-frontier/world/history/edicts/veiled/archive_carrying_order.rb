edict :archive_carrying_order do
  name "The Archive-Carrying Order"
  summary "The Archive-Carrying Order requires each recovered record to pass through three separate vaults before a public reading."
  subkind :edict
  type_of :archives_and_public_memory
  belongs_to :culture, :sitharian_governance
  status :complete
  prominence :marginal
  veiled "The Archive-Carrying Order sends every recovered record through three separate vaults before any public reading."
end

relate :rel_archive_carrying_order_at_old_campus, :manifests_at, :archive_carrying_order, :old_campus
relate :rel_archive_carrying_order_at_folded_annex, :manifests_at, :archive_carrying_order, :folded_annex
relate :rel_archive_carrying_order_at_thornvault, :manifests_at, :archive_carrying_order, :thornvault
relate :rel_archive_carrying_order_at_ledgerfall, :manifests_at, :archive_carrying_order, :ledgerfall
