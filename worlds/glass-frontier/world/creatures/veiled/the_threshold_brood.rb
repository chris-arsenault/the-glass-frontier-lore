creature :the_threshold_brood do
  name "The Threshold Brood"
  summary "The Threshold Brood is a named displaced-fauna population tracked through Xyloathax, Eleven, Lung Three, and Third Latch."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :crossers
  veiled "The Threshold Brood nests across Xyloathax, Eleven, Lung Three, and Third Latch, reaching each through room shifts surveyors cannot repeat."
end

relate :rel_threshold_brood_at_xyloathax, :inhabits, :the_threshold_brood, :xyloathax
relate :rel_threshold_brood_at_eleven, :inhabits, :the_threshold_brood, :eleven
relate :rel_threshold_brood_at_lung_three, :inhabits, :the_threshold_brood, :lung_three
relate :rel_threshold_brood_at_third_latch, :inhabits, :the_threshold_brood, :latchhouse
