artifact :eighth_brass_kite do
  name "The Eighth Brass Kite"
  summary "The Eighth Brass Kite is a locator object used between Clearance Eight and Brake. It pulls against the local traffic current to point toward stranded hulls."
  subkind :artifact
  type_of :field_instrument
  status :complete
  prominence :marginal
  veiled "The Eighth Brass Kite pulls against Clearance's traffic current and points toward stranded hulls."
end

relate :rel_eighth_brass_kite_at_clearance_eight, :operates_in, :eighth_brass_kite, :clearance_eight
relate :rel_eighth_brass_kite_at_brake, :operates_in, :eighth_brass_kite, :brake
