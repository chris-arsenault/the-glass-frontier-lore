phenomenon :pyre_afterheat do
  name "Pyre Afterheat"
  subkind :catastrophe
  status :complete
  prominence :marginal
  veiled "Pyre afterheat returns without flame and softens every exposed seal along the Cinder Gap line."
end

relate :rel_pyre_afterheat_at_pyre, :manifests_at, :pyre_afterheat, :pyre
relate :rel_pyre_afterheat_at_cinder_gap, :manifests_at, :pyre_afterheat, :cinder_gap
