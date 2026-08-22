npc :t_velen do
  name "T'velen"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'velen compares signal traces from Lumenshard, Lung Three, Mareth, and Marker House Twelve."
end

relate :rel_t_velen_at_lumenshard, :operates_in, :t_velen, :lumenshard
relate :rel_t_velen_at_lung_three, :operates_in, :t_velen, :lung_three
relate :rel_t_velen_at_mareth, :operates_in, :t_velen, :mareth
relate :rel_t_velen_at_marker_house_twelve, :operates_in, :t_velen, :marker_house_twelve
