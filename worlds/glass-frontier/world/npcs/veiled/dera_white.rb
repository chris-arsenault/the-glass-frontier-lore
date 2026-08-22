npc :dera_white do
  name "Dera White"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dera White carries Whitefoot weather claims to Accord Shore with the damaged instruments attached."
end

relate :rel_dera_white_at_whitefoot, :operates_in, :dera_white, :whitefoot
relate :rel_dera_white_at_accord_shore, :operates_in, :dera_white, :accord_shore
