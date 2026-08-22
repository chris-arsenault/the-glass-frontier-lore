npc :ri_lowen do
  name "Ri'lowen"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'lowen compares pump vibration in Lowbank, Lumenshard, Lung Three, and Mareth."
end

relate :rel_ri_lowen_at_lowbank, :operates_in, :ri_lowen, :lowbank
relate :rel_ri_lowen_at_lumenshard, :operates_in, :ri_lowen, :lumenshard
relate :rel_ri_lowen_at_lung_three, :operates_in, :ri_lowen, :lung_three
relate :rel_ri_lowen_at_mareth, :operates_in, :ri_lowen, :mareth
