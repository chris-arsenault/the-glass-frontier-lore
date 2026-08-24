edict :reed_quarantine do
  name "The Reed Quarantine"
  summary "The Reed Quarantine holds boats carrying red-root growth outside inhabited channels until every cutting remains silent."
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Reed Quarantine keeps boats carrying red-root growth outside inhabited channels until every cutting stays silent."
end

relate :rel_reed_quarantine_at_dovra, :manifests_at, :reed_quarantine, :dovra
relate :rel_reed_quarantine_at_lowbank, :manifests_at, :reed_quarantine, :lowbank
relate :rel_reed_quarantine_at_the_reed_door, :manifests_at, :reed_quarantine, :the_reed_door
relate :rel_reed_quarantine_at_ninth_kiln, :manifests_at, :reed_quarantine, :ninth_kiln
