artifact :talven_red_index do
  name "Talven Red Index"
  subkind :record
  status :complete
  prominence :marginal
  veiled "The Talven Red Index pairs damaged glass samples with signals recorded before each fracture."
end

relate :rel_talven_red_index_at_talven, :operates_in, :talven_red_index, :talven
relate :rel_talven_red_index_at_tanel, :operates_in, :talven_red_index, :tanel
