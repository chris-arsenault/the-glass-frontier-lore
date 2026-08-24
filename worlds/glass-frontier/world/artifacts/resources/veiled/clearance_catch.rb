resource :clearance_catch do
  name "Clearance Catch"
  summary "A Clearance catch is a cargo-securing device sourced from Clearance Eight and Mareth. After a sharp change in spin, it locks a drifting frame to the nearest rail."
  subkind :device
  status :complete
  prominence :marginal
  veiled "A Clearance catch locks a drifting cargo frame to the nearest rail after one sharp change in spin."
end

relate :rel_clearance_catch_at_clearance_eight, :sourced_from, :clearance_catch, :clearance_eight
relate :rel_clearance_catch_at_mareth, :sourced_from, :clearance_catch, :mareth
