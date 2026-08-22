npc :t_vek do
  name "T'vek"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'vek tunes pump controllers in Issel, Karet-3, the Keel, and Kesh with one matched fork set."
end

relate :rel_t_vek_at_issel, :operates_in, :t_vek, :issel
relate :rel_t_vek_at_karet_three, :operates_in, :t_vek, :karet_three
relate :rel_t_vek_at_keel, :operates_in, :t_vek, :keel
relate :rel_t_vek_at_kesh, :operates_in, :t_vek, :kesh
