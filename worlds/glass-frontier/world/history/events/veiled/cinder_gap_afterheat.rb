incident :cinder_gap_afterheat do
  name "Cinder Gap Afterheat"
  summary "Cinder Gap Afterheat is a recurring flameless heat surge that softens exposed seals along the Cinder Gap cordon."
  type_of :pyre_afterheat
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Cinder Gap Afterheat is a recurring flameless heat surge that softens exposed seals along the Cinder Gap cordon."
end
relate :rel_pyre_afterheat_at_pyre, :manifests_at, :cinder_gap_afterheat, :pyre
relate :rel_pyre_afterheat_at_cinder_gap, :manifests_at, :cinder_gap_afterheat, :cinder_gap
