npc :nera_noll do
  name "Nera Noll"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Nera Noll tends shared seed beds in Noll, Old Campus, Olven, and Orra."
end

relate :rel_nera_noll_at_noll, :operates_in, :nera_noll, :noll
relate :rel_nera_noll_at_old_campus, :operates_in, :nera_noll, :old_campus
relate :rel_nera_noll_at_olven, :operates_in, :nera_noll, :olven
relate :rel_nera_noll_at_orra, :operates_in, :nera_noll, :orra
