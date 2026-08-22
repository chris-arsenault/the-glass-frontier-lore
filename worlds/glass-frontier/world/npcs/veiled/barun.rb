npc :barun do
  name "Barun"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Barun fits weatherproof steps in Kesh, Korvath, Kyther Range, and Ladderwell."
end

relate :rel_barun_at_kesh, :operates_in, :barun, :kesh
relate :rel_barun_at_korvath, :operates_in, :barun, :korvath
relate :rel_barun_at_kyther_range, :operates_in, :barun, :kyther_range
relate :rel_barun_at_ladderwell, :operates_in, :barun, :ladderwell
