ability :current_holding do
  name "Current Holding"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Current holders keep a channel barge aligned by matching its vibration through a handrail."
end

relate :rel_current_holding_at_dovra, :manifests_at, :current_holding, :dovra
relate :rel_current_holding_at_lowbank, :manifests_at, :current_holding, :lowbank
relate :rel_current_holding_at_the_reed_door, :manifests_at, :current_holding, :the_reed_door
