npc :varn_pyre do
  name "Varn Pyre"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Varn Pyre carries kiln ash from Pyre to the glass patch crews in Cinder Gap."
end

relate :rel_varn_pyre_at_pyre, :operates_in, :varn_pyre, :pyre
relate :rel_varn_pyre_at_cinder_gap, :operates_in, :varn_pyre, :cinder_gap
