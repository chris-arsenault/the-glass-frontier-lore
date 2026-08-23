edict :black_ice_writ do
  name "The Black-Ice Writ"
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Black-Ice Writ forbids melting Lithren archive slabs until a second reader has copied their visible text."
end

relate :rel_black_ice_writ_at_lithren, :manifests_at, :black_ice_writ, :lithren
relate :rel_black_ice_writ_at_pelhari, :manifests_at, :black_ice_writ, :pelhari
