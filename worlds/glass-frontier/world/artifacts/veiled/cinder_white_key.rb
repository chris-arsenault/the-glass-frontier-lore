artifact :cinder_white_key do
  name "Cinder White Key"
  subkind :relic
  status :complete
  prominence :marginal
  veiled "The Cinder White Key unlocks Bloom-era cordon doors only while its bearer is carrying fresh ash."
end

relate :rel_cinder_white_key_at_cinder_gap, :operates_in, :cinder_white_key, :cinder_gap
relate :rel_cinder_white_key_at_bloom_zones, :operates_in, :cinder_white_key, :bloom_zones
