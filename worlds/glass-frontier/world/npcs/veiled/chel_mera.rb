npc :chel_mera do
  name "Chel'mera"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'mera calibrates heat markers at Marker House Twelve, Mera, Miraeth, and Ninth Kiln."
end

relate :rel_chel_mera_at_marker_house_twelve, :operates_in, :chel_mera, :marker_house_twelve
relate :rel_chel_mera_at_mera, :operates_in, :chel_mera, :mera
relate :rel_chel_mera_at_miraeth, :operates_in, :chel_mera, :miraeth
relate :rel_chel_mera_at_ninth_kiln, :operates_in, :chel_mera, :ninth_kiln
