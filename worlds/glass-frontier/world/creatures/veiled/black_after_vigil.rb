creature :black_after_vigil do
  name "Black-After-Vigil"
  summary "Black-After-Vigil is a named resonance-lichen colony spread between Vigil Breach and the Sable Crescent."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :resonance_lichen
  veiled "Black-After-Vigil joins matching growths at Vigil Breach and Sable Crescent, and both turn black before either site discharges."
end

relate :rel_black_after_vigil_at_vigil_breach, :inhabits, :black_after_vigil, :vigil_breach
relate :rel_black_after_vigil_at_sable_crescent, :inhabits, :black_after_vigil, :sable_crescent
