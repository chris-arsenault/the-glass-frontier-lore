ability :ash_veiling do
  name "Ash Veiling"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Ash veilers shape a cloak of charged dust that sheds Crucible heat without fouling a visor."
end

relate :rel_ash_veiling_at_crucible, :manifests_at, :ash_veiling, :crucible
relate :rel_ash_veiling_at_ashvane, :manifests_at, :ash_veiling, :ashvane
