incident :three_arms_walkout do
  name "The Three Arms Walkout"
  subkind :campaign
  status :complete
  prominence :marginal
  veiled "Three Arms riggers carried their unfinished frames to Blue Step until both yards adopted the same injury pay."
end

relate :rel_three_arms_walkout_at_three_arms_yard, :manifests_at, :three_arms_walkout, :three_arms_yard
relate :rel_three_arms_walkout_at_blue_step_works, :manifests_at, :three_arms_walkout, :blue_step_works
