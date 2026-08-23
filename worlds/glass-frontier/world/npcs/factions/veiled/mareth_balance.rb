faction :mareth_balance do
  name "Mareth Balance"
  subkind :governing_intelligence
  status :complete
  prominence :marginal
  veiled "Mareth Balance assigns docking mass by answering each Kesh challenge with a different safe route."
end

relate :rel_mareth_balance_at_mareth, :operates_in, :mareth_balance, :mareth
relate :rel_mareth_balance_at_kesh, :operates_in, :mareth_balance, :kesh
