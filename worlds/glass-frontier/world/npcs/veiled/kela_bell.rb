npc :kela_bell do
  name "Kela Bell"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kela Bell carries pump and cargo claims among Dovra, Eleven, Rattle, and Far Bell."
end

relate :rel_kela_bell_at_dovra, :operates_in, :kela_bell, :dovra
relate :rel_kela_bell_at_eleven, :operates_in, :kela_bell, :eleven
relate :rel_kela_bell_at_exchange_c, :operates_in, :kela_bell, :exchange_c
relate :rel_kela_bell_at_far_bell, :operates_in, :kela_bell, :far_bell
