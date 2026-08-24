transport :root_cart do
  name "Root Cart"
  summary "Root carts are agricultural vehicles used among Mera, Noll, Olven, and Seren. Their shallow beds carry living root mats, and stored plant heat turns their wheels."
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Root carts carry living Mera mats in shallow beds whose wheels turn from stored plant heat."
end

relate :rel_root_cart_at_mera, :operates_in, :root_cart, :mera
relate :rel_root_cart_at_noll, :operates_in, :root_cart, :noll
relate :rel_root_cart_at_olven, :operates_in, :root_cart, :olven
relate :rel_root_cart_at_seren, :operates_in, :root_cart, :seren
