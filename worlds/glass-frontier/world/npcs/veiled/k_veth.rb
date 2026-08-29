npc :k_veth do
  name "K'veth"
  summary "K'veth is a vault worker who harvests signal frost at Talven and sells the clean melt at Tanel."
  subkind :worker
  type_of :person
  status :complete
  prominence :marginal
  veiled "K'veth harvests signal frost from Talven vaults and sells the clean melt at Tanel."end

relate :rel_k_veth_at_talven, :operates_in, :k_veth, :talven
relate :rel_k_veth_at_tanel, :operates_in, :k_veth, :tanel
