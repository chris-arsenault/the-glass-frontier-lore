faction :span_nine_signal_crew do
  name "The Span Nine Signal Crew"
  summary "The Span Nine Signal Crew is one signal-work crew whose members amend their working names with the last relay they repaired."
  type_of :work_crew
  belongs_to :culture, :span_names
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Span Nine Signal Crew is one signal-work crew whose members amend their working names with the last relay they repaired."
end
relate :rel_span_names_at_span_nine, :manifests_at, :span_nine_signal_crew, :span_nine
relate :rel_span_names_at_whitefoot, :manifests_at, :span_nine_signal_crew, :whitefoot
relate :rel_span_names_at_threshold_station, :manifests_at, :span_nine_signal_crew, :threshold_station
relate :rel_span_names_at_the_choir_fragment, :manifests_at, :span_nine_signal_crew, :the_choir_fragment
