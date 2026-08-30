npc :kyther_glass_taster do
  name "The Kyther Glass Taster"
  summary "The Kyther Glass Taster distinguishes ringglass grades by the metallic taste left on their breath."
  type_of :glass_taste
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Kyther Glass Taster distinguishes ringglass grades by the metallic taste left on their breath."
end

relate :rel_glass_taste_at_kyther_range, :manifests_at, :kyther_glass_taster, :kyther_range
relate :rel_glass_taste_at_miraeth, :manifests_at, :kyther_glass_taster, :miraeth
