conflict :black_rung_patrol do
  name "The Black-Rung Patrol"
  summary "The Black-Rung Patrol is a recurring Kyther campaign to clear armed prospectors from shelters after resonance storms."
  subkind :campaign
  type_of :armed_conflict
  status :complete
  prominence :marginal
  veiled "The Black-Rung Patrol clears armed prospectors from Kyther shelters after each resonance storm."
end

relate :rel_black_rung_patrol_at_kyther_range, :manifests_at, :black_rung_patrol, :kyther_range
relate :rel_black_rung_patrol_at_vigil_breach, :manifests_at, :black_rung_patrol, :vigil_breach
