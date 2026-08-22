npc :thren_span do
  name "Thren Span"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Thren Span carries emergency berth tokens between Threshold Station and Crucible."
end

relate :rel_thren_span_at_threshold_station, :operates_in, :thren_span, :threshold_station
relate :rel_thren_span_at_crucible, :operates_in, :thren_span, :crucible
