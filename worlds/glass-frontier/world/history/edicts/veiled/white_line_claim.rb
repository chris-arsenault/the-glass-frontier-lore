edict :white_line_claim do
  name "The White-Line Claim"
  summary "The White-Line Claim reserves a newly exposed ring conduit for the first four settlements that restore its signal."
  subkind :edict
  type_of :claims
  status :complete
  prominence :marginal
  veiled "The White-Line Claim reserves any newly exposed ring conduit for the first four settlements that restore its signal."
end

relate :rel_white_line_claim_at_whitefoot, :manifests_at, :white_line_claim, :whitefoot
relate :rel_white_line_claim_at_span_nine, :manifests_at, :white_line_claim, :span_nine
relate :rel_white_line_claim_at_threshold_station, :manifests_at, :white_line_claim, :threshold_station
relate :rel_white_line_claim_at_the_choir_fragment, :manifests_at, :white_line_claim, :the_choir_fragment
