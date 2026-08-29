creature :carom_bone_kite do
  name "The Carom Bone-Kite"
  summary "The Carom Bone-Kite is a drifting creature ranging between the ring habitats around Carom, Wash Four, Clearance Eight, and Mareth. It cracks stored bones and feeds on the resonance held inside."
  subkind :creature
  type_of :marrow_kite
  status :complete
  prominence :marginal
  veiled "The Carom Bone-Kite drifts between ring habs and cracks stored bones to feed on the resonance trapped inside."
end

relate :rel_marrow_kite_in_carom, :inhabits, :carom_bone_kite, :carom
relate :rel_marrow_kite_in_wash_four, :inhabits, :carom_bone_kite, :wash_four
relate :rel_marrow_kite_in_clearance_eight, :inhabits, :carom_bone_kite, :clearance_eight
relate :rel_marrow_kite_in_mareth, :inhabits, :carom_bone_kite, :mareth
