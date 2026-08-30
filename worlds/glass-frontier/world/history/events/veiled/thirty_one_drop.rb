incident :thirty_one_drop do
  name "The Thirty-One Drop"
  summary "The Thirty-One Drop was a cargo-handling failure that sent a tuned rack through Wash Four's lower wall."
  subkind :operational_failure
  status :complete
  prominence :marginal
  veiled "Thirty-One dropped a tuned cargo rack through Wash Four's lower wall when two counterweights answered the same command."
end

relate :rel_thirty_one_drop_at_bay_thirty_one, :manifests_at, :thirty_one_drop, :bay_thirty_one
relate :rel_thirty_one_drop_at_wash_four, :manifests_at, :thirty_one_drop, :wash_four
