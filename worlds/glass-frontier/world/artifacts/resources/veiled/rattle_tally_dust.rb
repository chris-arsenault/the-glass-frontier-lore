resource :rattle_tally_dust do
  name "Rattle Tally Dust"
  subkind :data
  status :complete
  prominence :marginal
  veiled "Rattle tally dust settles into the last registered weight of any container opened above it."
end

relate :rel_rattle_tally_dust_at_bay_thirty_one, :sourced_from, :rattle_tally_dust, :bay_thirty_one
relate :rel_rattle_tally_dust_at_exchange_c, :sourced_from, :rattle_tally_dust, :exchange_c
