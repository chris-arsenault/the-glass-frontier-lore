npc :renn_bell do
  name "Renn Bell"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Renn Bell carries landing allocations among Eleven, Rattle, Far Bell, and Five Landing on a daily circuit."
end

relate :rel_renn_bell_at_eleven, :operates_in, :renn_bell, :eleven
relate :rel_renn_bell_at_exchange_c, :operates_in, :renn_bell, :exchange_c
relate :rel_renn_bell_at_far_bell, :operates_in, :renn_bell, :far_bell
relate :rel_renn_bell_at_five_landing, :operates_in, :renn_bell, :five_landing
