phenomenon :thirty_one_echo do
  name "Thirty-One Echo"
  subkind :phenomenon
  status :complete
  prominence :marginal
  veiled "Thirty-One Echo makes a dropped tool strike twice, once in the workshop and once beneath Rattle's market floor."
end

relate :rel_thirty_one_echo_at_bay_thirty_one, :manifests_at, :thirty_one_echo, :bay_thirty_one
relate :rel_thirty_one_echo_at_exchange_c, :manifests_at, :thirty_one_echo, :exchange_c
