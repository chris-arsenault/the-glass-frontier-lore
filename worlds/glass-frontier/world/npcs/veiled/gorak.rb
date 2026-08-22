npc :gorak do
  name "Gorak"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Gorak fits pressure latches in Korvath, Kyther Range, Ladderwell, and Latch."
end

relate :rel_gorak_at_korvath, :operates_in, :gorak, :korvath
relate :rel_gorak_at_kyther_range, :operates_in, :gorak, :kyther_range
relate :rel_gorak_at_ladderwell, :operates_in, :gorak, :ladderwell
relate :rel_gorak_at_latch, :operates_in, :gorak, :latch
