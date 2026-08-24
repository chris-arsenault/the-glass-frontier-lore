faction :archive_concord do
  name "Archive Concord"
  summary "Archive Concord is a research body whose readers compare recovered texts across four separate archive vaults."
  subkind :research_body
  status :complete
  prominence :marginal
  veiled "Archive Concord readers compare recovered texts in separate vaults and publish only the lines all copies share."
end

relate :rel_archive_concord_at_old_campus, :operates_in, :archive_concord, :old_campus
relate :rel_archive_concord_at_folded_annex, :operates_in, :archive_concord, :folded_annex
relate :rel_archive_concord_at_thornvault, :operates_in, :archive_concord, :thornvault
relate :rel_archive_concord_at_ledgerfall, :operates_in, :archive_concord, :ledgerfall
