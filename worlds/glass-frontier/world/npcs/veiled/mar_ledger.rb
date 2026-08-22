npc :mar_ledger do
  name "Mar Ledger"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Mar Ledger compares cargo marks from Latch, Ledgerfall, Lithren, and Forty before disputed loads are opened."
end

relate :rel_mar_ledger_at_latch, :operates_in, :mar_ledger, :latch
relate :rel_mar_ledger_at_ledgerfall, :operates_in, :mar_ledger, :ledgerfall
relate :rel_mar_ledger_at_lithren, :operates_in, :mar_ledger, :lithren
relate :rel_mar_ledger_at_lot_forty, :operates_in, :mar_ledger, :lot_forty
