npc :dovran_holder do
  name "The Dovran Holder"
  summary "The Dovran Holder keeps a channel barge aligned by matching its vibration through a handrail."
  type_of :dovran_holding
  subkind :specialist
  status :complete
  log "2026-08-31 — Renamed The Dovra Current Holder to The Dovran Holder to use the Dovran river tradition's own form."
  prominence :marginal
  veiled "The Dovran Holder keeps a channel barge aligned by matching its vibration through a handrail."
end
relate :rel_current_holding_at_dovra, :manifests_at, :dovran_holder, :dovra
relate :rel_current_holding_at_lowbank, :manifests_at, :dovran_holder, :lowbank
relate :rel_current_holding_at_the_reed_door, :manifests_at, :dovran_holder, :the_reed_door
