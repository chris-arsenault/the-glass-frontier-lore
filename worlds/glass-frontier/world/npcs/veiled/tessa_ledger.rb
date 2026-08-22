npc :tessa_ledger do
  name "Tessa Ledger"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Tessa Ledger reconciles material tallies from Ledgerfall, Lithren, Forty, and Lowbank."
end

relate :rel_tessa_ledger_at_ledgerfall, :operates_in, :tessa_ledger, :ledgerfall
relate :rel_tessa_ledger_at_lithren, :operates_in, :tessa_ledger, :lithren
relate :rel_tessa_ledger_at_lot_forty, :operates_in, :tessa_ledger, :lot_forty
relate :rel_tessa_ledger_at_lowbank, :operates_in, :tessa_ledger, :lowbank
