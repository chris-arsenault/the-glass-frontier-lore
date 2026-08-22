npc :senn_shade do
  name "Senn Shade"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Senn Shade cleans condenser cloth at South Shade and Shadewell before the cold cycle begins."
end

relate :rel_senn_shade_at_south_shade, :operates_in, :senn_shade, :south_shade
relate :rel_senn_shade_at_shadewell, :operates_in, :senn_shade, :shadewell
