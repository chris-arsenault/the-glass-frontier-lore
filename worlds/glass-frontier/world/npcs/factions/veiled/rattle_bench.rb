faction :rattle_bench do
  name "Rattle Bench"
  summary "Rattle Bench is a civic claims body serving Exchange C and Carom, with hearings held around the sealed disputed cargo."
  subkind :civic_body
  type_of :custodial_standing
  status :complete
  prominence :marginal
  veiled "Rattle Bench settles damaged-cargo claims in public while the disputed container remains sealed between the parties."
end

relate :rel_rattle_bench_at_exchange_c, :operates_in, :rattle_bench, :rattle
relate :rel_rattle_bench_at_carom, :operates_in, :rattle_bench, :carom
