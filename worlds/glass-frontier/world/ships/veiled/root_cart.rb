transport :root_cart do
  name "Root Cart"
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Root carts carry living Mera mats in shallow beds whose wheels turn from stored plant heat."
end

relate :rel_root_cart_at_mera, :operates_in, :root_cart, :mera
relate :rel_root_cart_at_noll, :operates_in, :root_cart, :noll
relate :rel_root_cart_at_olven, :operates_in, :root_cart, :olven
relate :rel_root_cart_at_seren, :operates_in, :root_cart, :seren
