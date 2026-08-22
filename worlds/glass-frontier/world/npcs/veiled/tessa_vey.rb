npc :tessa_vey do
  name "Tessa Vey"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tessa Vey moves ration chits between Vey and Eleven and settles each discrepancy in person."
end

relate :rel_tessa_vey_at_vey, :operates_in, :tessa_vey, :vey
relate :rel_tessa_vey_at_eleven, :operates_in, :tessa_vey, :eleven
