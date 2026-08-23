artifact :cold_lantern_hand do
  name "The Cold Lantern Hand"
  subkind :artifact
  status :complete
  prominence :marginal
  veiled "The Cold Lantern Hand closes around salvage whose internal motion has not truly stopped."
end

relate :rel_cold_lantern_hand_at_cold_lantern, :operates_in, :cold_lantern_hand, :cold_lantern
relate :rel_cold_lantern_hand_at_crowncut_refinery, :operates_in, :cold_lantern_hand, :crowncut_refinery
