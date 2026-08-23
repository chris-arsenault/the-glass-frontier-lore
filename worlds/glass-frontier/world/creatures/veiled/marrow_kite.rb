creature :marrow_kite do
  name "Marrow Kite"
  subkind :creature
  status :complete
  prominence :marginal
  veiled "Marrow kites drift between ring habs and crack stored bones to feed on the resonance trapped inside."
end

relate :rel_marrow_kite_in_carom, :inhabits, :marrow_kite, :carom
relate :rel_marrow_kite_in_wash_four, :inhabits, :marrow_kite, :wash_four
relate :rel_marrow_kite_in_clearance_eight, :inhabits, :marrow_kite, :clearance_eight
relate :rel_marrow_kite_in_mareth, :inhabits, :marrow_kite, :mareth
