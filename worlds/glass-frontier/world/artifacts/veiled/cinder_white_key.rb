artifact :cinder_white_key do
  name "Cinder White Key"
  summary "The Cinder White Key is a cordon-door relic associated with Cinder Gap and the Bloom Zones. It opens Bloom-era doors only while its bearer carries fresh ash."
  subkind :relic
  type_of :anomalous_relic
  status :complete
  prominence :marginal
  veiled "The Cinder White Key unlocks Bloom-era cordon doors only while its bearer is carrying fresh ash."
end

relate :rel_cinder_white_key_at_cinder_gap, :operates_in, :cinder_white_key, :cinder_gap
relate :rel_cinder_white_key_at_bloom_zones, :operates_in, :cinder_white_key, :bloom_zones
