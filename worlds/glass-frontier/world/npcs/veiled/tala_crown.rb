npc :tala_crown do
  name "Tala Crown"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tala Crown carries refinery allotments from Crowncut to the brokers at Rattle and returns with signed tank claims."
end

relate :rel_tala_crown_at_exchange_c, :operates_in, :tala_crown, :exchange_c
relate :rel_tala_crown_at_crowncut_refinery, :operates_in, :tala_crown, :crowncut_refinery
