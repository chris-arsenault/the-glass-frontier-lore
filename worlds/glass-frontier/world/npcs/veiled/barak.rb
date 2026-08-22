npc :barak do
  name "Barak"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Barak carries Pyre furnace seals to Latch and returns with the split catches."
end

relate :rel_barak_at_pyre, :operates_in, :barak, :pyre
relate :rel_barak_at_latch, :operates_in, :barak, :latch
