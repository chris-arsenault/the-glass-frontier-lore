phenomenon :knock do
  name "The Knock"
  summary "The Knock is the live freight-grid repetition between workshops in Bay Thirty-One and the former receiving deck beneath Rattle's market."
  type_of :thirty_one_echo
  subkind :physical_phenomenon
  status :complete
  prominence :marginal
  veiled "The Knock is the live freight-grid repetition between workshops in Bay Thirty-One and the former receiving deck beneath Rattle's market."
end

relate :rel_thirty_one_echo_at_bay_thirty_one, :manifests_at, :knock, :thirty_one
relate :rel_thirty_one_echo_at_exchange_c, :manifests_at, :knock, :rattle
