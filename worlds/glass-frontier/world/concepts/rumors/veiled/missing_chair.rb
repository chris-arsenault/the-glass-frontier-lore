rumor :missing_chair do
  name "The Missing Chair"
  summary "The Missing Chair is a Verathi clerks' rumor about sealed documents appearing overnight on an extra chair set for difficult exchanges."
  type_of :local_rumor
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Verathi clerks set an extra chair at difficult exchanges because sealed documents have arrived on its seat overnight."
end

relate :rel_missing_chair_at_verathi, :manifests_at, :missing_chair, :verathi
