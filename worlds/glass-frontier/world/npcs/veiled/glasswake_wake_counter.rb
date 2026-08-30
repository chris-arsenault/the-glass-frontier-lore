npc :glasswake_wake_counter do
  name "The Glasswake Wake Counter"
  summary "The Glasswake Wake Counter identifies an approaching vessel from the rhythm it leaves in household water tanks."
  type_of :wake_counting
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Glasswake Wake Counter identifies an approaching vessel from the rhythm it leaves in household water tanks."
end
relate :rel_wake_counting_at_wash_four, :manifests_at, :glasswake_wake_counter, :wash_four
relate :rel_wake_counting_at_carom, :manifests_at, :glasswake_wake_counter, :carom
relate :rel_wake_counting_at_exchange_c, :manifests_at, :glasswake_wake_counter, :exchange_c
relate :rel_wake_counting_at_bay_thirty_one, :manifests_at, :glasswake_wake_counter, :bay_thirty_one
