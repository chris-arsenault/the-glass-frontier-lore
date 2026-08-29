faction :reed_exchange do
  name "The Reed Exchange"
  summary "The Reed Exchange is a trade network for kilnware, medicine, and living cuttings along Dovra's maintained channels."
  subkind :trade_network
  type_of :trade_network
  status :complete
  prominence :marginal
  veiled "The Reed Exchange trades kilnware, medicines, and living cuttings along Dovra's maintained channels."
end

relate :rel_reed_exchange_at_dovra, :operates_in, :reed_exchange, :dovra
relate :rel_reed_exchange_at_lowbank, :operates_in, :reed_exchange, :lowbank
relate :rel_reed_exchange_at_the_reed_door, :operates_in, :reed_exchange, :the_reed_door
relate :rel_reed_exchange_at_ninth_kiln, :operates_in, :reed_exchange, :ninth_kiln
