npc :dren_lung do
  name "Dren Lung"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dren Lung replaces air-sack valves in Lung Three and brings the failed membranes to Vey."
end

relate :rel_dren_lung_at_lung_three, :operates_in, :dren_lung, :lung_three
relate :rel_dren_lung_at_vey, :operates_in, :dren_lung, :vey
