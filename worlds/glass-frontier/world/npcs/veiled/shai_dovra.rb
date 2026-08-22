npc :shai_dovra do
  name "Shai Dovra"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Shai Dovra tunes Dovra reed pumps against the stable pitch sounded at the Reed Door."
end

relate :rel_shai_dovra_at_the_reed_door, :operates_in, :shai_dovra, :the_reed_door
relate :rel_shai_dovra_at_dovra, :operates_in, :shai_dovra, :dovra
