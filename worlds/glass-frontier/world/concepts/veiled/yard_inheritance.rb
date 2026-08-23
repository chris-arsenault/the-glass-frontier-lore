concept :yard_inheritance do
  name "Yard Inheritance"
  subkind :practice
  status :complete
  prominence :marginal
  veiled "Yard inheritance gives a dead rigger's unfinished frame to the crew that can name every repair already made."
end

relate :rel_yard_inheritance_at_three_arms_yard, :manifests_at, :yard_inheritance, :three_arms_yard
relate :rel_yard_inheritance_at_blue_step_works, :manifests_at, :yard_inheritance, :blue_step_works
