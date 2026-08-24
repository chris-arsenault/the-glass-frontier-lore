ability :glass_taste do
  name "Glass Taste"
  summary "Glass Taste is an inherited Kyther sensitivity that distinguishes grades of ringglass by the metallic trace they leave on the breath."
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "A few Kyther families can distinguish ringglass grades by the metallic taste left on their breath."
end

relate :rel_glass_taste_at_kyther_range, :manifests_at, :glass_taste, :kyther_range
relate :rel_glass_taste_at_miraeth, :manifests_at, :glass_taste, :miraeth
