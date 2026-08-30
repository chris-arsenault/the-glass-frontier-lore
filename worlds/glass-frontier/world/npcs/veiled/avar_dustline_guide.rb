npc :avar_dustline_guide do
  name "The Avar Dustline Guide"
  summary "The Avar Dustline Guide reads buried roads from the angle of grit caught against low stones."
  type_of :dustline_crossing
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Avar Dustline Guide reads buried roads from the angle of grit caught against low stones."
end
relate :rel_dustline_crossing_at_avar, :manifests_at, :avar_dustline_guide, :avar
relate :rel_dustline_crossing_at_ladderwell, :manifests_at, :avar_dustline_guide, :ladderwell
relate :rel_dustline_crossing_at_marker_house_twelve, :manifests_at, :avar_dustline_guide, :marker_house_twelve
relate :rel_dustline_crossing_at_kyther_range, :manifests_at, :avar_dustline_guide, :kyther_range
