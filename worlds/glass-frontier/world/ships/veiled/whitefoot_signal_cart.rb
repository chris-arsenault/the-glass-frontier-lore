transport :whitefoot_signal_cart do
  name "Whitefoot Signal Cart"
  summary "Whitefoot signal carts are message vehicles used between Whitefoot, Old Campus, and Sithari. They carry pulses through dead relay ground in their wheel hubs."
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Whitefoot signal carts carry messages through dead relay ground as pulses in their wheel hubs."
end

relate :rel_whitefoot_signal_cart_at_whitefoot, :operates_in, :whitefoot_signal_cart, :whitefoot
relate :rel_whitefoot_signal_cart_at_old_campus, :operates_in, :whitefoot_signal_cart, :old_campus
relate :rel_whitefoot_signal_cart_at_sithari, :operates_in, :whitefoot_signal_cart, :sithari
