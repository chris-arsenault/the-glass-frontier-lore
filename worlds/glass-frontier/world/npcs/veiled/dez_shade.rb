npc :dez_shade do
  name "Dez Shade"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dez Shade replaces condenser meshes at South Shade and Coldside Bench before each thaw cycle."
end

relate :rel_dez_shade_at_south_shade, :operates_in, :dez_shade, :south_shade
relate :rel_dez_shade_at_coldside_bench, :operates_in, :dez_shade, :coldside_bench
