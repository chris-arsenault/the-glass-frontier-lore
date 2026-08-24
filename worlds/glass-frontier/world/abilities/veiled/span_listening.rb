ability :span_listening do
  name "Span Listening"
  summary "Span Listening is a learned structural skill for hearing changes in the load carried by old ring beams before they shift."
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Span listeners hear load changes in old ring beams before the metal begins to walk."
end

relate :rel_span_listening_at_span_nine, :manifests_at, :span_listening, :span_nine
relate :rel_span_listening_at_the_choir_fragment, :manifests_at, :span_listening, :the_choir_fragment
relate :rel_span_listening_at_threshold_station, :manifests_at, :span_listening, :threshold_station
relate :rel_span_listening_at_issel, :manifests_at, :span_listening, :issel
