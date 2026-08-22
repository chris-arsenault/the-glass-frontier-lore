npc :nera_sable do
  name "Nera Sable"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Nera Sable exchanges shade-grown cuttings among Sable Crescent, Seren, Shadewell, and South Shade."
end

relate :rel_nera_sable_at_sable_crescent, :operates_in, :nera_sable, :sable_crescent
relate :rel_nera_sable_at_seren, :operates_in, :nera_sable, :seren
relate :rel_nera_sable_at_shadewell, :operates_in, :nera_sable, :shadewell
relate :rel_nera_sable_at_south_shade, :operates_in, :nera_sable, :south_shade
