rumor :fourth_crane do
  name "The Fourth Crane"
  summary "The Fourth Crane is a Three Arms Yard rumor about an unseen crane moving tools above an empty rail."
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Three Arms workers chalk a fourth crane into the yard plan after tools begin moving above an empty rail."
end

relate :rel_fourth_crane_at_three_arms_yard, :manifests_at, :fourth_crane, :three_arms_yard
