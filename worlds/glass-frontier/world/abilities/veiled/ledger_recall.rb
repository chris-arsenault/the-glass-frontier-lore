ability :ledger_recall do
  name "Ledger Recall"
  summary "Ledger Recall is a mnemonic discipline that binds passages of a spoken account to distinct pulses in the speaker's wrist."
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Ledger recall preserves a long spoken account by tying each passage to a different pulse in the wrist."
end

relate :rel_ledger_recall_at_ledgerfall, :manifests_at, :ledger_recall, :ledgerfall
relate :rel_ledger_recall_at_old_campus, :manifests_at, :ledger_recall, :old_campus
relate :rel_ledger_recall_at_accord_shore, :manifests_at, :ledger_recall, :accord_shore
