ability :heatwalking do
  name "Heatwalking"
  subkind :learned_ability
  status :complete
  prominence :marginal
  veiled "Heatwalkers cross Ashvane work yards by reading pressure shimmer through the soles of their boots."
end

relate :rel_heatwalking_at_ashvane, :manifests_at, :heatwalking, :ashvane
relate :rel_heatwalking_at_shadewell, :manifests_at, :heatwalking, :shadewell
relate :rel_heatwalking_at_coldside_bench, :manifests_at, :heatwalking, :coldside_bench
relate :rel_heatwalking_at_south_shade, :manifests_at, :heatwalking, :south_shade
