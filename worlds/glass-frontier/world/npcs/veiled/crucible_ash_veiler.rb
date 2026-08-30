npc :crucible_ash_veiler do
  name "The Crucible Ash Veiler"
  summary "The Crucible Ash Veiler shapes charged dust into a protective cloak that sheds Crucible heat without fouling a visor."
  type_of :ash_veiling
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Crucible Ash Veiler shapes charged dust into a protective cloak that sheds Crucible heat without fouling a visor."
end

relate :rel_ash_veiling_at_crucible, :manifests_at, :crucible_ash_veiler, :crucible
relate :rel_ash_veiling_at_ashvane, :manifests_at, :crucible_ash_veiler, :ashvane
