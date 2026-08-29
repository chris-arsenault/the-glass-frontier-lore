creature :mapped_shellbacks do
  name "The Mapped Shellbacks"
  summary "The Mapped Shellbacks are the populations whose grazing grounds, cast-shell yields, and structural loads appear on Ratter claim maps. Their movements can change which debris is safe to cut."
  subkind :anomaly
  type_of :shellback
  belongs_to :lifeform, :farborn
  status :complete
  tags :orbital, :resonance, :ecology, :salvage, :danger, :ringglass
  prominence :recognized

  prose <<~PROSE
    Ratter claim maps record known #{encyclopedia_ref :shellback, "shellback"} grazing grounds, the cast-shell yield collected from each, and debris the animals may be helping to hold together. A few dozen can move across one mass over years, smoothing unstable crystal growth and leaving plate behind.

    Their departure can reveal that the population had become part of what held the site together. Crews therefore mark the animals before cutting and update the map when a grazing ground shifts, thins, or begins answering survey pulses through every shell.
  PROSE

  gm_note :appears, "A claim map marks both the cast-shell yield and the debris the local population may be carrying, so moving animals change the work boundary."
  gm_note :triggered_by, "Taking plate from a living animal makes a mapped ground sparse and leaves its debris failing more often; repeated live cutting is recorded as damage to the claim."
  gm_note :complicates, "A population can make a site safer while it feeds and leave the same mass unsupported when it moves on."
end

relate :rel_mapped_shellbacks_inhabit_shear, :inhabits, :mapped_shellbacks, :the_shear do
  prose "The mapped grazing grounds lie on resonance-active debris throughout the Shear."
end
