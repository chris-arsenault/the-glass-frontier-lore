npc :lira_shade do
  name "Lira Shade"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Lira Shade carries condenser reports from Shadewell and South Shade through Span Nine to Talven."
end

relate :rel_lira_shade_at_shadewell, :operates_in, :lira_shade, :shadewell
relate :rel_lira_shade_at_south_shade, :operates_in, :lira_shade, :south_shade
relate :rel_lira_shade_at_span_nine, :operates_in, :lira_shade, :span_nine
relate :rel_lira_shade_at_talven, :operates_in, :lira_shade, :talven
