npc :korr_vey do
  name "Korr Vey"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Korr Vey repairs weather housings in Vey, Vigil Breach, Vitrael, and Whitefoot with interchangeable seals."
end

relate :rel_korr_vey_at_vey, :operates_in, :korr_vey, :vey
relate :rel_korr_vey_at_vigil_breach, :operates_in, :korr_vey, :vigil_breach
relate :rel_korr_vey_at_vitrael, :operates_in, :korr_vey, :vitrael
relate :rel_korr_vey_at_whitefoot, :operates_in, :korr_vey, :whitefoot
