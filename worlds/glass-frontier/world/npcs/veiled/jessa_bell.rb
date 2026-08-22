npc :jessa_bell do
  name "Jessa Bell"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Jessa Bell delivers Fourth Bell House meal chits to Mera and returns with pantry allotments."
end

relate :rel_jessa_bell_at_mera, :operates_in, :jessa_bell, :mera
relate :rel_jessa_bell_at_fourth_bell_house, :operates_in, :jessa_bell, :fourth_bell_house
