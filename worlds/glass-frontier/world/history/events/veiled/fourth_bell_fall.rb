incident :fourth_bell_fall do
  name "The Fourth Bell Fall"
  summary "The Fourth Bell Fall was a Keel vibration that destroyed the house's upper stair and trapped guests inside its bell chamber."
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Fourth Bell House lost its upper stair during a Keel vibration and sheltered the trapped guests inside its bell chamber."
end

relate :rel_fourth_bell_fall_at_fourth_bell_house, :manifests_at, :fourth_bell_fall, :fourth_bell_house
relate :rel_fourth_bell_fall_at_keelward, :manifests_at, :fourth_bell_fall, :keelward
