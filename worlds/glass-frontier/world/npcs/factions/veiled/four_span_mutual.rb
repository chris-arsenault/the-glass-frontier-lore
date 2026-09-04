faction :four_span_mutual do
  name "Four-Span Mutual"
  summary "Four-Span Mutual is a route-aid society that caches food, cable, and relay glass at four surviving stations."
  subkind :mutual_aid
  type_of :mutuals
  status :complete
  prominence :marginal
  veiled "Four-Span Mutual keeps food, cable, and spare relay glass cached at every surviving station on its route."
end

relate :rel_four_span_mutual_at_span_nine, :operates_in, :four_span_mutual, :span_nine
relate :rel_four_span_mutual_at_whitefoot, :operates_in, :four_span_mutual, :whitefoot
relate :rel_four_span_mutual_at_threshold_station, :operates_in, :four_span_mutual, :threshold_station
relate :rel_four_span_mutual_at_the_choir_fragment, :operates_in, :four_span_mutual, :the_choir_fragment
