npc :venn_span do
  name "Venn Span"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Venn Span carries performance and work schedules through Span Nine, Talven, Tanel, and the Choir Fragment."
end

relate :rel_venn_span_at_span_nine, :operates_in, :venn_span, :span_nine
relate :rel_venn_span_at_talven, :operates_in, :venn_span, :talven
relate :rel_venn_span_at_tanel, :operates_in, :venn_span, :tanel
relate :rel_venn_span_at_the_choir_fragment, :operates_in, :venn_span, :the_choir_fragment
