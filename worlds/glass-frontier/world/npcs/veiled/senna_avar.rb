npc :senna_avar do
  name "Senna Avar"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Senna Avar carries Accord Shore rulings through Ashenmaw, Ashvane, and Avar for local countersignatures."
end

relate :rel_senna_avar_at_accord_shore, :operates_in, :senna_avar, :accord_shore
relate :rel_senna_avar_at_ashenmaw, :operates_in, :senna_avar, :ashenmaw
relate :rel_senna_avar_at_ashvane, :operates_in, :senna_avar, :ashvane
relate :rel_senna_avar_at_avar, :operates_in, :senna_avar, :avar
