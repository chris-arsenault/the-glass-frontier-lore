npc :ri_navik do
  name "Ri'navik"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'navik compares Lumenshard signal tones with the colored faults exposed at Miraeth."
end

relate :rel_ri_navik_at_lumenshard, :operates_in, :ri_navik, :lumenshard
relate :rel_ri_navik_at_miraeth, :operates_in, :ri_navik, :miraeth
