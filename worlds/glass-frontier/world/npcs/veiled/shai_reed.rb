npc :shai_reed do
  name "Shai Reed"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Shai Reed tunes the door reeds at the Reed Door and sells the worn tongues to Lowbank instrument makers."
end

relate :rel_shai_reed_at_the_reed_door, :operates_in, :shai_reed, :the_reed_door
relate :rel_shai_reed_at_lowbank, :operates_in, :shai_reed, :lowbank
