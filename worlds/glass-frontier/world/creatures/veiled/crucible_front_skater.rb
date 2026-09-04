creature :crucible_front_skater do
  name "The Crucible-Front Skater"
  summary "The Crucible-Front Skater is a mineral-finned animal ranging across Crucible and Ashvane. It rides pressure fronts and sheds cutting flakes when cornered."
  subkind :animal
  type_of :skirr
  status :complete
  prominence :marginal
  veiled "The Crucible-Front Skater rides Crucible pressure fronts on mineral fins and sheds cutting flakes when cornered."
end

relate :rel_ash_skater_in_crucible, :inhabits, :crucible_front_skater, :crucible
relate :rel_ash_skater_in_ashvane, :inhabits, :crucible_front_skater, :ashvane
