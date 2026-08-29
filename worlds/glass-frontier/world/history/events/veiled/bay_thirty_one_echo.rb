incident :bay_thirty_one_echo do
  name "Bay Thirty-One Echo"
  summary "Bay Thirty-One Echo is a paired-impact anomaly in which a dropped workshop tool also sounds beneath Rattle's market floor."
  type_of :thirty_one_echo
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Bay Thirty-One Echo is a paired-impact anomaly in which a dropped workshop tool also sounds beneath Rattle's market floor."
end
relate :rel_thirty_one_echo_at_bay_thirty_one, :manifests_at, :bay_thirty_one_echo, :bay_thirty_one
relate :rel_thirty_one_echo_at_exchange_c, :manifests_at, :bay_thirty_one_echo, :exchange_c
