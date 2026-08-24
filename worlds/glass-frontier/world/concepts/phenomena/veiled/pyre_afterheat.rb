phenomenon :pyre_afterheat do
  name "Pyre Afterheat"
  summary "Pyre Afterheat is a recurring flameless heat surge that softens exposed seals along the Cinder Gap cordon."
  subkind :catastrophe
  status :complete
  prominence :marginal
  veiled "Pyre afterheat returns without flame and softens every exposed seal along the Cinder Gap line."
end

relate :rel_pyre_afterheat_at_pyre, :manifests_at, :pyre_afterheat, :pyre
relate :rel_pyre_afterheat_at_cinder_gap, :manifests_at, :pyre_afterheat, :cinder_gap
