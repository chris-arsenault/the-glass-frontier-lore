npc :venna_seren do
  name "Venna Seren"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Venna Seren reviews water allotments in Seren, Shadewell, Sithari, and South Shade."
end

relate :rel_venna_seren_at_seren, :operates_in, :venna_seren, :seren
relate :rel_venna_seren_at_shadewell, :operates_in, :venna_seren, :shadewell
relate :rel_venna_seren_at_sithari, :operates_in, :venna_seren, :sithari
relate :rel_venna_seren_at_south_shade, :operates_in, :venna_seren, :south_shade
