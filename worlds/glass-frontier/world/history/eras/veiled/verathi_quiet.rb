era :verathi_quiet do
  name "The Verathi Quiet"
  summary "The Verathi Quiet was the interval when every Verathi exchange message arrived through Sable recordings instead of live speech."
  subkind :historical_period
  status :complete
  prominence :marginal
  veiled "The Verathi Quiet was the interval when every exchange message arrived through Sable recordings instead of live speech."
end

relate :rel_verathi_quiet_at_verathi, :manifests_at, :verathi_quiet, :verathi
relate :rel_verathi_quiet_at_sable_crescent, :manifests_at, :verathi_quiet, :sable_crescent
