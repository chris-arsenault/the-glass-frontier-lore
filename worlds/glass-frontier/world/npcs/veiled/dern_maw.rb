npc :dern_maw do
  name "Dern Maw"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dern Maw maintains the survey beacons that face one another across Ashenmaw and the Fracture."
end

relate :rel_dern_maw_at_ashenmaw, :operates_in, :dern_maw, :ashenmaw
relate :rel_dern_maw_at_the_fracture, :operates_in, :dern_maw, :the_fracture
