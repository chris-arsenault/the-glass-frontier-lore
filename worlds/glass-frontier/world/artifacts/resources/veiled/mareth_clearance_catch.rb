artifact :mareth_clearance_catch do
  name "The Mareth Clearance Catch"
  summary "The Mareth Clearance Catch is a cargo-securing device sourced from Clearance Eight and Mareth. After a sharp change in spin, it locks a drifting frame to the nearest rail."
  subkind :artifact
  type_of :clearance_catch
  status :complete
  prominence :marginal
  veiled "The Mareth Clearance Catch locks a drifting cargo frame to the nearest rail after one sharp change in spin."
end

relate :rel_clearance_catch_at_clearance_eight, :sourced_from, :mareth_clearance_catch, :clearance_eight
relate :rel_clearance_catch_at_mareth, :sourced_from, :mareth_clearance_catch, :mareth
