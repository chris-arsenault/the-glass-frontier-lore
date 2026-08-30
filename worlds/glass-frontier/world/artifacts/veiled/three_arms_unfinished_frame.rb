artifact :three_arms_unfinished_frame do
  name "The Three Arms Unfinished Frame"
  summary "The Three Arms Unfinished Frame passes to the crew able to name every repair already made to it."
  type_of :yard_order
  subkind :machine
  status :complete
  prominence :marginal
  veiled "The Three Arms Unfinished Frame passes to the crew able to name every repair already made to it."
end

relate :rel_yard_inheritance_at_three_arms_yard, :manifests_at, :three_arms_unfinished_frame, :three_arms_yard
relate :rel_yard_inheritance_at_blue_step_works, :manifests_at, :three_arms_unfinished_frame, :blue_step_works
