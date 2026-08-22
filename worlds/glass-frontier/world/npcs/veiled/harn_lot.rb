npc :harn_lot do
  name "Harn Lot"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Harn Lot carries Thirty-One salvage claims to Forty and returns with the cut-yard weights."
end

relate :rel_harn_lot_at_lot_forty, :operates_in, :harn_lot, :lot_forty
relate :rel_harn_lot_at_bay_thirty_one, :operates_in, :harn_lot, :bay_thirty_one
