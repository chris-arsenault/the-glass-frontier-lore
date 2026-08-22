npc :tira_low do
  name "Tira Low"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tira Low carries stone and salvage tallies among Ledgerfall, Lithren, Forty, and Lowbank."
end

relate :rel_tira_low_at_ledgerfall, :operates_in, :tira_low, :ledgerfall
relate :rel_tira_low_at_lithren, :operates_in, :tira_low, :lithren
relate :rel_tira_low_at_lot_forty, :operates_in, :tira_low, :lot_forty
relate :rel_tira_low_at_lowbank, :operates_in, :tira_low, :lowbank
