ability :dustline_crossing do
  name "Dustline Crossing"
  summary "Dustline Crossing is a route-reading skill that reconstructs buried roads from grit caught against stones and other low obstructions."
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Dustline guides read buried roads from the angle of grit caught against low stones."
end

relate :rel_dustline_crossing_at_avar, :manifests_at, :dustline_crossing, :avar
relate :rel_dustline_crossing_at_ladderwell, :manifests_at, :dustline_crossing, :ladderwell
relate :rel_dustline_crossing_at_marker_house_twelve, :manifests_at, :dustline_crossing, :marker_house_twelve
relate :rel_dustline_crossing_at_kyther_range, :manifests_at, :dustline_crossing, :kyther_range
