npc :coren_mireth do
  name "Coren Mireth"
  summary "Coren Mireth leads the volunteer crews that keep Kyther Range meltwater moving when road crews withdraw."
  subkind :leader
  status :complete
  prominence :marginal
  veiled "Coren Mireth commands the volunteer line that keeps Kyther meltwater moving when the road crews withdraw."end

relate :rel_coren_mireth_at_kyther_range, :operates_in, :coren_mireth, :kyther_range
relate :rel_coren_mireth_at_marker_house_twelve, :operates_in, :coren_mireth, :marker_house_twelve
relate :rel_coren_mireth_at_ladderwell, :operates_in, :coren_mireth, :ladderwell
