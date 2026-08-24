species :breach_lichen do
  name "Breach Lichen"
  summary "Breach Lichen is a stone-growing organism that follows resonance strikes and turns black before the rock discharges again."
  subkind :species
  status :complete
  prominence :marginal
  veiled "Breach lichen grows in the wake of resonance strikes and turns black before the stone discharges again."
end

relate :rel_breach_lichen_at_vigil_breach, :inhabits, :breach_lichen, :vigil_breach
relate :rel_breach_lichen_at_sable_crescent, :inhabits, :breach_lichen, :sable_crescent
