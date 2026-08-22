npc :lira_seren do
  name "Lira Seren"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Lira Seren reviews water and shade allotments in Seren, Shadewell, Sithari, and South Shade."
end

relate :rel_lira_seren_at_seren, :operates_in, :lira_seren, :seren
relate :rel_lira_seren_at_shadewell, :operates_in, :lira_seren, :shadewell
relate :rel_lira_seren_at_sithari, :operates_in, :lira_seren, :sithari
relate :rel_lira_seren_at_south_shade, :operates_in, :lira_seren, :south_shade
