npc :dera_latch do
  name "Dera Latch"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dera Latch delivers Mareth medicine through Latchhouse and returns with signed glass ampoules."
end

relate :rel_dera_latch_at_third_latch, :operates_in, :dera_latch, :third_latch
relate :rel_dera_latch_at_mareth, :operates_in, :dera_latch, :mareth
