phenomenon :root_sleep do
  name "Root Sleep"
  summary "Root Sleep is a whole-deck plant dormancy that ends when water from another habitat reaches the garden's oldest graft."
  subkind :ecological_phenomenon
  status :complete
  prominence :marginal
  veiled "Root sleep stills whole garden decks until water from another habitat touches the oldest graft."
end

relate :rel_root_sleep_at_orra, :manifests_at, :root_sleep, :orra
relate :rel_root_sleep_at_olven, :manifests_at, :root_sleep, :olven
relate :rel_root_sleep_at_noll, :manifests_at, :root_sleep, :noll
relate :rel_root_sleep_at_rib, :manifests_at, :root_sleep, :rib
