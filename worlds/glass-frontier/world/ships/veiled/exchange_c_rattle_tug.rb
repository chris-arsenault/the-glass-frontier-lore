transport :exchange_c_rattle_tug do
  name "The Exchange C Rattle Tug"
  summary "The Exchange C Rattle Tug is a market cargo vehicle used around Carom, Exchange C, and Wash Four. It moves containers by locking each frame to the habitat's changing spin."
  subkind :transport
  type_of :rattle_tug
  status :complete
  prominence :marginal
  veiled "The Exchange C Rattle Tug moves market containers by locking their frames to the habitat's changing spin."
end

relate :rel_rattle_tug_at_carom, :operates_in, :exchange_c_rattle_tug, :carom
relate :rel_rattle_tug_at_exchange_c, :operates_in, :exchange_c_rattle_tug, :exchange_c
relate :rel_rattle_tug_at_wash_four, :operates_in, :exchange_c_rattle_tug, :wash_four
