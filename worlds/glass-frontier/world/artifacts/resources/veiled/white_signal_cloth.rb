resource :white_signal_cloth do
  name "White Signal Cloth"
  subkind :resource
  status :complete
  prominence :marginal
  veiled "White signal cloth carries one relay pulse as a visible crease that vanishes after reading."
end

relate :rel_white_signal_cloth_at_span_nine, :sourced_from, :white_signal_cloth, :span_nine
relate :rel_white_signal_cloth_at_whitefoot, :sourced_from, :white_signal_cloth, :whitefoot
