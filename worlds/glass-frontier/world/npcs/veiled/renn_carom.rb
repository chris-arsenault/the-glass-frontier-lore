npc :renn_carom do
  name "Renn Carom"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Renn Carom services freight cradles at Thirty-One, Blue Step Works, Carom, and Cinder Gap."
end

relate :rel_renn_carom_at_bay_thirty_one, :operates_in, :renn_carom, :bay_thirty_one
relate :rel_renn_carom_at_blue_step_works, :operates_in, :renn_carom, :blue_step_works
relate :rel_renn_carom_at_carom, :operates_in, :renn_carom, :carom
relate :rel_renn_carom_at_cinder_gap, :operates_in, :renn_carom, :cinder_gap
