npc :sable_blue do
  name "Sable Blue"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Sable Blue repairs cargo scales at Thirty-One, Blue Step Works, Cinder Gap, and Clearance Eight."
end

relate :rel_sable_blue_at_bay_thirty_one, :operates_in, :sable_blue, :bay_thirty_one
relate :rel_sable_blue_at_blue_step_works, :operates_in, :sable_blue, :blue_step_works
relate :rel_sable_blue_at_cinder_gap, :operates_in, :sable_blue, :cinder_gap
relate :rel_sable_blue_at_clearance_eight, :operates_in, :sable_blue, :clearance_eight
