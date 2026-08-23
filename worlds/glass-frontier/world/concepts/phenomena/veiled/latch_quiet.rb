phenomenon :latch_quiet do
  name "Latch Quiet"
  subkind :social_condition
  status :complete
  prominence :marginal
  veiled "Latch Quiet empties public rooms whenever the cordon bells repeat the pattern heard before Pyre's last surge."
end

relate :rel_latch_quiet_at_latch, :manifests_at, :latch_quiet, :latch
relate :rel_latch_quiet_at_gray_line, :manifests_at, :latch_quiet, :gray_line
