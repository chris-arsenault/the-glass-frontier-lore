npc :takes_the_short_way do
  name "Takes-the-Short-Way"
  summary "Takes-the-Short-Way is a cutter captain who leads four independent crews through uncertified lanes beyond Far Bell."
  subkind :leader
  status :complete
  prominence :marginal
  veiled "Takes-the-Short-Way leads four independent cutters through debris lanes that Far Bell has stopped certifying."end

relate :rel_takes_the_short_way_at_far_bell, :operates_in, :takes_the_short_way, :far_bell
relate :rel_takes_the_short_way_at_outside, :operates_in, :takes_the_short_way, :outside
relate :rel_takes_the_short_way_at_the_fracture, :operates_in, :takes_the_short_way, :the_fracture
