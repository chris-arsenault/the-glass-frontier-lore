npc :vesa_lorren do
  name "Vesa Lorren"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Vesa Lorren certifies which Verathi judgments Accord Shore will recognize and keeps the rejected copies."
end

relate :rel_vesa_lorren_at_verathi, :operates_in, :vesa_lorren, :verathi
relate :rel_vesa_lorren_at_accord_shore, :operates_in, :vesa_lorren, :accord_shore
