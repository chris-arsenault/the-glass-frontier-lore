npc :kren_ladder do
  name "Kren Ladder"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Kren Ladder fits pressure hardware in Korvath, Kyther Range, Ladderwell, and Latch."
end

relate :rel_kren_ladder_at_korvath, :operates_in, :kren_ladder, :korvath
relate :rel_kren_ladder_at_kyther_range, :operates_in, :kren_ladder, :kyther_range
relate :rel_kren_ladder_at_ladderwell, :operates_in, :kren_ladder, :ladderwell
relate :rel_kren_ladder_at_latch, :operates_in, :kren_ladder, :latch
