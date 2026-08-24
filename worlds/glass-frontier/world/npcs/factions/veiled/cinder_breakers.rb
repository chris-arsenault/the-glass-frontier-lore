faction :cinder_breakers do
  name "Cinder Breakers"
  summary "The Cinder Breakers are a resistance network that opens unofficial paths through Pyre cordons for returning Latch families."
  subkind :resistance_network
  status :complete
  prominence :marginal
  veiled "Cinder Breakers cut unofficial paths through Pyre cordons for families returning to abandoned Latch rooms."
end

relate :rel_cinder_breakers_at_pyre, :operates_in, :cinder_breakers, :pyre
relate :rel_cinder_breakers_at_latch, :operates_in, :cinder_breakers, :latch
