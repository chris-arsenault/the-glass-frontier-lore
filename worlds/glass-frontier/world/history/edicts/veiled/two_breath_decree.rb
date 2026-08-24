edict :two_breath_decree do
  name "The Two-Breath Decree"
  summary "The Two-Breath Decree shuts Vey workshops whenever Lung Three misses two pressure pulses."
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Two-Breath Decree stops Vey workshops whenever Lung Three misses two pressure pulses."
end

relate :rel_two_breath_decree_at_vey, :manifests_at, :two_breath_decree, :vey
relate :rel_two_breath_decree_at_lung_three, :manifests_at, :two_breath_decree, :lung_three
