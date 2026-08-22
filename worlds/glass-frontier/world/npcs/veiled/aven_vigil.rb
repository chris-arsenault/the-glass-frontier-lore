npc :aven_vigil do
  name "Aven Vigil"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Aven Vigil reconciles hazard closures from Vastine, Verathi, Vey, and Vigil Breach."
end

relate :rel_aven_vigil_at_vastine, :operates_in, :aven_vigil, :vastine
relate :rel_aven_vigil_at_verathi, :operates_in, :aven_vigil, :verathi
relate :rel_aven_vigil_at_vey, :operates_in, :aven_vigil, :vey
relate :rel_aven_vigil_at_vigil_breach, :operates_in, :aven_vigil, :vigil_breach
