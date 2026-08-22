npc :senn_wash do
  name "Senn Wash"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Senn Wash moves stained filter cloth from Thirty-One to Wash Four and returns it marked by failure type."
end

relate :rel_senn_wash_at_bay_thirty_one, :operates_in, :senn_wash, :bay_thirty_one
relate :rel_senn_wash_at_wash_four, :operates_in, :senn_wash, :wash_four
