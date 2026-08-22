npc :duva do
  name "Duva"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Duva fires replacement kiln tiles at Ninth Kiln and sets each batch into Korvath ovens."
end

relate :rel_duva_at_ninth_kiln, :operates_in, :duva, :ninth_kiln
relate :rel_duva_at_korvath, :operates_in, :duva, :korvath
