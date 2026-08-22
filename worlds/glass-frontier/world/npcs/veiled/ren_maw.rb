npc :ren_maw do
  name "Ren Maw"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ren Maw compares fresh fracture dust with the black grit collected at Ashenmaw."
end

relate :rel_ren_maw_at_the_fracture, :operates_in, :ren_maw, :the_fracture
relate :rel_ren_maw_at_ashenmaw, :operates_in, :ren_maw, :ashenmaw
