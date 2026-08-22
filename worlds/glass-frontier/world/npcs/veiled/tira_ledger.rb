npc :tira_ledger do
  name "Tira Ledger"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Tira Ledger restores water-damaged course rolls from Old Campus in a dry room at Ledgerfall."
end

relate :rel_tira_ledger_at_old_campus, :operates_in, :tira_ledger, :old_campus
relate :rel_tira_ledger_at_ledgerfall, :operates_in, :tira_ledger, :ledgerfall
