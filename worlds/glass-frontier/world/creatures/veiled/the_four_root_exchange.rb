creature :the_four_root_exchange do
  name "The Four-Root Exchange"
  summary "The Four-Root Exchange is a named symbiotic graft network shared by Ravel, Rib, Olven, and Orra."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :root_deck_symbiotes
  veiled "The Four-Root Exchange carries the same heat, waste, and warning pulses through living grafts at Ravel, Rib, Olven, and Orra."
end

relate :rel_four_root_exchange_at_ravel, :inhabits, :the_four_root_exchange, :ravel
relate :rel_four_root_exchange_at_rib, :inhabits, :the_four_root_exchange, :rib
relate :rel_four_root_exchange_at_olven, :inhabits, :the_four_root_exchange, :olven
relate :rel_four_root_exchange_at_orra, :inhabits, :the_four_root_exchange, :orra
