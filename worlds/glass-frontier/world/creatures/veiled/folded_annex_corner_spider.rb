creature :folded_annex_corner_spider do
  name "The Folded Annex Corner-Spider"
  summary "The Folded Annex Corner-Spider is a spatial anomaly ranging between the Folded Annex and Underlayers. It stitches nearby corners together and retreats through the resulting seam when disturbed."
  subkind :anomaly
  type_of :fold_spider
  status :complete
  prominence :marginal
  veiled "The Folded Annex Corner-Spider stitches two nearby corners together and retreats through the seam when disturbed."
end

relate :rel_fold_spider_in_folded_annex, :inhabits, :folded_annex_corner_spider, :folded_annex
relate :rel_fold_spider_in_underlayers, :inhabits, :folded_annex_corner_spider, :underlayers
