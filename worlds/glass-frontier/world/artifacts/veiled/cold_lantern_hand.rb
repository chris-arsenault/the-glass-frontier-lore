artifact :cold_lantern_hand do
  name "The Cold Lantern Hand"
  summary "The Cold Lantern Hand is a salvage tool used at Cold Lantern and Crowncut Refinery. Its grip closes around material whose internal motion has not truly stopped."
  subkind :artifact
  type_of :field_instrument
  status :complete
  prominence :marginal
  veiled "The Cold Lantern Hand closes around salvage whose internal motion has not truly stopped."
end

relate :rel_cold_lantern_hand_at_cold_lantern, :operates_in, :cold_lantern_hand, :cold_lantern
relate :rel_cold_lantern_hand_at_crowncut_refinery, :operates_in, :cold_lantern_hand, :crowncut_refinery
