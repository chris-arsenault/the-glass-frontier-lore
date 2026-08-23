concept :root_exchange do
  name "Root Exchange"
  subkind :social_system
  status :complete
  prominence :marginal
  veiled "Root Exchange households trade living grafts among Mera, Noll, Orra, and Olven without converting them into coin."
end

relate :rel_root_exchange_at_mera, :manifests_at, :root_exchange, :mera
relate :rel_root_exchange_at_noll, :manifests_at, :root_exchange, :noll
relate :rel_root_exchange_at_orra, :manifests_at, :root_exchange, :orra
relate :rel_root_exchange_at_olven, :manifests_at, :root_exchange, :olven
