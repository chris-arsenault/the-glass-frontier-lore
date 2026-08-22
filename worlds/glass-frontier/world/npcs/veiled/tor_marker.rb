npc :tor_marker do
  name "Tor Marker"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Tor Marker cuts ladder rungs at Marker House Twelve and installs them through Ladderwell."
end

relate :rel_tor_marker_at_marker_house_twelve, :operates_in, :tor_marker, :marker_house_twelve
relate :rel_tor_marker_at_ladderwell, :operates_in, :tor_marker, :ladderwell
