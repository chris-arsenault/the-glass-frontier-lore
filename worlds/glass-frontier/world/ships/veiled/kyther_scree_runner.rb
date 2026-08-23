transport :kyther_scree_runner do
  name "Kyther Scree Runner"
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Kyther scree runners cross resonance slopes on broad feet that shed one layer after every slide."
end

relate :rel_kyther_scree_runner_at_kyther_range, :operates_in, :kyther_scree_runner, :kyther_range
relate :rel_kyther_scree_runner_at_vigil_breach, :operates_in, :kyther_scree_runner, :vigil_breach
