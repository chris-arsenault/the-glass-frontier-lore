npc :dren_marker do
  name "Dren Marker"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dren Marker repairs signal housings at Lumenshard, Lung Three, Mareth, and Marker House Twelve."
end

relate :rel_dren_marker_at_lumenshard, :operates_in, :dren_marker, :lumenshard
relate :rel_dren_marker_at_lung_three, :operates_in, :dren_marker, :lung_three
relate :rel_dren_marker_at_mareth, :operates_in, :dren_marker, :mareth
relate :rel_dren_marker_at_marker_house_twelve, :operates_in, :dren_marker, :marker_house_twelve
