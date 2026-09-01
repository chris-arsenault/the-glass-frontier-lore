npc :ashenmaw_afterimage_watcher do
  name "The Ashenmaw Afterseer"
  summary "The Ashenmaw Afterseer retains the safe outline of moving debris for several breaths after it vanishes."
  type_of :fracture_afterimage
  subkind :specialist
  status :complete
  log "2026-08-31 — Renamed The Ashenmaw Afterimage Watcher to The Ashenmaw Afterseer to use the trade's practitioner form."
  prominence :marginal
  veiled "The Ashenmaw Afterseer retains the safe outline of moving debris for several breaths after it vanishes."
end

relate :rel_fracture_afterimage_at_the_fracture, :manifests_at, :ashenmaw_afterimage_watcher, :the_fracture
relate :rel_fracture_afterimage_at_ashenmaw, :manifests_at, :ashenmaw_afterimage_watcher, :ashenmaw
