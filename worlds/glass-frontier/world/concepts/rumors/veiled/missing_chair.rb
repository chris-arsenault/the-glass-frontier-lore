rumor :missing_chair do
  name "The Missing Chair"
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Verathi clerks set an extra chair at difficult exchanges because sealed documents have arrived on its seat overnight."
end

relate :rel_missing_chair_at_verathi, :manifests_at, :missing_chair, :verathi
