npc :mudhand do
  name "Mudhand"
  summary "Mudhand is a river worker who clears intake reeds between Dovra and Lowbank."
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Mudhand clears Dovra intake reeds and leaves the trapped pole-thief eggs for Lowbank kitchens."end

relate :rel_mudhand_at_dovra, :operates_in, :mudhand, :dovra
relate :rel_mudhand_at_lowbank, :operates_in, :mudhand, :lowbank
