transport :mud_bell do
  name "Mud Bell"
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Mud Bell is a Dovra ferry with a resonant hull that drives reedjaws away from its wake."
end

relate :rel_mud_bell_at_dovra, :operates_in, :mud_bell, :dovra
relate :rel_mud_bell_at_lowbank, :operates_in, :mud_bell, :lowbank
relate :rel_mud_bell_at_the_reed_door, :operates_in, :mud_bell, :the_reed_door
