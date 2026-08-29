npc :vesh_talar do
  name "Vesh Talar"
  summary "Vesh Talar is a Nacre route surveyor who carries bearings among Korvath, Crucible, Vastine, and Lithren."
  subkind :npc
  status :complete
  prominence :marginal
  type_of :nacre
  veiled "Vesh Talar carries shed route plates from Korvath, Crucible, Vastine, and Lithren, with the same fresh bearing cut into every plate."
end

relate :rel_vesh_talar_at_korvath, :inhabits, :vesh_talar, :korvath
relate :rel_vesh_talar_at_crucible, :inhabits, :vesh_talar, :crucible
relate :rel_vesh_talar_at_vastine, :inhabits, :vesh_talar, :vastine
relate :rel_vesh_talar_at_lithren, :inhabits, :vesh_talar, :lithren
