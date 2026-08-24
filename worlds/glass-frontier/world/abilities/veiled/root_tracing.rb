ability :root_tracing do
  name "Root Tracing"
  summary "Root Tracing is a survey skill for following buried ring conduits through the warmth they leave in adjoining walls."
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Root tracers follow buried ring conduits by touching each wall where the stone stays warm."
end

relate :rel_root_tracing_at_underlayers, :manifests_at, :root_tracing, :underlayers
relate :rel_root_tracing_at_folded_annex, :manifests_at, :root_tracing, :folded_annex
relate :rel_root_tracing_at_old_campus, :manifests_at, :root_tracing, :old_campus
