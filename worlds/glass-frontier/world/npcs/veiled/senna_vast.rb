npc :senna_vast do
  name "Senna Vast"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Senna Vast reviews shared repair claims from Vastine, Verathi, Vey, and Vigil Breach."
end

relate :rel_senna_vast_at_vastine, :operates_in, :senna_vast, :vastine
relate :rel_senna_vast_at_verathi, :operates_in, :senna_vast, :verathi
relate :rel_senna_vast_at_vey, :operates_in, :senna_vast, :vey
relate :rel_senna_vast_at_vigil_breach, :operates_in, :senna_vast, :vigil_breach
