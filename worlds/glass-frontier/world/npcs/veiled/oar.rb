npc :oar do
  name "Oar"
  summary "Oar is a Reed Door host who keeps a free bunk for travelers carrying living river specimens."
  subkind :npc
  type_of :person
  status :complete
  prominence :marginal
  veiled "Oar keeps a free bunk at the Reed Door for anyone who arrives with a living river specimen."end

relate :rel_oar_at_the_reed_door, :operates_in, :oar, :the_reed_door
relate :rel_oar_at_lowbank, :operates_in, :oar, :lowbank
