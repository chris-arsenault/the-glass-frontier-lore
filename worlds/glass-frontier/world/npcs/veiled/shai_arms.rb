npc :shai_arms do
  name "Shai Arms"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Shai Arms services lifting gear at the Reed Door, Latchhouse, Thornvault, and Three Arms Yard."
end

relate :rel_shai_arms_at_the_reed_door, :operates_in, :shai_arms, :the_reed_door
relate :rel_shai_arms_at_third_latch, :operates_in, :shai_arms, :third_latch
relate :rel_shai_arms_at_thornvault, :operates_in, :shai_arms, :thornvault
relate :rel_shai_arms_at_three_arms_yard, :operates_in, :shai_arms, :three_arms_yard
