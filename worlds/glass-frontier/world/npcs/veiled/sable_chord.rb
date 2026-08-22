npc :sable_chord do
  name "Sable Chord"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Sable Chord carries performance and freight notices among Eleven, Rattle, Far Bell, and Fermata Station."
end

relate :rel_sable_chord_at_eleven, :operates_in, :sable_chord, :eleven
relate :rel_sable_chord_at_exchange_c, :operates_in, :sable_chord, :exchange_c
relate :rel_sable_chord_at_far_bell, :operates_in, :sable_chord, :far_bell
relate :rel_sable_chord_at_fermata_station, :operates_in, :sable_chord, :fermata_station
