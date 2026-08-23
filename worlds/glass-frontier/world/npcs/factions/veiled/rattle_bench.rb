faction :rattle_bench do
  name "Rattle Bench"
  subkind :civic_body
  status :complete
  prominence :marginal
  veiled "Rattle Bench settles damaged-cargo claims in public while the disputed container remains sealed between the parties."
end

relate :rel_rattle_bench_at_exchange_c, :operates_in, :rattle_bench, :exchange_c
relate :rel_rattle_bench_at_carom, :operates_in, :rattle_bench, :carom
