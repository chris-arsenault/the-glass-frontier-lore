npc :kela_holl do
  name "Kela Holl"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Kela Holl raises Orra seedlings in Holl cargo trays during their return leg."
end

relate :rel_kela_holl_at_orra, :operates_in, :kela_holl, :orra
relate :rel_kela_holl_at_holl, :operates_in, :kela_holl, :holl
