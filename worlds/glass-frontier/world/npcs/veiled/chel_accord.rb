npc :chel_accord do
  name "Chel'accord"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'accord carries cleaned biological samples from Wash Four, Whitefoot, and Xyloathax to Accord Shore."
end

relate :rel_chel_accord_at_wash_four, :operates_in, :chel_accord, :wash_four
relate :rel_chel_accord_at_whitefoot, :operates_in, :chel_accord, :whitefoot
relate :rel_chel_accord_at_xyloathax, :operates_in, :chel_accord, :xyloathax
relate :rel_chel_accord_at_accord_shore, :operates_in, :chel_accord, :accord_shore
