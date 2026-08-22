npc :marn_white do
  name "Marn White"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Marn White carries sealed watch reports between Whitefoot and Span Nine before the next shift can amend them."
end

relate :rel_marn_white_at_whitefoot, :operates_in, :marn_white, :whitefoot
relate :rel_marn_white_at_span_nine, :operates_in, :marn_white, :span_nine
