transport :last_reed do
  name "Last Reed"
  summary "Last Reed is a wetland-stock vessel serving Dovra, Lowbank, and Ninth Kiln. Its flooded holds also carry emergency water."
  subkind :vessel
  type_of :channel_barge
  status :complete
  prominence :marginal
  veiled "Last Reed carries wetland stock from Dovra in flooded holds that double as emergency reservoirs."
end

relate :rel_last_reed_at_dovra, :operates_in, :last_reed, :dovra
relate :rel_last_reed_at_lowbank, :operates_in, :last_reed, :lowbank
relate :rel_last_reed_at_ninth_kiln, :operates_in, :last_reed, :ninth_kiln
