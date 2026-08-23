ability :wake_counting do
  name "Wake Counting"
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Wake counters identify an approaching vessel from the rhythm it leaves in household water tanks."
end

relate :rel_wake_counting_at_wash_four, :manifests_at, :wake_counting, :wash_four
relate :rel_wake_counting_at_carom, :manifests_at, :wake_counting, :carom
relate :rel_wake_counting_at_exchange_c, :manifests_at, :wake_counting, :exchange_c
relate :rel_wake_counting_at_bay_thirty_one, :manifests_at, :wake_counting, :bay_thirty_one
