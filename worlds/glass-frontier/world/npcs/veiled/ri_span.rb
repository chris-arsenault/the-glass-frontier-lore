npc :ri_span do
  name "Ri'span"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'span records carried tones in Span Nine, Talven, Tanel, and the Choir Fragment."
end

relate :rel_ri_span_at_span_nine, :operates_in, :ri_span, :span_nine
relate :rel_ri_span_at_talven, :operates_in, :ri_span, :talven
relate :rel_ri_span_at_tanel, :operates_in, :ri_span, :tanel
relate :rel_ri_span_at_the_choir_fragment, :operates_in, :ri_span, :the_choir_fragment
