creature :fold_spider do
  name "Fold Spider"
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "Fold spiders stitch two nearby corners together and retreat through the seam when disturbed."
end

relate :rel_fold_spider_in_folded_annex, :inhabits, :fold_spider, :folded_annex
relate :rel_fold_spider_in_underlayers, :inhabits, :fold_spider, :underlayers
