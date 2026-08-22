npc :t_vekesh do
  name "T'vekesh"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'vekesh calibrates irrigation tones in Holl, Issel, Karet-3, and Kesh."
end

relate :rel_t_vekesh_at_holl, :operates_in, :t_vekesh, :holl
relate :rel_t_vekesh_at_issel, :operates_in, :t_vekesh, :issel
relate :rel_t_vekesh_at_karet_three, :operates_in, :t_vekesh, :karet_three
relate :rel_t_vekesh_at_kesh, :operates_in, :t_vekesh, :kesh
