npc :noll_warmliner do
  name "The Noll Warmliner"
  summary "The Noll Warmliner follows buried ring conduits by touching each wall where the stone stays warm."
  type_of :warmlining
  subkind :specialist
  status :complete
  log "2026-08-31 — Renamed The Noll Root Tracer to The Noll Warmliner to use the recovery trade's practitioner form."
  prominence :marginal
  veiled "The Noll Warmliner follows buried ring conduits by touching each wall where the stone stays warm."
end
relate :rel_root_tracing_at_underlayers, :manifests_at, :noll_warmliner, :underlayers
relate :rel_root_tracing_at_folded_annex, :manifests_at, :noll_warmliner, :folded_annex
relate :rel_root_tracing_at_old_campus, :manifests_at, :noll_warmliner, :old_campus
