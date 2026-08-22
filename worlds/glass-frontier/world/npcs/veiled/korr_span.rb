npc :korr_span do
  name "Korr Span"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Korr Span calibrates docking lights at Threshold Station and Span Nine with the same battered lens board."
end

relate :rel_korr_span_at_threshold_station, :operates_in, :korr_span, :threshold_station
relate :rel_korr_span_at_span_nine, :operates_in, :korr_span, :span_nine
