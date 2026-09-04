npc :choir_fragment_span_listener do
  name "The Choir Fragment Span Listener"
  summary "The Choir Fragment Span Listener hears load changes in old ring beams before the metal begins to walk."
  type_of :load_listening
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Choir Fragment Span Listener hears load changes in old ring beams before the metal begins to walk."
end
relate :rel_span_listening_at_span_nine, :manifests_at, :choir_fragment_span_listener, :span_nine
relate :rel_span_listening_at_the_choir_fragment, :manifests_at, :choir_fragment_span_listener, :the_choir_fragment
relate :rel_span_listening_at_threshold_station, :manifests_at, :choir_fragment_span_listener, :threshold_station
relate :rel_span_listening_at_issel, :manifests_at, :choir_fragment_span_listener, :issel
