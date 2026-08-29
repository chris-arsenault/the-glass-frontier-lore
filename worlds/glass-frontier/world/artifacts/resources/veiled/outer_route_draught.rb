artifact :outer_route_draught do
  name "The Outer-Route Draught"
  summary "The Outer-Route Draught is a batch of cold-marrow draught made along the Lithren, Vastine, Pelhari, and Vitrael routes. It slows resonance fever long enough for a patient to cross the outer routes awake."
  subkind :artifact
  type_of :cold_marrow_draught
  status :complete
  prominence :marginal
  veiled "The Outer-Route Draught slows resonance fever long enough for a patient to cross the outer routes awake."
end

relate :rel_cold_marrow_draught_at_lithren, :sourced_from, :outer_route_draught, :lithren
relate :rel_cold_marrow_draught_at_vastine, :sourced_from, :outer_route_draught, :vastine
relate :rel_cold_marrow_draught_at_pelhari, :sourced_from, :outer_route_draught, :pelhari
relate :rel_cold_marrow_draught_at_vitrael, :sourced_from, :outer_route_draught, :vitrael
