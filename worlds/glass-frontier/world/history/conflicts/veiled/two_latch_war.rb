conflict :two_latch_war do
  name "The Two-Latch War"
  subkind :war
  status :complete
  prominence :marginal
  veiled "Mareth and Third Latch still keep separate casualty walls from the boarding war that fixed their present docking line."
end

relate :rel_two_latch_war_at_mareth, :manifests_at, :two_latch_war, :mareth
relate :rel_two_latch_war_at_third_latch, :manifests_at, :two_latch_war, :third_latch
