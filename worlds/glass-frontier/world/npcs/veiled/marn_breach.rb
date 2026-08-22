npc :marn_breach do
  name "Marn Breach"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Marn Breach compares Kyther Range wind gauges with the strain plates set around Vigil Breach."
end

relate :rel_marn_breach_at_vigil_breach, :operates_in, :marn_breach, :vigil_breach
relate :rel_marn_breach_at_kyther_range, :operates_in, :marn_breach, :kyther_range
