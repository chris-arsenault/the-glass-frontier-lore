faction :mareth_balance do
  name "Mareth Balance"
  summary "Mareth Balance is Mareth's governing intelligence, responsible for assigning docking mass and safe routes."
  subkind :governing_intelligence
  type_of :government
  status :complete
  prominence :marginal
  veiled "Mareth Balance assigns docking mass by answering each Kesh challenge with a different safe route."
end

relate :rel_mareth_balance_at_mareth, :operates_in, :mareth_balance, :mareth
relate :rel_mareth_balance_at_kesh, :operates_in, :mareth_balance, :kesh
