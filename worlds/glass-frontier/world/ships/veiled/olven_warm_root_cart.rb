transport :olven_warm_root_cart do
  name "The Olven Warm-Root Cart"
  summary "The Olven Warm-Root Cart is an agricultural vehicle used among Mera, Noll, Olven, and Seren. Its shallow bed carries living root mats, and stored plant heat turns its wheels."
  subkind :transport
  type_of :root_cart
  status :complete
  prominence :marginal
  veiled "The Olven Warm-Root Cart carries living mats in a shallow bed whose wheels turn from stored plant heat."
end

relate :rel_root_cart_at_mera, :operates_in, :olven_warm_root_cart, :mera
relate :rel_root_cart_at_noll, :operates_in, :olven_warm_root_cart, :noll
relate :rel_root_cart_at_olven, :operates_in, :olven_warm_root_cart, :olven
relate :rel_root_cart_at_seren, :operates_in, :olven_warm_root_cart, :seren
