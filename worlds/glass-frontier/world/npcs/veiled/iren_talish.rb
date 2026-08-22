npc :iren_talish do
  name "Iren Talish"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Iren Talish carries structural samples from Ashenmaw and Lithren to assay benches in Mareth and Span Nine."
end

relate :rel_iren_talish_at_ashenmaw, :operates_in, :iren_talish, :ashenmaw
relate :rel_iren_talish_at_lithren, :operates_in, :iren_talish, :lithren
relate :rel_iren_talish_at_mareth, :operates_in, :iren_talish, :mareth
relate :rel_iren_talish_at_span_nine, :operates_in, :iren_talish, :span_nine
