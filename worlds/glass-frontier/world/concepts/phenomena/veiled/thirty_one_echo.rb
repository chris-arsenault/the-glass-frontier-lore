phenomenon :thirty_one_echo do
  name "Thirty-One Echo"
  summary "Thirty-One Echo is a paired-impact anomaly in which a dropped workshop tool also sounds beneath Rattle's market floor."
  subkind :phenomenon
  status :complete
  prominence :marginal
  veiled "Thirty-One Echo makes a dropped tool strike twice, once in the workshop and once beneath Rattle's market floor."
end

relate :rel_thirty_one_echo_at_bay_thirty_one, :manifests_at, :thirty_one_echo, :bay_thirty_one
relate :rel_thirty_one_echo_at_exchange_c, :manifests_at, :thirty_one_echo, :exchange_c
