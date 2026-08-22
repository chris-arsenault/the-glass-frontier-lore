npc :tessa_forty do
  name "Tessa Forty"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Tessa Forty reconciles salvage tallies from Latch, Ledgerfall, Lithren, and Forty."
end

relate :rel_tessa_forty_at_latch, :operates_in, :tessa_forty, :latch
relate :rel_tessa_forty_at_ledgerfall, :operates_in, :tessa_forty, :ledgerfall
relate :rel_tessa_forty_at_lithren, :operates_in, :tessa_forty, :lithren
relate :rel_tessa_forty_at_lot_forty, :operates_in, :tessa_forty, :lot_forty
