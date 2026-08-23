species :cordon_scavengers do
  name "Cordon Scavengers"
  subkind :overview
  status :complete
  prominence :marginal
  veiled "Cordon scavengers feed on heat-softened sealant and retreat when Bloom light reaches the red warning band."
end

relate :rel_cordon_scavengers_at_pyre, :inhabits, :cordon_scavengers, :pyre
relate :rel_cordon_scavengers_at_latch, :inhabits, :cordon_scavengers, :latch
