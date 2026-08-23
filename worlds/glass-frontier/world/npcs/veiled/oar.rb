npc :oar do
  name "Oar"
  subkind :npc
  status :complete
  prominence :marginal
  veiled "Oar keeps a free bunk at the Reed Door for anyone who arrives with a living river specimen."
end

relate :rel_oar_at_the_reed_door, :operates_in, :oar, :the_reed_door
relate :rel_oar_at_lowbank, :operates_in, :oar, :lowbank
