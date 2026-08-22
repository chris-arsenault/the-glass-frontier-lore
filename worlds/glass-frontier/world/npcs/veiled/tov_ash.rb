npc :tov_ash do
  name "Tov Ash"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tov Ash carries fresh heat and strain readings from Pyre, Span Nine, the Fracture, and Latchhouse."
end

relate :rel_tov_ash_at_pyre, :operates_in, :tov_ash, :pyre
relate :rel_tov_ash_at_span_nine, :operates_in, :tov_ash, :span_nine
relate :rel_tov_ash_at_the_fracture, :operates_in, :tov_ash, :the_fracture
relate :rel_tov_ash_at_third_latch, :operates_in, :tov_ash, :third_latch
