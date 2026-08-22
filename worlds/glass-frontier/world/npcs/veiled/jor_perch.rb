npc :jor_perch do
  name "Jor Perch"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Jor Perch carries Talven orchard pollen to Perch in numbered glass vials."
end

relate :rel_jor_perch_at_talven, :operates_in, :jor_perch, :talven
relate :rel_jor_perch_at_perch, :operates_in, :jor_perch, :perch
