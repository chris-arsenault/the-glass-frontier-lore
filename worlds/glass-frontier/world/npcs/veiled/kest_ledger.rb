npc :kest_ledger do
  name "Kest Ledger"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kest Ledger carries cargo tallies among Latch, Ledgerfall, Lithren, and Forty."
end

relate :rel_kest_ledger_at_latch, :operates_in, :kest_ledger, :latch
relate :rel_kest_ledger_at_ledgerfall, :operates_in, :kest_ledger, :ledgerfall
relate :rel_kest_ledger_at_lithren, :operates_in, :kest_ledger, :lithren
relate :rel_kest_ledger_at_lot_forty, :operates_in, :kest_ledger, :lot_forty
