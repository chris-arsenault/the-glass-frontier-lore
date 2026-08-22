npc :senn_root do
  name "Senn Root"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Senn Root tends matched growing beds in Noll, Old Campus, Olven, and Orra."
end

relate :rel_senn_root_at_noll, :operates_in, :senn_root, :noll
relate :rel_senn_root_at_old_campus, :operates_in, :senn_root, :old_campus
relate :rel_senn_root_at_olven, :operates_in, :senn_root, :olven
relate :rel_senn_root_at_orra, :operates_in, :senn_root, :orra
