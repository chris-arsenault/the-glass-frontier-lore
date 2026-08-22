npc :chel_rist do
  name "Chel'rist"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Chel'rist repairs kiln sensors in Mera, Miraeth, Ninth Kiln, and Noll with matched gnomish tone forks."
end

relate :rel_chel_rist_at_mera, :operates_in, :chel_rist, :mera
relate :rel_chel_rist_at_miraeth, :operates_in, :chel_rist, :miraeth
relate :rel_chel_rist_at_ninth_kiln, :operates_in, :chel_rist, :ninth_kiln
relate :rel_chel_rist_at_noll, :operates_in, :chel_rist, :noll
