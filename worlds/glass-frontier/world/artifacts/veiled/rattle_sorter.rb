artifact :rattle_sorter do
  name "The Rattle Sorter"
  summary "The Rattle Sorter is a cargo machine used at Exchange C, Carom, and Wash Four. It separates goods by resonance and rejects unregistered sealed boxes onto the public floor."
  subkind :machine
  status :complete
  prominence :marginal
  veiled "The Rattle Sorter separates cargo by resonance and throws any unregistered sealed box onto the public floor."
end

relate :rel_rattle_sorter_at_exchange_c, :operates_in, :rattle_sorter, :exchange_c
relate :rel_rattle_sorter_at_carom, :operates_in, :rattle_sorter, :carom
relate :rel_rattle_sorter_at_wash_four, :operates_in, :rattle_sorter, :wash_four
