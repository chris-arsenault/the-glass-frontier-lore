npc :tessa_thorn do
  name "Tessa Thorn"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tessa Thorn carries Thornvault cultivation records to Ledgerfall in bark-wrapped bundles."
end

relate :rel_tessa_thorn_at_thornvault, :operates_in, :tessa_thorn, :thornvault
relate :rel_tessa_thorn_at_ledgerfall, :operates_in, :tessa_thorn, :ledgerfall
