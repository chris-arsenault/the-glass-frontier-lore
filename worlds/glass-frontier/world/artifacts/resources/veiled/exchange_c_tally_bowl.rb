artifact :exchange_c_tally_bowl do
  name "The Exchange C Tally Bowl"
  summary "The Exchange C Tally Bowl holds Rattle tally dust sourced from Bay Thirty-One and Exchange C. It settles into the last registered weight of any container opened above it."
  subkind :artifact
  type_of :rattle_tally_dust
  status :complete
  prominence :marginal
  veiled "The Exchange C Tally Bowl settles into the last registered weight of any container opened above it."
end

relate :rel_rattle_tally_dust_at_bay_thirty_one, :sourced_from, :exchange_c_tally_bowl, :bay_thirty_one
relate :rel_rattle_tally_dust_at_exchange_c, :sourced_from, :exchange_c_tally_bowl, :exchange_c
