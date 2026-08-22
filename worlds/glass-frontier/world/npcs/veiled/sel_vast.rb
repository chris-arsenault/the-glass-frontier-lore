npc :sel_vast do
  name "Sel Vast"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Sel Vast carries hazard closures among Vastine, Verathi, Vey, and Vigil Breach."
end

relate :rel_sel_vast_at_vastine, :operates_in, :sel_vast, :vastine
relate :rel_sel_vast_at_verathi, :operates_in, :sel_vast, :verathi
relate :rel_sel_vast_at_vey, :operates_in, :sel_vast, :vey
relate :rel_sel_vast_at_vigil_breach, :operates_in, :sel_vast, :vigil_breach
