npc :pella_rattle do
  name "Pella Rattle"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Pella Rattle delivers Carom bearing samples to the brokers at Rattle and returns with sealed bids."
end

relate :rel_pella_rattle_at_exchange_c, :operates_in, :pella_rattle, :exchange_c
relate :rel_pella_rattle_at_carom, :operates_in, :pella_rattle, :carom
