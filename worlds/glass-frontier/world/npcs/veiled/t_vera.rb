npc :t_vera do
  name "T'vera"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'vera tunes heat markers at Marker House Twelve, Mera, Miraeth, and Ninth Kiln."
end

relate :rel_t_vera_at_marker_house_twelve, :operates_in, :t_vera, :marker_house_twelve
relate :rel_t_vera_at_mera, :operates_in, :t_vera, :mera
relate :rel_t_vera_at_miraeth, :operates_in, :t_vera, :miraeth
relate :rel_t_vera_at_ninth_kiln, :operates_in, :t_vera, :ninth_kiln
