npc :t_velis do
  name "T'velis"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'velis cuts Lumenshard samples into matched prisms and tests their color response at Miraeth."
end

relate :rel_t_velis_at_lumenshard, :operates_in, :t_velis, :lumenshard
relate :rel_t_velis_at_miraeth, :operates_in, :t_velis, :miraeth
