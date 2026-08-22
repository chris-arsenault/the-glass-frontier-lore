npc :korr_choir do
  name "Korr Choir"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Korr Choir carries scored work orders among Span Nine, Talven, Tanel, and the Choir Fragment."
end

relate :rel_korr_choir_at_span_nine, :operates_in, :korr_choir, :span_nine
relate :rel_korr_choir_at_talven, :operates_in, :korr_choir, :talven
relate :rel_korr_choir_at_tanel, :operates_in, :korr_choir, :tanel
relate :rel_korr_choir_at_the_choir_fragment, :operates_in, :korr_choir, :the_choir_fragment
