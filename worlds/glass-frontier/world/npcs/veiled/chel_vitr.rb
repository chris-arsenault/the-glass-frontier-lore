npc :chel_vitr do
  name "Chel'vitr"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'vitr compares material traces from Vitrael, Wash Four, Whitefoot, and Xyloathax."
end

relate :rel_chel_vitr_at_vitrael, :operates_in, :chel_vitr, :vitrael
relate :rel_chel_vitr_at_wash_four, :operates_in, :chel_vitr, :wash_four
relate :rel_chel_vitr_at_whitefoot, :operates_in, :chel_vitr, :whitefoot
relate :rel_chel_vitr_at_xyloathax, :operates_in, :chel_vitr, :xyloathax
