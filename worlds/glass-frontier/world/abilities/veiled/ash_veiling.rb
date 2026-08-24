ability :ash_veiling do
  name "Ash Veiling"
  summary "Ash Veiling is a Crucible heat-working technique that shapes charged dust into a protective cloak without fouling a visor."
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Ash veilers shape a cloak of charged dust that sheds Crucible heat without fouling a visor."
end

relate :rel_ash_veiling_at_crucible, :manifests_at, :ash_veiling, :crucible
relate :rel_ash_veiling_at_ashvane, :manifests_at, :ash_veiling, :ashvane
