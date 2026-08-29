npc :brace_two do
  name "Brace Two"
  summary "Brace Two is a rail worker who replaces traffic rails at Clearance Eight and Clearance Ten."
  subkind :worker
  type_of :person
  status :complete
  prominence :marginal
  veiled "Brace Two replaces Clearance traffic rails while loaded kites continue passing an arm's length away."end

relate :rel_brace_two_at_clearance_eight, :operates_in, :brace_two, :clearance_eight
relate :rel_brace_two_at_brake, :operates_in, :brace_two, :brake
