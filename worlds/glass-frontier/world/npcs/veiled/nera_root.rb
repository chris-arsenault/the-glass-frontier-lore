npc :nera_root do
  name "Nera Root"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Nera Root exchanges heat-tolerant cuttings among Olven, Orra, Pelhari, and Pyre."
end

relate :rel_nera_root_at_olven, :operates_in, :nera_root, :olven
relate :rel_nera_root_at_orra, :operates_in, :nera_root, :orra
relate :rel_nera_root_at_pelhari, :operates_in, :nera_root, :pelhari
relate :rel_nera_root_at_pyre, :operates_in, :nera_root, :pyre
