faction :twelve_marker_household do
  name "The Twelve-Marker Household"
  summary "The Twelve-Marker Household is one mobile household of Avar's shifting surface routes, keeping its stores in chests that can move when a road changes course."
  type_of :avar_road_people
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Twelve-Marker Household is one mobile household of Avar's shifting surface routes, keeping its stores in chests that can move when a road changes course."
end
relate :rel_avar_road_people_at_avar, :manifests_at, :twelve_marker_household, :avar
relate :rel_avar_road_people_at_ladderwell, :manifests_at, :twelve_marker_household, :ladderwell
