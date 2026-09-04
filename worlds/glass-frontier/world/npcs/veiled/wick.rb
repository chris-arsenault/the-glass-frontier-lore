npc :wick do
  name "Wick"
  summary "Wick is a medical courier who runs medicine through Bloom cordons around Gray Line and Xyloathax."
  subkind :courier
  type_of :keeper_of_roads
  status :complete
  prominence :marginal
  veiled "Wick runs medicine through the Bloom cordons and marks each safe hatch with a thread of red wax."end

relate :rel_wick_at_gray_line, :operates_in, :wick, :gray_line
relate :rel_wick_at_latch, :operates_in, :wick, :latch
relate :rel_wick_at_cinder_gap, :operates_in, :wick, :cinder_gap
