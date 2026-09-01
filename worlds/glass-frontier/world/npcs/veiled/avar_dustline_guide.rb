npc :avar_dustline_guide do
  name "The Avar Dustliner"
  summary "The Avar Dustliner reads buried roads from the angle of grit caught against low stones."
  type_of :dustline_crossing
  subkind :specialist
  status :complete
  log "2026-08-31 — Renamed The Avar Dustline Guide to The Avar Dustliner to use the craft's practitioner form."
  prominence :marginal
  veiled "The Avar Dustliner reads buried roads from the angle of grit caught against low stones."
end
relate :rel_dustline_crossing_at_avar, :manifests_at, :avar_dustline_guide, :avar
relate :rel_dustline_crossing_at_ladderwell, :manifests_at, :avar_dustline_guide, :ladderwell
relate :rel_dustline_crossing_at_marker_house_twelve, :manifests_at, :avar_dustline_guide, :marker_house_twelve
relate :rel_dustline_crossing_at_kyther_range, :manifests_at, :avar_dustline_guide, :kyther_range
