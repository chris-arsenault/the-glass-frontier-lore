npc :darn_carom do
  name "Darn Carom"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Darn Carom services cargo locks at Carom, Cinder Gap, Clearance Eight, and Cold Lantern."
end

relate :rel_darn_carom_at_carom, :operates_in, :darn_carom, :carom
relate :rel_darn_carom_at_cinder_gap, :operates_in, :darn_carom, :cinder_gap
relate :rel_darn_carom_at_clearance_eight, :operates_in, :darn_carom, :clearance_eight
relate :rel_darn_carom_at_cold_lantern, :operates_in, :darn_carom, :cold_lantern
