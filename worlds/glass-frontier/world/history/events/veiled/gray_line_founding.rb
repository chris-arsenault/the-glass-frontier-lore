incident :gray_line_founding do
  name "Gray Line Founding"
  subkind :founding
  status :complete
  prominence :marginal
  veiled "Gray Line began when three families joined their pressure shelters at the edge of the Bloom cordon."
end

relate :rel_gray_line_founding_at_gray_line, :manifests_at, :gray_line_founding, :gray_line
relate :rel_gray_line_founding_at_bloom_zones, :manifests_at, :gray_line_founding, :bloom_zones
