creature :redband_nine do
  name "Redband Nine"
  summary "Redband Nine is a marked cordon-scavenger colony that crosses the Bloom boundary between Pyre and Latch."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :bloomgrazer
  veiled "Redband Nine crosses between Pyre and Latch whenever Bloom light reaches the red warning band."
end

relate :rel_redband_nine_at_pyre, :inhabits, :redband_nine, :pyre
relate :rel_redband_nine_at_latch, :inhabits, :redband_nine, :latch
