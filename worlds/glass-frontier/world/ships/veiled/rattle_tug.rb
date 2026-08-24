transport :rattle_tug do
  name "Rattle Tug"
  summary "Rattle tugs are market cargo vehicles used around Carom, Exchange C, and Wash Four. They move containers by locking each frame to the habitat's changing spin."
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Rattle tugs move market containers by locking their frames to Carom's changing spin."
end

relate :rel_rattle_tug_at_carom, :operates_in, :rattle_tug, :carom
relate :rel_rattle_tug_at_exchange_c, :operates_in, :rattle_tug, :exchange_c
relate :rel_rattle_tug_at_wash_four, :operates_in, :rattle_tug, :wash_four
