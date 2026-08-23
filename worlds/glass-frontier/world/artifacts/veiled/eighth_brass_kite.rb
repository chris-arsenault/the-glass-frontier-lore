artifact :eighth_brass_kite do
  name "The Eighth Brass Kite"
  subkind :artifact
  status :complete
  prominence :marginal
  veiled "The Eighth Brass Kite pulls against Clearance's traffic current and points toward stranded hulls."
end

relate :rel_eighth_brass_kite_at_clearance_eight, :operates_in, :eighth_brass_kite, :clearance_eight
relate :rel_eighth_brass_kite_at_brake, :operates_in, :eighth_brass_kite, :brake
