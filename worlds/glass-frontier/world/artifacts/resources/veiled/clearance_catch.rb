resource :clearance_catch do
  name "Clearance Catch"
  subkind :device
  status :complete
  prominence :marginal
  veiled "A Clearance catch locks a drifting cargo frame to the nearest rail after one sharp change in spin."
end

relate :rel_clearance_catch_at_clearance_eight, :sourced_from, :clearance_catch, :clearance_eight
relate :rel_clearance_catch_at_mareth, :sourced_from, :clearance_catch, :mareth
