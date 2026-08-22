npc :ri_noll do
  name "Ri'noll"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'noll records kiln harmonics in Mera, Miraeth, Ninth Kiln, and Noll on matched ceramic discs."
end

relate :rel_ri_noll_at_mera, :operates_in, :ri_noll, :mera
relate :rel_ri_noll_at_miraeth, :operates_in, :ri_noll, :miraeth
relate :rel_ri_noll_at_ninth_kiln, :operates_in, :ri_noll, :ninth_kiln
relate :rel_ri_noll_at_noll, :operates_in, :ri_noll, :noll
