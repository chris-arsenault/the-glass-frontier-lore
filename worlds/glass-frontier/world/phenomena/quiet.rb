phenomenon :quiet do
  name "The Quiet"
  summary "The Quiet is Latch's full withdrawal from public rooms when its cordon bells sound the town's remembered danger sequence."
  type_of :hush
  subkind :social_condition
  status :complete
  prominence :marginal
  veiled "The Quiet is Latch's full withdrawal from public rooms when its cordon bells sound the town's remembered danger sequence."
end

relate :rel_latch_quiet_at_latch, :manifests_at, :quiet, :latch
relate :rel_latch_quiet_at_gray_line, :manifests_at, :quiet, :gray_line
