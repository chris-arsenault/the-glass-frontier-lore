edict :blue_step_weight do
  name "The Blue-Step Weight"
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Blue-Step Weight limits each Avar road load to what two stranded crews can move by hand."
end

relate :rel_blue_step_weight_at_blue_step_works, :manifests_at, :blue_step_weight, :blue_step_works
relate :rel_blue_step_weight_at_avar, :manifests_at, :blue_step_weight, :avar
