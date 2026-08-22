npc :marn_cinder do
  name "Marn Cinder"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Marn Cinder replaces heat baffles at Cinder Gap, Clearance Eight, Cold Lantern, and Coldside Bench."
end

relate :rel_marn_cinder_at_cinder_gap, :operates_in, :marn_cinder, :cinder_gap
relate :rel_marn_cinder_at_clearance_eight, :operates_in, :marn_cinder, :clearance_eight
relate :rel_marn_cinder_at_cold_lantern, :operates_in, :marn_cinder, :cold_lantern
relate :rel_marn_cinder_at_coldside_bench, :operates_in, :marn_cinder, :coldside_bench
