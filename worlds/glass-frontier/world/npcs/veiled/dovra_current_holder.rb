npc :dovra_current_holder do
  name "The Dovra Current Holder"
  summary "The Dovra Current Holder keeps a channel barge aligned by matching its vibration through a handrail."
  type_of :current_holding
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Dovra Current Holder keeps a channel barge aligned by matching its vibration through a handrail."
end
relate :rel_current_holding_at_dovra, :manifests_at, :dovra_current_holder, :dovra
relate :rel_current_holding_at_lowbank, :manifests_at, :dovra_current_holder, :lowbank
relate :rel_current_holding_at_the_reed_door, :manifests_at, :dovra_current_holder, :the_reed_door
