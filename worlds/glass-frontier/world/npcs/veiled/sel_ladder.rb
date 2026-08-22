npc :sel_ladder do
  name "Sel Ladder"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Sel Ladder stamps Marker House Twelve inspection marks onto the replacement rungs in Ladderwell."
end

relate :rel_sel_ladder_at_marker_house_twelve, :operates_in, :sel_ladder, :marker_house_twelve
relate :rel_sel_ladder_at_ladderwell, :operates_in, :sel_ladder, :ladderwell
