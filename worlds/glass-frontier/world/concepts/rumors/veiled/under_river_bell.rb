rumor :under_river_bell do
  name "The Under-River Bell"
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Korvath ferrymen hear a submerged bell before the river exposes cargo from a lost crossing."
end

relate :rel_under_river_bell_at_korvath, :manifests_at, :under_river_bell, :korvath
