species :nacre do
  name "Nacre"
  summary "Nacre are a sapient mineral-plated people who record route bearings as fine grooves in the plates they shed."
  subkind :sapient_species
  status :complete
  prominence :marginal
  veiled "Nacre are mineral-plated people who store route bearings as fine grooves in the plates they shed."
end

relate :rel_nacre_at_korvath, :inhabits, :nacre, :korvath
relate :rel_nacre_at_crucible, :inhabits, :nacre, :crucible
relate :rel_nacre_at_vastine, :inhabits, :nacre, :vastine
relate :rel_nacre_at_lithren, :inhabits, :nacre, :lithren
