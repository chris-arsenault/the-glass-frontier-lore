npc :sable_step do
  name "Sable Step"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Sable Step repairs machine beds at Blue Step Works, Carom, Cinder Gap, and Clearance Eight."
end

relate :rel_sable_step_at_blue_step_works, :operates_in, :sable_step, :blue_step_works
relate :rel_sable_step_at_carom, :operates_in, :sable_step, :carom
relate :rel_sable_step_at_cinder_gap, :operates_in, :sable_step, :cinder_gap
relate :rel_sable_step_at_clearance_eight, :operates_in, :sable_step, :clearance_eight
