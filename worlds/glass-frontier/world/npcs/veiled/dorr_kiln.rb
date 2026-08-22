npc :dorr_kiln do
  name "Dorr Kiln"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dorr Kiln services ceramic heat banks in Mera, Miraeth, Ninth Kiln, and Noll."
end

relate :rel_dorr_kiln_at_mera, :operates_in, :dorr_kiln, :mera
relate :rel_dorr_kiln_at_miraeth, :operates_in, :dorr_kiln, :miraeth
relate :rel_dorr_kiln_at_ninth_kiln, :operates_in, :dorr_kiln, :ninth_kiln
relate :rel_dorr_kiln_at_noll, :operates_in, :dorr_kiln, :noll
