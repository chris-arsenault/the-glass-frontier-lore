npc :t_verik do
  name "T'verik"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "T'verik tracks the shared vibration between Lung Three membranes and Lumenshard splinters."
end

relate :rel_t_verik_at_lung_three, :operates_in, :t_verik, :lung_three
relate :rel_t_verik_at_lumenshard, :operates_in, :t_verik, :lumenshard
