npc :thornvault_ledger_keeper do
  name "The Thornvault Ledger Keeper"
  summary "The Thornvault Ledger Keeper preserves a long spoken account by tying each passage to a different pulse in the wrist."
  type_of :ledger_recall
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Thornvault Ledger Keeper preserves a long spoken account by tying each passage to a different pulse in the wrist."
end
relate :rel_ledger_recall_at_ledgerfall, :manifests_at, :thornvault_ledger_keeper, :ledgerfall
relate :rel_ledger_recall_at_old_campus, :manifests_at, :thornvault_ledger_keeper, :old_campus
relate :rel_ledger_recall_at_accord_shore, :manifests_at, :thornvault_ledger_keeper, :accord_shore
