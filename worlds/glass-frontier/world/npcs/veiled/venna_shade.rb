npc :venna_shade do
  name "Venna Shade"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Venna Shade carries public works claims among Shadewell, Sithari, South Shade, and Span Nine."
end

relate :rel_venna_shade_at_shadewell, :operates_in, :venna_shade, :shadewell
relate :rel_venna_shade_at_sithari, :operates_in, :venna_shade, :sithari
relate :rel_venna_shade_at_south_shade, :operates_in, :venna_shade, :south_shade
relate :rel_venna_shade_at_span_nine, :operates_in, :venna_shade, :span_nine
