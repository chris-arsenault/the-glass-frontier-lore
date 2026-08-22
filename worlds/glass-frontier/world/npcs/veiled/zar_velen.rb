npc :zar_velen do
  name "Zar'velen"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Zar'velen records signal drift at Lumenshard, Lung Three, Mareth, and Marker House Twelve."
end

relate :rel_zar_velen_at_lumenshard, :operates_in, :zar_velen, :lumenshard
relate :rel_zar_velen_at_lung_three, :operates_in, :zar_velen, :lung_three
relate :rel_zar_velen_at_mareth, :operates_in, :zar_velen, :mareth
relate :rel_zar_velen_at_marker_house_twelve, :operates_in, :zar_velen, :marker_house_twelve
