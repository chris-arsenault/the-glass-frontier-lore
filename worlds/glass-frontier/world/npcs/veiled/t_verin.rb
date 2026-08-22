npc :t_verin do
  name "T'verin"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'verin tunes pressure instruments in Issel, Karet-3, the Keel, and Keelward."
end

relate :rel_t_verin_at_issel, :operates_in, :t_verin, :issel
relate :rel_t_verin_at_karet_three, :operates_in, :t_verin, :karet_three
relate :rel_t_verin_at_keel, :operates_in, :t_verin, :keel
relate :rel_t_verin_at_keelward, :operates_in, :t_verin, :keelward
