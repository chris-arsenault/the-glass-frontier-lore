npc :noll_root_tracer do
  name "The Noll Root Tracer"
  summary "The Noll Root Tracer follows buried ring conduits by touching each wall where the stone stays warm."
  type_of :root_tracing
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Noll Root Tracer follows buried ring conduits by touching each wall where the stone stays warm."
end
relate :rel_root_tracing_at_underlayers, :manifests_at, :noll_root_tracer, :underlayers
relate :rel_root_tracing_at_folded_annex, :manifests_at, :noll_root_tracer, :folded_annex
relate :rel_root_tracing_at_old_campus, :manifests_at, :noll_root_tracer, :old_campus
