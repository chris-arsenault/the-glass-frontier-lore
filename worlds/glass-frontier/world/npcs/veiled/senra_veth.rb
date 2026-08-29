npc :senra_veth do
  name "Senra Veth"
  summary "Senra Veth is a Kyrri ground-reader who works between Vigil Breach, the Kyther Range, Avar, and Ladderwell."
  subkind :npc
  status :complete
  prominence :marginal
  type_of :kyrri
  veiled "Senra Veth keeps a scored plate of every ground-tone change measured between Vigil Breach, the Kyther Range, Avar, and Ladderwell."
end

relate :rel_senra_veth_at_vigil_breach, :inhabits, :senra_veth, :vigil_breach
relate :rel_senra_veth_at_kyther_range, :inhabits, :senra_veth, :kyther_range
relate :rel_senra_veth_at_avar, :inhabits, :senra_veth, :avar
relate :rel_senra_veth_at_ladderwell, :inhabits, :senra_veth, :ladderwell
