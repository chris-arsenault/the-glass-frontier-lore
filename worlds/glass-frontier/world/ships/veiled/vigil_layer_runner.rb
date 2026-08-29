transport :vigil_layer_runner do
  name "The Vigil Layer-Runner"
  summary "The Vigil Layer-Runner is a slope vehicle used in the Kyther Range and Vigil Breach. Its broad feet shed one layer after every slide across resonance-charged ground."
  subkind :transport
  type_of :kyther_scree_runner
  status :complete
  prominence :marginal
  veiled "The Vigil Layer-Runner crosses resonance slopes on broad feet that shed one layer after every slide."
end

relate :rel_kyther_scree_runner_at_kyther_range, :operates_in, :vigil_layer_runner, :kyther_range
relate :rel_kyther_scree_runner_at_vigil_breach, :operates_in, :vigil_layer_runner, :vigil_breach
