incident :orra_root_sleep do
  name "Orra Root Sleep"
  summary "Orra Root Sleep is a whole-deck plant dormancy that ends when water from another habitat reaches the garden's oldest graft."
  type_of :sleep
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Orra Root Sleep is a whole-deck plant dormancy that ends when water from another habitat reaches the garden's oldest graft."
end
relate :rel_root_sleep_at_orra, :manifests_at, :orra_root_sleep, :orra
relate :rel_root_sleep_at_olven, :manifests_at, :orra_root_sleep, :olven
relate :rel_root_sleep_at_noll, :manifests_at, :orra_root_sleep, :noll
relate :rel_root_sleep_at_rib, :manifests_at, :orra_root_sleep, :rib
