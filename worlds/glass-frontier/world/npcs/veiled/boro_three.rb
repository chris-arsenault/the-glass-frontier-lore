npc :boro_three do
  name "Boro Three"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Boro Three services yard cranes at Three Arms Yard and the older cargo lifts in Noll."
end

relate :rel_boro_three_at_three_arms_yard, :operates_in, :boro_three, :three_arms_yard
relate :rel_boro_three_at_noll, :operates_in, :boro_three, :noll
