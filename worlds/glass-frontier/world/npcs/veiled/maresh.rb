npc :maresh do
  name "Maresh"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Maresh moves preserved food from Mareth through Latchhouse and brings back empty cold cases."
end

relate :rel_maresh_at_third_latch, :operates_in, :maresh, :third_latch
relate :rel_maresh_at_mareth, :operates_in, :maresh, :mareth
