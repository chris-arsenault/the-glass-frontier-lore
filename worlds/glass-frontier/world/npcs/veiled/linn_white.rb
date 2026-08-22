npc :linn_white do
  name "Linn White"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Linn White replaces frost-cracked handrails at Whitefoot and Span Nine during the same outer-shift circuit."
end

relate :rel_linn_white_at_whitefoot, :operates_in, :linn_white, :whitefoot
relate :rel_linn_white_at_span_nine, :operates_in, :linn_white, :span_nine
