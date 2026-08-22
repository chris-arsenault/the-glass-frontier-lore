npc :tal_perch do
  name "Tal Perch"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tal Perch carries orchard grafts from Talven to Perch in a warmed hand case."
end

relate :rel_tal_perch_at_talven, :operates_in, :tal_perch, :talven
relate :rel_tal_perch_at_perch, :operates_in, :tal_perch, :perch
