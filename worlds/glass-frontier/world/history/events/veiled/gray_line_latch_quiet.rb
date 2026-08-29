incident :gray_line_latch_quiet do
  name "Gray Line Latch Quiet"
  summary "Gray Line Latch Quiet is the collective withdrawal from Latch's public rooms when cordon bells repeat the pattern heard before Pyre's last surge."
  type_of :latch_quiet
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Gray Line Latch Quiet is the collective withdrawal from Latch's public rooms when cordon bells repeat the pattern heard before Pyre's last surge."
end
relate :rel_latch_quiet_at_latch, :manifests_at, :gray_line_latch_quiet, :latch
relate :rel_latch_quiet_at_gray_line, :manifests_at, :gray_line_latch_quiet, :gray_line
