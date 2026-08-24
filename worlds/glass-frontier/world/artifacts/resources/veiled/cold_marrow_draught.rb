resource :cold_marrow_draught do
  name "Cold-Marrow Draught"
  summary "Cold-marrow draught is a medicine made along the Lithren, Vastine, Pelhari, and Vitrael routes. It slows resonance fever long enough for a patient to cross the outer routes awake."
  subkind :medicine
  status :complete
  prominence :marginal
  veiled "Cold-marrow draught slows resonance fever long enough for a patient to cross the outer routes awake."
end

relate :rel_cold_marrow_draught_at_lithren, :sourced_from, :cold_marrow_draught, :lithren
relate :rel_cold_marrow_draught_at_vastine, :sourced_from, :cold_marrow_draught, :vastine
relate :rel_cold_marrow_draught_at_pelhari, :sourced_from, :cold_marrow_draught, :pelhari
relate :rel_cold_marrow_draught_at_vitrael, :sourced_from, :cold_marrow_draught, :vitrael
