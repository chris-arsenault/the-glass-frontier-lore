npc :chel_white do
  name "Chel'white"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'white tests washed tissue and frost glass from Vitrael, Wash Four, Whitefoot, and Xyloathax."
end

relate :rel_chel_white_at_vitrael, :operates_in, :chel_white, :vitrael
relate :rel_chel_white_at_wash_four, :operates_in, :chel_white, :wash_four
relate :rel_chel_white_at_whitefoot, :operates_in, :chel_white, :whitefoot
relate :rel_chel_white_at_xyloathax, :operates_in, :chel_white, :xyloathax
