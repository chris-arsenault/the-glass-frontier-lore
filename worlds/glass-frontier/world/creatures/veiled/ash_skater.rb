creature :ash_skater do
  name "Ash Skater"
  summary "Ash skaters are mineral-finned animals found across Crucible and Ashvane. They ride pressure fronts and shed cutting flakes when cornered."
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Ash skaters ride Crucible pressure fronts on mineral fins and shed cutting flakes when cornered."
end

relate :rel_ash_skater_in_crucible, :inhabits, :ash_skater, :crucible
relate :rel_ash_skater_in_ashvane, :inhabits, :ash_skater, :ashvane
