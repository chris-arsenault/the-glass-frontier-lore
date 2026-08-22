npc :senna_vey do
  name "Senna Vey"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Senna Vey inspects public hazard notices in Verathi, Vey, Vigil Breach, and Vitrael."
end

relate :rel_senna_vey_at_verathi, :operates_in, :senna_vey, :verathi
relate :rel_senna_vey_at_vey, :operates_in, :senna_vey, :vey
relate :rel_senna_vey_at_vigil_breach, :operates_in, :senna_vey, :vigil_breach
relate :rel_senna_vey_at_vitrael, :operates_in, :senna_vey, :vitrael
